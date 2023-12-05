import pandas as pd

numbers  = pd.Series([1, 300, -5, 7.0, -1], index=list("abcde"))

positive_numbers = numbers[numbers > 0]
print(positive_numbers)