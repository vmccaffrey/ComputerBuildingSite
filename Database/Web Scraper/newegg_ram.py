from bs4 import BeautifulSoup
import network_functions as net
import database_functions as data
import time
import random

model = None
component_type = 6
brand = None
series = None
component_name = None

ram_type = None
speed = None
capacity = None
cas_latency = None
ecc = 'No'

link_list = []
model_list = []

ram_link = net.simple_get('https://www.newegg.com/Product/ProductList.aspx?Submit=StoreIM&Depa=1&Category=17')
soup = BeautifulSoup(ram_link, 'html.parser')

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
                        ram_type = d
                    elif e == 'Speed':
                        speed = d
                    elif e == 'Capacity':
                        capacity = d
                    elif e == 'Timing':
                        cas_latency = d
                    elif e == 'ECC':
                        ecc = d
                    count += 1

    if model not in model_list:
        model_list.append(model)
        data.insert_specs_ram(model, component_type, brand, series, component_name,
                              ram_type, speed, capacity, cas_latency, ecc)
    else:
        print('Duplicate model found. Skipping.')
    time.sleep(random.random() * 10 + 5)
