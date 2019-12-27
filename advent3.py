import matplotlib.pyplot as plt
from ast import literal_eval


f = open('set1.txt', 'r')
set1 = f.read()
f.close()

f = open('set2.txt', 'r')
set2 = f.read()
f.close()

set1 = literal_eval(set1)
set2 = literal_eval(set2)

x_co1 = []
y_co1 = []

x_co2 = []
y_co2 = []

for i in set1:
    x_co1.append(i[0])
    y_co1.append(i[1])

for i in set2:
    x_co2.append(i[0])
    y_co2.append(i[1])


# x axis values
# x = [1,2,3]
# corresponding y axis values
# y = [2,4,1]

# plotting the points
plt.plot(x_co1, y_co1)
plt.plot(x_co2, y_co2, color='olive')


# naming the x axis
plt.xlabel('x - axis')
# naming the y axis
plt.ylabel('y - axis')

# giving a title to my graph
plt.title('My first graph!')

# function to show the plot
plt.show()
