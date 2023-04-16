# Here is where I set all the words and letters to be used for the program.

the_letter= "t"
the_word= "dragon"
other_word= "cat"

# The program will go through and seek out the identified letter within the two words and display if the letter is or is not contained within.

if the_letter in the_word:
    print("The letter " + the_letter + " was found in " + the_word + "!")
else:
    print("The letter " + the_letter + " is not in " + the_word + ".")
if the_letter in other_word:
    print("The letter " + the_letter + " was found in " + other_word + "!")
else:
    print("The letter " + the_letter + " is not in " + other_word + ".")

# The program will then display the time, for no reason other than me wanting to wanting to know what time it is in case I have VS Code
# in full screen mode and do not wish to minimize or resize the screen.

import time

current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)

print("The current time is:", formatted_time)


