from bs4 import BeautifulSoup
import network_functions as net
import directory_functions as dirf

proxy_list = net.get_proxies()
for i in proxy_list:
    print(i)

print(dirf.get_project_root())

# cpu_link = simple_get('http://www.cpu-world.com/CPUs/CPU.html')
# cpu_link = simple_get('http://www.cpu-world.com/CPUs/Celeron_D/index.html')
# cpu_link = simple_get('http://www.cpu-world.com/CPUs/Celeron_D/TYPE-Celeron%20D%20(Prescott).html')
# cpu_soup = BeautifulSoup(cpu_link, 'html.parser')
file_root = open('Local HTML\\root.html', 'r')
file_family_list = open('Local HTML\\family_list.html', 'r')
file_cpu_list = open('Local HTML\\cpu_list.html', 'r')
file_cpu = open('Local HTML\\cpu.html', 'r')
cpu_soup = BeautifulSoup(file_root, 'html.parser')

# Find list of cpu families manufactured in or after 2003
for table in cpu_soup.find_all('div', class_='p_div'):
    if table.find('tr').find('th').contents[0] == 'AMD':
        print(table.find('tr').find('th').contents[0])
        for row in table.find_all('tr')[2:]:
            year = ''.join(c for c in row.find_all('td')[1].contents[0] if c.isdigit())
            if len(year) < 4:
                year += '3'
            if int(year) >= 2003:
                print(row.find('a').get('href') + '\n' + year)
        print()

    if table.find('tr').find('th').contents[0] == 'Intel':
        print(table.find('tr').find('th').contents[0])
        for row in table.find_all('tr')[2:]:
            year = ''.join(c for c in row.find_all('td')[1].contents[0] if c.isdigit())
            if len(year) < 4:
                year += '3'
            if int(year) >= 2003:
                print(row.find('a').get('href') + '\n' + year)

cpu_soup = BeautifulSoup(file_family_list, 'html.parser')

print()

# Get links to processors in each family
for family in cpu_soup.find_all('div', class_='cpu_name'):
    print('Link: ' + family.find('a').get('href'))
    print('Family: ' + family.find('a').contents[0])

cpu_soup = BeautifulSoup(file_cpu_list, 'html.parser')

print()

# Follow links to each processor
for family in cpu_soup.find_all('div', class_='cpu_name'):
    print('Link: ' + family.find('a').get('href'))
    print('CPU: ' + family.find('a').contents[0])

cpu_soup = BeautifulSoup(file_cpu, 'html.parser')

print()

# Pull data from each processor




