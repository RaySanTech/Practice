# 4/15/2023 RS Converting my old COBOL code into Python.
name = input("What is your name? ")
print("Hello",name)
num1 =input("Enter two values to sum ")
num2 = input()
num3 = int(num1)+int(num2)
print("The sum of ",num1,"and ",num2,"is ",num3)
num4 = input("Enter one value to subtract from your current total ")
num5 = int(num3)-int(num4)
print(num3, "minus", num4, "equals",num5)
if num5 < 0:
    print("Your number is negative! ")
else: 
    print("Your number is positive! ")
num6 = 2
def operator(operator):
    operator == operator.lower()
operator = input("Add, subtract, divide, or multiply by 2? ")
eval
if operator==("+","add","sum").lower:
    
    (num7)= int(num5)+int(num6)
    print((num5),("+"),(num6),("equals"),(num7))

elif operator==("-","minus","subtract","subtraction").lower:
    
    (num7)= int(num5)-int(num6)
    print((num5),("-"),(num6),("equals"),(num7))

elif operator==("*","multiply","times","multiplication").lower:
    
    (num7)= int(num5)*int(num6)
    print((num5),("*"),(num6),("equals"),(num7))

elif operator("/","divide","division").lower:
    
    (num7)= int(num5)/int(num6)
    print((num5),("/"),(num6),("equals"),(num7))
    
else:
    print("Invalid Operator")



