# This program determines if a word that is entered is still the same word if you reverse the order of all the letters. 4/14/2023 RS

word = input("Enter a word. I will check if it is a palindrome. ") # Requests a user input that is then assigned to 'word' for future coding.

def isPalindrome(word): # Defines the isPalindrome function against the word input.
 
 word = word.lower() # This makes it so the user generated input ignores capitalization. AAAAA, AaAaAaA, aaaaa, and aaaaAAA should all be palindromes.

 return word == word[::-1] #This line of code creates a reverse order of the user input to then compare to the original input.

    
Yes = isPalindrome(word) # If the word input is a palindrome(reverse copy of the original word), then it is assigned as true. Otherwise, it returns false.

if Yes:
    print("Yes, that is a palindrome! ") # The user should only see this response if the word they input at request is indeed a palindrome, like level.
else:
    print("No, that is not a palindrome. ") # This response on the other hand will show up if the word is not a palindrome. Like cat, which would
                                            # become tac if reversed.

