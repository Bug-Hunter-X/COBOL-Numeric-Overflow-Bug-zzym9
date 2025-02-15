01  WS-AMOUNT PIC 9(7)V99 VALUE ZEROES.
01  WS-AMOUNT-CHECK PIC 9(7)V99.

* Using a larger PICture clause for WS-AMOUNT prevents overflow.
* Add a check to ensure the value is within the allowed range before assigning it to WS-AMOUNT.

PROCEDURE DIVISION.
    MOVE 123456.78 TO WS-AMOUNT-CHECK.
    IF WS-AMOUNT-CHECK > 999999.99 THEN
        DISPLAY "Error: Amount exceeds the maximum limit." 
        STOP RUN
    ELSE
        MOVE WS-AMOUNT-CHECK TO WS-AMOUNT
    END-IF.
    DISPLAY "WS-AMOUNT: " WS-AMOUNT
    STOP RUN.