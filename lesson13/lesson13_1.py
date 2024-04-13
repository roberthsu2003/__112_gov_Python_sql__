from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
    with conn.cursor() as cursor:
        sql='''
            SELECT 聯絡人id,客戶名稱,聯絡人姓名,電話,郵件
            FROM 聯絡人 LEFT JOIN 客戶 ON 聯絡人.客戶id = 客戶.客戶_id
        '''
        cursor.execute(sql)
        datas:list = cursor.fetchmany(10)
        

for item in datas:
    print(item)