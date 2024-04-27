import psycopg2
import os
import streamlit as st
from dotenv import load_dotenv
load_dotenv()

@st.cache_resource
def get_sarea()->tuple:
    conn = psycopg2.connect(os.environ['POSTGRE_PASSWORD1'])
    with conn:
        with conn.cursor() as cursor:
            #取出最新日期各站點資料
            sql = '''
                SELECT 行政區
                FROM 站點資訊
                GROUP BY 行政區
            '''
            cursor.execute(sql)
            allArea:tuple = cursor.fetchall()
            return allArea
    
    conn.close()

col1, col2 = st.columns([1, 2])
data = [tuple1[0] for tuple1 in get_sarea()]
#print(data)

st.radio('選擇行政區:',data,key='sarea',horizontal=True)

