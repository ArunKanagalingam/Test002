import streamlit as st

# Title of the app
st.title("Simple Addition App")

# Input fields for two numbers
num1 = st.number_input("Enter first number", value=0)
num2 = st.number_input("Enter second number", value=0)

# Calculate the sum
sum_result = num1 + num2

# Display the result
st.write(f"The sum of {num1} and {num2} is {sum_result}")

