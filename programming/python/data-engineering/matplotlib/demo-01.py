import matplotlib.pyplot as plt
import numpy as np

# figure = the window
# axes = the L shape within the window
# plots = the data within the L shape

plt.clf() # clear figure

x = np.arange(1,11)
y = x ** 2
z = x * 2

plt.xlabel("x")
plt.ylabel("y")

plt.title("y is equal to x squared")
plt.legend([""])
plt.plot(x, y, "r:*")

plt.show()