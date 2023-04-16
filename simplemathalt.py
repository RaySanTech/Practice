# 4/15/2023 RS Converting my old COBOL code into Python.
name = input("What is your name? ")
print("Hello", name)

num1 = input("Enter the first value to sum: ")
num2 = input("Enter the second value to sum: ")
num3 = int(num1) + int(num2)
print("The sum of", num1, "and", num2, "is", num3)

num4 = input("Enter a value to subtract from the sum: ")
num5 = num3 - int(num4)
print(num3, "minus", num4, "equals", num5)

if num5 < 0:
    print("Your number is negative!")
else:
    print("Your number is positive!")

operator = input("Would you like to add (+), subtract (-), multiply (*), or divide (/) by 2? Please use symbols. ")
if operator == '+':
    num7 = num5 + 2
    print(num5, "+", 2, "=", num7)
elif operator == '-':
    num7 = num5 - 2
    print(num5, "-", 2, "=", num7)
elif operator == '*':
    num7 = num5 * 2
    print(num5, "*", 2, "=", num7)
elif operator == '/':
    num7 = num5 / 2
    print(num5, "/", 2, "=", num7)
else:
    print("Invalid operator")
