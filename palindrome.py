# This determines if a word in the program is spelled the same if you reverse all the letters. 4/14/2023 RS

def isPalindrome(word):
    return word == word[::-1]

word = "level"

Yes = isPalindrome(word)

if Yes:
    print("Yes, that is a palindrome! ")
else:
    print("No, that is not a palindrome. ")
