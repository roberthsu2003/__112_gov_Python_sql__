import streamlit as st

st.title("計數器的範例")
count = 0
increment = st.button("增加計數器的值")
if increment:
    count += 1

st.write("計數器:",count)