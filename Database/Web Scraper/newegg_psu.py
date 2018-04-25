from bs4 import BeautifulSoup
import network_functions as net
import database_functions as data
import time
import random

model = None
component_type = 5
brand = None
series = None
component_name = None

dimensions = None
efficiency = None
watts = None
modular = None

link_list = []
model_list = []

psu_link = net.simple_get('https://www.newegg.com/Product/ProductList.aspx?Submit=StoreIM&Depa=1&Category=32')
soup = BeautifulSoup(psu_link, 'html.parser')

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

                    elif e == 'Dimensions':
                        dimensions = d
                    elif e == 'Efficiency':
                        efficiency = d
                    elif e == 'Energy-Efficient' and efficiency is None:
                        efficiency = d
                    elif e == 'Maximum Power':
                        watts = d
                    elif e == 'Modular':
                        modular = d
                    count += 1

    if model not in model_list:
        model_list.append(model)
        data.insert_specs_psu(model, component_type, brand, series, component_name,
                              dimensions, efficiency, watts, modular)
    else:
        print('Duplicate model found. Skipping.')
    time.sleep(random.random() * 3 + 3)
