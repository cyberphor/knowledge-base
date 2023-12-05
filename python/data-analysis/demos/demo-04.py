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