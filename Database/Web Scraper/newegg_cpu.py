from bs4 import BeautifulSoup
import network_functions as net
import database_functions as data
import time
import random

model = None
component_type = 1
brand = None
series = None
component_name = None

socket = None
core_name = None
core_count = None
thread_count = None
speed = None
tdp = None

link_list = []
model_list = []

cpu_link = net.simple_get('https://www.newegg.com/Product/ProductList.aspx?Submit=StoreIM&Depa=1&Category=34')
soup = BeautifulSoup(cpu_link, 'html.parser')

for table in soup.find_all('div', class_='list-wrap'):
    for item in table.find_all('div', class_='item-container'):
        link_list.append(item.find('a').get('href'))

for link in link_list:
    soup = BeautifulSoup(net.simple_get(link), 'html.parser')

    for table in soup.find_all('div', id='Specs'):
        fieldset = table.find_all('fieldset')

        for row in fieldset[0].find_all('dl'):
            dt = row.find_all('dt')
            dd = row.find_all('dd')

            count = 0
            for element in dt:
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
                count += 1

        for row in fieldset[1].find_all('dl'):
            dt = row.find_all('dt')
            dd = row.find_all('dd')
            count = 0
            for element in dt:
                if element.find('a'):
                    e = element.contents[0].find(text=True, recursive=False)
                else:
                    e = element.contents[0]
                d = dd[count].contents[0]

                if e == 'CPU Socket Type':
                    socket = d
                elif e == 'Core Name':
                    core_name = d
                elif e == '# of Cores':
                    core_count = d
                elif e == '# of Threads':
                    thread_count = d
                elif e == 'Operating Frequency':
                    speed = d
                elif e == 'Thermal Design Power':
                    tdp = d

    if model not in model_list:
        model_list.append(model)
        data.insert_specs_cpu(model, component_type, brand, series, component_name,
                              socket, core_name, core_count, thread_count, speed, tdp)
    else:
        print('Duplicate model found. Skipping.')
    time.sleep(random.random() * 10 + 5)
