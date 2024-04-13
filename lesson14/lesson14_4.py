import streamlit as st
from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

def get_contacts() -> list:
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT 聯絡人id,客戶名稱,聯絡人姓名,電話,郵件
                FROM 聯絡人 LEFT JOIN 客戶 ON 聯絡人.客戶id = 客戶.客戶_id
            '''
            cursor.execute(sql)
            datas:list = cursor.fetchmany(10)
            contacts = []
            for item in datas:
                contacts.append({'id':item[0],'客戶名稱':item[1],'姓名':item[2],'電話':item[3],'郵件':item[4]})
            return contacts
        

source_data = get_contacts()

st.dataframe(source_data,width=1200)
