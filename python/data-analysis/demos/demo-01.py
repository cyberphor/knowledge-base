import pandas 

customer1 = pandas.Series(["Coffee", "Tea", "Water"], index=[1,2,3])
customer2 = pandas.Series(["Tea", "Coffee", "Water"], index=["breakfast", "lunch", "dinner"])

print(f"Customer 1 likes to have {customer1[1]} for breakfast")
print(f"Customer 2 likes to have {customer2['breakfast']} for breakfast")

# output
# Customer 1 likes to have Coffee for breakfast
# Customer 2 likes to have Tea for breakfast