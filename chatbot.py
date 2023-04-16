import random
help = ("What is your name? ","What is your birthday? ","Help ")
while True:
    c=input("Hello. Let's have a chat. If you need to see the list of commands, please type 'Help' ")
    if c==("Help").lower:
        print(help[0,2])
    elif c==("What is your name?"):
        print("I don't have a name, but you can just call me chatbot for now. ")
    elif c==("What is your birthday?"):
        print("I was created on 4/16/2023 by 'RS' ")
else:
    print("I do not understand")

    
    