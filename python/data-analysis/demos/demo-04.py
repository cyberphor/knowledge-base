import pandas

price  = pandas.Series([5.00, 10.00, 1.00], index=["Coffee", "Tea", "Water"])
amount = pandas.Series([1, 2, 1], index=["Coffee", "Tea", "Water"])
df = pandas.DataFrame(
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