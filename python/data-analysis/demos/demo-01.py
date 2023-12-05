import pandas as pd

customer1 = pd.Series(["Coffee", "Tea", "Water"], index=[1,2,3])
customer2 = pd.Series(["Tea", "Coffee", "Water"], index=["breakfast", "lunch", "dinner"])

print(f"Customer 1 likes to have {customer1[1]} for breakfast")
print(f"Customer 2 likes to have {customer2['breakfast']} for breakfast")