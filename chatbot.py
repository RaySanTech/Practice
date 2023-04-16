import random
import time
current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)


help = ("What is your name? ","What is your birthday? ","What time is it?","Help")
while True:
    c=input("Hello. Let's have a chat. If you need to see the list of commands, please type 'Help' ")
    if c==("help"):
        print(help)
    elif c==("What is your name?"):
        print("I don't have a name, but you can just call me chatbot for now. ")
    elif c==("What is your birthday?"):
        print("I was created on 4/16/2023 by 'RS' ")
    elif c==("What time is it?"):
        print("The current time is:", formatted_time)
    else:
        print("I do not understand")
   
    