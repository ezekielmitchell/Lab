# Description: This is the main file for the crash course
import asyncio

try:
    x = int(input("x: "))
except ValueError:
    print("Invalid input, please enter a number")
    x = int(input("x: "))


print("You've enetered: ", x)

if x > 0 and x < 10:
    print("x is a positive single digit number.")
else:
    print("x is not a positive single digit number.")

def main():
    print("Hello, World!")

if __name__ == "__main__":
    main()

