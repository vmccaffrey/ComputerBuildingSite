from requests import get
from requests.exceptions import RequestException
from contextlib import closing
from bs4 import BeautifulSoup
from pathlib import Path
import os, errno


def simple_get(url):
    """
    Attempts to get the content at `url` by making an HTTP GET request.
    If the content-type of response is some kind of HTML/XML, return the
    text content, otherwise return None
    """
    try:
        with closing(get(url, stream=True)) as resp:
            if is_good_response(resp):
                return resp.content
            else:
                return None

    except RequestException as e:
        log_error('Error during requests to {0} : {1}'.format(url, str(e)))
        return None


def is_good_response(resp):
    """
    Returns true if the response seems to be HTML, false otherwise
    """
    content_type = resp.headers['Content-Type'].lower()
    return (resp.status_code == 200
            and content_type is not None
            and content_type.find('html') > -1)


def log_error(e):
    """
    It is always a good idea to log errors.
    This function just prints them, but you can
    make it do anything.
    """
    print(e)

directory_intel = 'CPU_Intel\\'
directory_intel_families = directory_intel + 'Families\\'
directory_intel_families_cpu = directory_intel_families + 'CPU'
directory_AMD = 'CPU_AMD\\'

try:
    os.makedirs(directory_intel_families_cpu)
except OSError as e:
    if e.errno != errno.EEXIST:
        raise
		
try:
    os.makedirs(directory_AMD)
except OSError as e:
    if e.errno != errno.EEXIST:
        raise

hyperlink_list = []
hyperlink_list_all_cpu = []

intel_html = simple_get('https://ark.intel.com/')
intel_cpu = BeautifulSoup(intel_html, 'html.parser')

for div in intel_cpu.find_all('div', class_="products processors"):
    for link in div.find_all('a'):
        hyperlink_list.append('https://ark.intel.com' + link.get('href'))

# for link in hyperlink_list:
#     print(link)


file_series = Path('CPU_Intel\cpu_families_list.txt')

file = open(file_series, 'w')
for link in hyperlink_list:
    file.write(link + '\n')
file.close()

for link in hyperlink_list:
    temp_link = BeautifulSoup(simple_get(link), 'html.parser')
    split_array = link.split('/')
    print(split_array[-1])
    for row in temp_link.find_all('tbody'):
        cpu_hyperlinks = []
        for entry in row.find_all('a'):
            cpu_hyperlinks.append('https://ark.intel.com' + entry.get('href'))
            hyperlink_list_all_cpu.append('https://ark.intel.com' + entry.get('href'))
            # print(entry.get('href'))
        temp_file = Path('CPU_Intel\Families\\' + split_array[-1] + '.txt')
        file = open(temp_file, 'w')
        for cpu_link in cpu_hyperlinks:
            file.write(cpu_link + '\n')
        file.close()

# for link in hyperlink_list_all_cpu:
#