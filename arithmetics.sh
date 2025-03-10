#!/bin/bash

X=10
Y=5

SUM=$((X + Y))
echo "Sum of $X and $Y is: $SUM"

DIFF=$((X - Y))
echo "Difference between $X and $Y is: $DIFF"

PRODUCT=$((X * Y))
echo "Product of $X and $Y is: $PRODUCT"

QUOTIENT=$((X / Y))
echo "Quotient of $X divided by $Y is: $QUOTIENT"

REMAINDER=$((X % Y))
echo "Remainder of $X divided by $Y is: $REMAINDER"

X=$((X + 1))
echo "After incrementing, X is now: $X"

Y=$((Y - 1))
echo "After decrementing, Y is now: $Y"
