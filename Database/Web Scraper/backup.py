# from bs4 import BeautifulSoup
# import network_functions as net
# import directory_functions as dirf
# import time

# cpu_link = net.simple_get('https://www.newegg.com/Product/ProductList.aspx?Submit=StoreIM&Depa=1&Category=34')
# soup = BeautifulSoup(cpu_link, 'html.parser')
#
# soup.prettify()
# proxy_list = net.get_proxies()
# for i in proxy_list:
#     print(i)


# print(dirf.get_project_root())

# # Find list of cpu families manufactured in or after 2003
# for table in cpu_soup.find_all('div', class_='p_div'):
#     if table.find('tr').find('th').contents[0] == 'AMD':
#         print(table.find('tr').find('th').contents[0])
#         for row in table.find_all('tr')[2:]:
#             year = ''.join(c for c in row.find_all('td')[1].contents[0] if c.isdigit())
#             if len(year) < 4:
#                 year += '3'
#             if int(year) >= 2003:
#                 print(row.find('a').get('href') + '\n' + year)
#         print()
#
#     if table.find('tr').find('th').contents[0] == 'Intel':
#         print(table.find('tr').find('th').contents[0])
#         for row in table.find_all('tr')[2:]:
#             year = ''.join(c for c in row.find_all('td')[1].contents[0] if c.isdigit())
#             if len(year) < 4:
#                 year += '3'
#             if int(year) >= 2003:
#                 print(row.find('a').get('href') + '\n' + year)
#
# cpu_soup = BeautifulSoup(file_family_list, 'html.parser')
#
# print()
#
# # Get links to processors in each family
# for family in cpu_soup.find_all('div', class_='cpu_name'):
#     print('Link: ' + family.find('a').get('href'))
#     print('Family: ' + family.find('a').contents[0])
#
# cpu_soup = BeautifulSoup(file_cpu_list, 'html.parser')
#
# print()
#
# # Follow links to each processor
# for family in cpu_soup.find_all('div', class_='cpu_name'):
#     print('Link: ' + family.find('a').get('href'))
#     print('CPU: ' + family.find('a').contents[0])
#
# cpu_soup = BeautifulSoup(file_cpu, 'html.parser')
#
# print()
#
# # Pull data from each processor






# hyperlink_list = []
# hyperlink_list_all_cpu = []
#
# intel_html = simple_get('https://ark.intel.com/')
# intel_cpu = BeautifulSoup(intel_html, 'html.parser')
#
# AMD_html = simple_get('AMD')
# AMD_cpu = BeautifulSoup(AMD_html, 'html.parser')

# amd_hyperlinks = []
# intel_hyperlinks = []

# for div in intel_cpu.find_all('div', class_="products processors"):
#     for link in div.find_all('a'):
#         hyperlink_list.append('https://ark.intel.com' + link.get('href'))
#
# for link in hyperlink_list:
#     print(link)
#
#
# file_series = os.path.join(directory_intel, 'cpu_families_list.txt')
#
# file = open(file_series, 'w')
# for link in hyperlink_list:
#     file.write(link + '\n')
# file.close()
#
# for link in hyperlink_list:
#     temp_link = BeautifulSoup(simple_get(link), 'html.parser')
#     split_array = link.split('/')
#     print(split_array[-1])
#     for row in temp_link.find_all('tbody'):
#         cpu_hyperlinks = []
#         for entry in row.find_all('a'):
#             cpu_hyperlinks.append('https://ark.intel.com' + entry.get('href'))
#             hyperlink_list_all_cpu.append('https://ark.intel.com' + entry.get('href'))
#         temp_file = Path(os.path.join(directory_intel_families, split_array[-1] + '.txt'))
#         file = open(temp_file, 'w')
#         for cpu_link in cpu_hyperlinks:
#             file.write(cpu_link + '\n')
#         file.close()


# intel_link = simple_get('https://ark.intel.com/products/130409/Intel-Core-i7-8809G-Processor'
#                         '-with-Radeon-RX-Vega-M-GH-graphics-8M-Cache-up-to-4_20-GHz')
# soup = BeautifulSoup(intel_link, 'html.parser')
#
# # Model
# for thing in soup.find_all('div', id="tab-blade-1-4"):
#     other_thing = thing.find('ul', class_="specs-list").find('li').find_next_sibling().find('span', class_="value").contents
#     if other_thing is None:
#         print('Oh shit')
#     else:
#         print(other_thing)
# # Type
# # Brand
# # Series
# for thing in soup.find_all('li', class_="ParentGroup"):
#     print(thing.find('span', class_="value").find('a').contents)
# # Name
# for thing in soup.find_all('li', class_="ProcessorNumber"):
#     print(thing.find('span', class_="value").find('span').contents)
# # Socket
# for thing in soup.find_all('li', class_="SocketsSupported"):
#     print(thing.find('span', class_="value").find('span').contents)
# # Core Name
# for thing in soup.find_all('li', class_="CodeNameText"):
#     print(str(thing.find('span', class_="value").find('a').contents).replace('Products formerly ', ''))
# # Core Count
# for thing in soup.find_all('li', class_="CoreCount"):
#     print(thing.find('span', class_="value").find('span').contents)
# # Thread Count
# for thing in soup.find_all('li', class_="ThreadCount"):
#     print(thing.find('span', class_="value").find('span').contents)
# # Speed
# for thing in soup.find_all('li', class_="ClockSpeed"):
#     print(thing.find('span', class_="value").find('span').contents)
# # TDP
# for thing in soup.find_all('li', class_="MaxTDP"):
#     print(thing.find('span', class_="value").find('span').contents)