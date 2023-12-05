# Data Analysis

## Pandas
Pandas is based on NumPy.

**Pandas Series**  
A pandas series is a one-dimensional list. The index of a series can be thought of as "labels."

**Pandas DataFrame**  
A pandas DataFrame is a table (multiple series joined together). Each series in a DataFrame is mapped to a column name.  

## Demos
Demo 1
```python
import pandas as pd

customer1 = pd.Series(["Coffee", "Tea", "Water"], index=[1,2,3])
customer2 = pd.Series(["Tea", "Coffee", "Water"], index=["breakfast", "lunch", "dinner"])

print(f"Customer 1 likes to have {customer1[1]} for breakfast")
print(f"Customer 2 likes to have {customer2['breakfast']} for breakfast")

# output
# Customer 1 likes to have Coffee for breakfast
# Customer 2 likes to have Tea for breakfast
```

Demo 2
```python
import pandas as pd

price  = pd.Series([5.00, 10.00, 1.00], index=["Coffee", "Tea", "Water"])
amount = pd.Series([1, 2, 1], index=["Coffee", "Tea", "Water"])

total = price * amount # multiplies by column name, not position; returns data frame
print(total)

# output
# Coffee     5.0
# Tea       20.0
# Water      1.0
# dtype: float64
```

Demo 3
```python
import pandas as pd

numbers  = pd.Series([1, 300, -5, 7.0, -1], index=list("abcde"))

positive_numbers = numbers[numbers > 0]
print(positive_numbers)

# output
# a      1.0
# b    300.0
# d      7.0
# dtype: float64
```

Demo 4
```python
import pandas as pd

price  = pd.Series([5.00, 10.00, 1.00], index=["Coffee", "Tea", "Water"])
amount = pd.Series([1, 2, 1], index=["Coffee", "Tea", "Water"])
df = pd.DataFrame(
    {
        "Price": price, 
        "Amount": amount
    }
)

print(df)

# output
#         Price  Amount
# Coffee    5.0       1
# Tea      10.0       2
# Water     1.0       1
```