import MySQLdb


def connect():
    try:
        db = MySQLdb.connect(host='localhost',
                             port=3300,
                             user='root',
                             passwd='admin',
                             db='webdev')
        return db
    except MySQLdb.DatabaseError:
        raise


# def select(text):
#     try:
#         data = connect()
#
#         cur = data.cursor()
#         cur.execute("""select * from %s""" % text)
#
#         for row in cur.fetchall():
#             print(row[0], '\t', row[1])
#
#         data.close()
#     except MySQLdb.DatabaseError as e:
#         print(e)


def get_component_query():
    query = """insert into component (model, componentType, brand, series, componentName)
                values (%s, %s, %s, %s, %s)"""
    return query


def insert_specs_cpu(model, component_type, brand, series, component_name,
                     cpu_socket, core_name, core_count, thread_count, speed, tdp):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_cpu (model, cpuSocket, coreName, coreCount, threadCount, speed, TDP) 
                    values (%s, %s, %s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, cpu_socket, core_name, core_count, thread_count, speed, tdp))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_motherboard(model, component_type, brand, series, component_name,
                             cpu_socket, form_factor, ram_slots, max_ram):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_motherboard (model, cpuSocket, formFactor, ramSlots, maxRAM) 
                    values (%s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, cpu_socket, form_factor, ram_slots, max_ram))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_cooler(model, component_type, brand, series, component_name,
                        cooler_type, fan_rpm, noise_level):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_cooler (model, coolerType, fanRPM, noiseLevel) 
                    values (%s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, cooler_type, fan_rpm, noise_level))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_storage(model, component_type, brand, series, component_name,
                         form_factor, storage_type, capacity, storage_cache):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_storage (model, formFactor, storageType, capacity, storageCache) 
                    values (%s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, form_factor, storage_type, capacity, storage_cache))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_psu(model, component_type, brand, series, component_name,
                     form_factor, efficiency, watts, modular):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_psu (model, formFactor, efficiency, watts, modular) 
                    values (%s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, form_factor, efficiency, watts, modular))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_ram(model, component_type, brand, series, component_name,
                     ram_type, speed, capacity, cas_latency, ecc):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_ram (model, ramType, speed, capacity, casLatency, ecc) 
                    values (%s, %s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, ram_type, speed, capacity, cas_latency, ecc))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_gpu(model, component_type, brand, series, component_name,
                     gpu_memory, gpu_speed):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_gpu (model, gpuMemory, gpuSpeed) 
                    values (%s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, gpu_memory, gpu_speed))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def insert_specs_case(model, component_type, brand, series, component_name,
                      bay_hdd, bay_ssd, expansion_slots, height, width, depth):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_case (model, bayHDD, baySSD, expansionSlots, height, width, depth) 
                    values (%s, %s, %s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, bay_hdd, bay_ssd, expansion_slots, height, width, depth))

        data.commit()
        data.close()

        print('Added: ', component_name)
        print('Disconnecting')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


def restart_tables():
    try:
        data = connect()

        cpu = """truncate table specs_cpu"""
        mobo = """truncate table specs_motherboard"""
        cooler = """truncate table specs_cooler"""
        storage = """truncate table specs_storage"""
        psu = """truncate table specs_psu"""
        ram = """truncate table specs_ram"""
        gpu = """truncate table specs_gpu"""
        case = """truncate table specs_case"""
        component = """truncate table component"""

        cur = data.cursor()

        cur.execute(cpu)
        cur.execute(mobo)
        cur.execute(cooler)
        cur.execute(storage)
        cur.execute(psu)
        cur.execute(ram)
        cur.execute(gpu)
        cur.execute(case)
        cur.execute(component)

        data.commit()
        data.close()
        print('Reset tables')
    except MySQLdb.IntegrityError as e:
        print(e)
    except MySQLdb.ProgrammingError as e:
        print(e)
    except MySQLdb.OperationalError as e:
        print(e)
    except MySQLdb.DatabaseError as e:
        print(e)


# def test_insert(thing0, thing1, thing2, thing3, link0, link1, link2, link3):
#     try:
#         data = connect()
#
#         thing = """insert into test (thing0, thing1, thing2, thing3)
#                     values (%s, %s, %s, %s)"""
#         link = """insert into test_linked (linkID, link0, link1, link2, link3)
#                    values (%s, %s, %s, %s, %s)"""
#
#         cur = data.cursor()
#         cur.execute(thing, (thing0, thing1, thing2, thing3,))
#
#         cur.execute("""select MAX(id) from test""")
#
#         value = cur.fetchone()[0]
#         print(value)
#         cur.execute(link, (value, link0, link1, link2, link3,))
#
#         data.commit()
#         data.close()
#     except MySQLdb.IntegrityError as e:
#         print(e)
#     except MySQLdb.ProgrammingError as e:
#         print(e)
#     except MySQLdb.OperationalError as e:
#         print(e)
#     except MySQLdb.DatabaseError as e:
#         print(e)
#
#
# def restart_test():
#     try:
#         data = connect()
#
#         linked = """truncate table test_linked"""
#         test = """truncate table test"""
#
#         cur = data.cursor()
#
#         cur.execute(linked)
#         cur.execute(test)
#
#         data.commit()
#         data.close()
#         print('Reset test')
#     except MySQLdb.IntegrityError as e:
#         print(e)
#     except MySQLdb.ProgrammingError as e:
#         print(e)
#     except MySQLdb.OperationalError as e:
#         print(e)
#     except MySQLdb.DatabaseError as e:
#         print(e)


# insert_specs_cpu('BX80677I57600K', 1, 'Intel', 'Core i5 7th Gen', 'Core i5-7600K',
#                  'LGA 1151', 'Kaby Lake', 4, 4, '3.8GHz', '91W')
# insert_specs_case('case 1', 2, 'case brand', 'case series', 'case mk1',
#                   2, 2, 3, '8in', '8in', '8in')
# insert_specs_cooler('cooler 1', 3, 'cooler brand', 'cooler series', 'coolermaster',
#                     'hsf', 9000, 50)
# insert_specs_gpu('gpu 1', 4, 'gpu brand', 'gpu series', 'gpu maker',
#                  '8gb', '9000MHz')
# insert_specs_motherboard('mobo 1', 5, 'mobo maker', 'mobo series', 'mobo name',
#                          'lga1155', 'atx', 4, '128gb')
# insert_specs_psu('psu 1', 6, 'psu person', 'psu series', 'psu name',
#                  'atx', '90% gold', '1000W', 'mod')
# insert_specs_ram('ram 1', 7, 'best ram', 'ram series', 'ram name',
#                  'ddr9000', '9000Mhz', '32gbx4', 30, False)
# insert_specs_storage('storage 1', 8, 'storage brand', 'storage series', 'storage name',
#                      '2.5mm', 'ssd', '9000GB', 'None')

# restart_tables()
# test_insert('t0', 't1', 't2', 't3', 'l0', 'l1', 'l2', 'l3')
# restart_test()
# select('test')
