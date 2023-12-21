# Operators
## Operator Precedence
Operator precedence defines the order of operations to be performed. In Python, operator precedence is similar to PEMDAS (parenthesis, exponents, multiplication, division, addition, and subtraction) except it puts unary numbers between the P and E of PEMDAS.

**Unary Numbers**  
Unary plus numbers and unary minus numbers are positive and negative respectively. 
```python
-1 + -1      # -2
 1 * -1 - -5 # 4 
```

**Direction**  
All operations within a step are done left to right except for exponents. Parenthesis put whatever operations they contain in a separate step. An example of a simple exponentiation operation is below. 
```python
2 ** 3    # 8; this
2 * 2 * 2 # 8;      is the same as this
```

## Arithmetic Operators
The code and comments below show the mapping between arithmetic operators and arithmetic operations. NOTE: this is a great example of syntax (operators) vs semantics (operations). 
```python
1 + 1  # addition
1 - 1  # subtraction
1 * 1  # multiplication
1 / 1  # division
1 // 1 # integer division
1 % 1  # modulo 
1 ** 1 # exponentiation
```

## Comparison Operators
Comparison operations check for equality, inequality, and magnitude. They result in either True or False. The code and comments below the mapping between comparison operators and comparison operations. 
```python
1 == 1  # is equal
1 !=    # not equal
1 > 1   # greater than
1 >=    # greater than or equal to
1 < 1   # less than
1 <= 1  # less than or equal to
```

## Membership Operators
Membership operators check if an object is part of another object. 
```python
"u" in "us"       # True
"i" not in "team" # False
```

## Conditional Operators
Conditional operators define boolean-value expressions (decisions based on one or more conditions). Conditional operators are also called Ternary operators.  
```python
if motorpool_monday: # if this condition is met
  pmcs()             #   run this function
elif taco_tuesday:   # otherwise if this condition is met
  eat_tacos()        #   run this one
else:                # otherwise if none of these conditions are met
  drink_coffee()     #   run this
```

## Logical Operators
Logical operators check for conjunction, disjunction, and negation. 

### Conjunction
Conjunction is when both operands are true. 
```python
money > 100 and bills = 0 
```

### Disjunction
Disjunction is when one of the operands is true. 
```python
day or night 
```

### Negation
Negation is the opposite of the Boolean value the operand results in. 
```python
dinner = "burgers"
not (dinner == "pizza") # True; pizza is not for dinner
```

## Identity Operators
```python
is
is not
```
