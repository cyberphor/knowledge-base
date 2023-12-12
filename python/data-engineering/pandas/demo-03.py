import pandas

numbers  = pandas.Series([1, 300, -5, 7.0, -1], index=list("abcde"))

positive_numbers = numbers[numbers > 0]
print(positive_numbers)

# output
# a      1.0
# b    300.0
# d      7.0
# dtype: float64