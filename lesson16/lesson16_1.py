import streamlit as st

st.title("Sessin_state基礎")
st.write(st.session_state)
##使用 input widget
number:int = st.slider("數值",min_value=1,max_value=10,value=5,key='mySlider')
st.write("加入slider後的session_state",st.session_state)

col1, buff, col2= st.columns([1, 0.5, 3])

with col1:
    option_names = ["a", "b", "c"]
    option = st.radio("請選擇1個",option_names,key="radio_option")
    st.write("加入radio後的session_state",st.session_state)

with col2:
    if option == 'a':
        st.write("您選擇的是'a' :smile:")
    elif option == 'b':
        st.write("您選擇的是'b' :heart:")
    elif option == 'c':
        st.write("您選擇的是'c' :rocket:")