from bs4 import BeautifulSoup
import network_functions as net
import database_functions as data
import time
import random

model = None
component_type = 3
brand = None
series = None
component_name = None

cooler_type = None
fan_rpm = None
noise_level = '?'

link_list = []
model_list = []

cooler_link = net.simple_get('https://www.newegg.com/Product/ProductList.aspx?Submit=StoreIM&Depa=1&Category=11')
soup = BeautifulSoup(cooler_link, 'html.parser')

for table in soup.find_all('div', class_='list-wrap'):
    for item in table.find_all('div', class_='item-container'):
        link_list.append(item.find('a').get('href'))

for link in link_list:
    soup = BeautifulSoup(net.simple_get(link), 'html.parser')

    for table in soup.find_all('div', id='Specs'):
        for fieldset in table.find_all('fieldset'):
            for row in fieldset.find_all('dl'):
                dt = row.find_all('dt')
                dd = row.find_all('dd')

                count = 0
                for element in dt:
                    if element.find('a'):
                        e = element.contents[0].find(text=True, recursive=False)
                    else:
                        e = element.contents[0]
                    d = dd[count].contents[0]

                    if e == 'Brand':
                        brand = d
                    elif e == 'Series':
                        series = d
                    elif e == 'Name':
                        component_name = d
                    elif e == 'Model':
                        model = d

                    elif e == 'Type':
                        cooler_type = d
                    elif e == 'Fan RPM':
                        fan_rpm = d
                    elif e == 'Fan Noise':
                        fan_noise = d
                    count += 1

    if model not in model_list:
        model_list.append(model)
        data.insert_specs_cooler(model, component_type, brand, series, component_name,
                                 cooler_type, fan_rpm, noise_level)
    else:
        print('Duplicate model found. Skipping.')
    time.sleep(random.random() * 3 + 5)
