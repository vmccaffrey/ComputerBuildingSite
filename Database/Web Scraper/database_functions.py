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


def select(text):
    try:
        data = connect()

        cur = data.cursor()
        cur.execute("""select * from %s""" % text)

        for row in cur.fetchall():
            print(row[0], '\t', row[1])

        data.close()
    except MySQLdb.DatabaseError:
        print('Error connecting to database')


def insert(text):
    try:
        data = connect()

        cur = data.cursor()
        cur.execute("""insert into test (accessName) values (%s)""", (text,))

        data.commit()
        data.close()
    except MySQLdb.DatabaseError:
        print('Error connecting to database')


# insert('test 1')
# insert('test 2')
# insert('test 3')
# insert('test 4')

select('test')

