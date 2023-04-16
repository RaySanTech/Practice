       >> Source Format Free
       IDENTIFICATION DIVISION.
       Program-ID. Shop_Inventory.
       
       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL. 
           Select Inventory-File Assign To "inventory.dat".
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION. 
       FILE SECTION. 
       FD Inventory-File
       01 Inventory-Record.
           05 ITEM-NO     PIC X(10).
           05 Description PIC X(50).
           05 Quantity    PIC 9(5).
           05 Price       PIC 9(5)v99.
       WORKING-STORAGE SECTION. 
       01 Choice          PIC X.
       01 ITEM-NO-SEARCH  PIC X(10).
       01 QUANTITY-CHANGE PIC 9(5).
       01 PRICE-CHANGE    PIC 9(5)V99.

       PROCEDURE DIVISION.
       MAIN-LOOP.
           DISPLAY "1. List inventory".
           DISPLAY "2. Add new item".
           DISPLAY "3. Search for item".
           DISPLAY "4. Change quantity".
           DISPLAY "5. Change price".
           DISPLAY "6. Exit".
           DISPLAY "Eneter your choice:".
           ACCEPT CHOICE.

           IF CHOICE = "1" THEN
              OPEN INPUT Inventory-File 
              READ Inventory-File 
              AT END DISPLAY "No inventory items."
              END-READ
              PERFORM UNTIL EXIT 
                 DISPLAY ITEM-NO, DESCRIPTION, QUANTITY, PRICE-CHANGE 
                 READ Inventory-File 
                 AT END DISPLAY "No inventory items."
                 END-READ
                END-PERFORM
                CLOSE Inventory-File 
               END-IF.
               
           IF CHOICE = "2" THEN
                 DISPLAY "Enter item number:".
                 ACCEPT ITEM-NO. 
                 DISPLAY "Enter description:".
                 ACCEPT Description.
                 DISPLAY "Enter quantity:".
                 ACCEPT QUANTITY.
                 DISPLAY "Enter price:".
                 ACCEPT PRICE.
                 OPEN OUTPUT Inventory-File.
                 WRITE IVENTORY-RECORD.
                 CLOSE INVENTORY-FILE.
                END-IF. 

           IF CHOICE = "3" THEN
                 DISPLAY "Enter item number to search for:".
                 ACCEPT ITEM-NO-SEARCH.
                 OPEN INPUT INVENTORY-FILE.
                 READ INVENTORY-FILE.
                 AT END DISPLAY "Item name".
                 END-IF.
                 STOP RUN.
                 EXIT.




