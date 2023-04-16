      *
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. simplemath.
       AUTHOR. Raynaldo Santiago.
       DATE-WRITTEN. March 15th 2023
       ENVIRONMENT DIVISION. 

       DATA DIVISION. 
       FILE SECTION. 
       WORKING-STORAGE SECTION. 
         01 UserName   PIC X(30) VALUE "You".
         01 Num1       PIC S9(9)V99 VALUE ZEROS.
         01 Num2       PIC S9(9)V99 VALUE ZEROS.
         01 Num3       PIC S9(9)V99 VALUE ZEROS.
         01 Num4       PIC S9(9)V99 VALUE ZEROS.
         01 Num5       PIC  9(1)    VALUE "2".
         01 Total      PIC S9(9)V99 VALUE 0.
         01 Total2     PIC S9(9)V99 VALUE ZERO.
         01 Total3     PIC S9(9)V99 VALUE 0.
         01 Operator   PIC X(8).

       PROCEDURE DIVISION.
           DISPLAY "What is your name? " WITH NO ADVANCING 
           ACCEPT UserName
           DISPLAY "Hello " UserName 

           MOVE ZERO TO UserName
           DISPLAY "Enter 2 values to sum "
           ACCEPT Num1
           ACCEPT Num2 
           COMPUTE Total = Num1 + Num2 
           DISPLAY Num1 " + " Num2 " = " Total
           Move Total TO Num3
           DISPLAY "Enter 1 value to subtract from total "
           ACCEPT Num4
           COMPUTE Total2 = Num3 - Num4 
           DISPLAY Num3 " - " Num4 " = " Total2
           IF Total2 IS < 0
           THEN DISPLAY "Your number is negative!" 
           ELSE DISPLAY "Your number is positive!"
           DISPLAY "Add, Subtract, Divide, or Multiply by 2?"
           
           ACCEPT Operator
           STRING Operator DELIMITED BY SIZE INTO Operator
           EVALUATE Operator
              When "+"
                Compute Total3 = Total2 + Num5
              When  "Add"
                 Compute Total3= Total2 + Num5
              When  "add"
                 Compute Total3= Total2 + Num5
              When  "ADD"
                 Compute Total3= Total2 + Num5
              When "-"
                 Compute Total3= Total2 - Num5 
              When "Subtract"
                 Compute Total3= Total2 - Num5
              When "subtract"
                 Compute Total3= Total2 - Num5 
              When "SUBTRACT"
                 Compute Total3= Total2 - Num5  
              When "/" 
                 DIVIDE Total2 BY Num5 Giving Total3
              When "Divide"
                 DIVIDE Total2 BY Num5 Giving Total3
              When "divide"
                 DIVIDE Total2 BY Num5 Giving Total3
              When "DIVIDE"
                 DIVIDE Total2 BY Num5 Giving Total3
              When "*" 
                 Compute Total3= Total2 * Num5 
              When "Multiply" 
                 Compute Total3= Total2 * Num5 
               When "multiply" 
                 Compute Total3= Total2 * Num5
              When "MULTIPLY" 
                 Compute Total3= Total2 * Num5
              When OTHER 
                 DISPLAY "Invalid operator"


           
           END-EVALUATE 
           DISPLAY Total3
                 
           

           Stop Run.
