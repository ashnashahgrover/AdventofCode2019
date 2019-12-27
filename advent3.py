import matplotlib.pyplot as plt
import sys
import advent3
from Naked.toolshed.shell import execute_rb


success = execute_rb('advent3.rb')

if success:
    # handle success of the Ruby code
    print(response)
else:
    # handle failure of the Ruby code
    print("Goodbye")


def line(instructions):
    line1points =  [[0,0]]




print("This line will be printed.")

# x axis values
x = [1,2,3]
# corresponding y axis values
y = [2,4,1]

# plotting the points
plt.plot(x, y)

# naming the x axis
plt.xlabel('x - axis')
# naming the y axis
plt.ylabel('y - axis')

# giving a title to my graph
plt.title('My first graph!')

# function to show the plot
plt.show()
