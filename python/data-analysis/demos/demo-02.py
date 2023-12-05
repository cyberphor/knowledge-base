import pandas

price  = pandas.Series([5.00, 10.00, 1.00], index=["Coffee", "Tea", "Water"])
amount = pandas.Series([1, 2, 1], index=["Coffee", "Tea", "Water"])

total = price * amount # multiplies by column name, not position; returns data frame
print(total)

# output
# Coffee     5.0
# Tea       20.0
# Water      1.0
# dtype: float64