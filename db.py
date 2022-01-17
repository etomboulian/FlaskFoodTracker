import sqlite3
from flask import g

db_path = 'C:\\Users\\etomb\\Projects\\python\\Flask\\4-FoodTracker\\food_log.db'

def connect_db():
    sql = sqlite3.connect(db_path)
    sql.row_factory = sqlite3.Row
    return sql

def get_db():
    if not hasattr(g, 'sqlite3_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db

