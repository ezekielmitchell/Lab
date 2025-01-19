
import asyncio
import data_structures
import main
import datetime
import classes

def basic_function():
    print('This is a basic function')

def function_with_args(arg1, arg2):
    print(f'arg1: {arg1}, arg2: {arg2}')

basic_function()
basic_function()
# main.main()

date = datetime.datetime.now()
print(date.date())

BMW = classes.Car('BMW', 'X5', '2023')

print(BMW.make)
print(BMW.model)
print(BMW.year)

print(type(BMW))