01  WS-AMOUNT PIC 9(5)V99 VALUE ZEROES.

* In this example, WS-AMOUNT is declared with a PICture clause of 9(5)V99, which means it can hold values from 0.00 to 99999.99.
* However, if you try to assign a value to WS-AMOUNT that is greater than 99999.99, you'll get an unexpected result.  This is due to numeric overflow.
* The value may be truncated to fit within the declared size, resulting in a subtle error that's hard to trace.