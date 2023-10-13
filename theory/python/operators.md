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