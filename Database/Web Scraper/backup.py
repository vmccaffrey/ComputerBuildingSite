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