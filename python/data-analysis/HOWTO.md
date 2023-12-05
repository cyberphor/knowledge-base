# Pandas 

## How to Print All Columns in a DataFrame
```python
import pandas

data = pandas.read_csv("wdi_data/worldDevInds2017-education.csv")
columns = pandas.DataFrame(data.head())
for column in columns:
  print(column)
```
