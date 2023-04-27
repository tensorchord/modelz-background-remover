import pathlib

import pydicom

import streamlit as st


st.title("Hello World!")

st.write(pathlib.Path.home())

st.write(pydicom)
