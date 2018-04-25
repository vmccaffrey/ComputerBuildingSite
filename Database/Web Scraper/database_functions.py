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
                     dimensions, efficiency, watts, modular):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_psu (model, dimensions, efficiency, watts, modular) 
                    values (%s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, dimensions, efficiency, watts, modular))

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
                      bay_hdd, bay_ssd, expansion_slots, dimensions, mobo_compatibility):
    try:
        data = connect()

        component = get_component_query()
        query = """insert into specs_case (model, bayHDD, baySSD, expansionSlots, dimensions, moboCompatibility) 
                    values (%s, %s, %s, %s, %s, %s)"""

        cur = data.cursor()

        cur.execute(component, (model, component_type, brand, series, component_name))
        cur.execute(query, (model, bay_hdd, bay_ssd, expansion_slots, dimensions, mobo_compatibility))

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


def reset_tables():
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
