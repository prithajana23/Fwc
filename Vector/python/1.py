import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
A = np.array([0,0])
B = np.array([6,0])
C = np.array([8,5])
D = np.array([2,5])
P = np.array([4.5,5])
Q = np.array([1,2.5])

A1 = la.norm(0*(5-0)+4.5*(0-0)+6*(0-5))/2 #area of triangle APB
A2 = la.norm(6*(2.5-5)+1*(5-0)+8*(0-2.5))/2 #area of triangle BQC
A=la.norm((0*0-6*0)+(6*5-8*0)+(8*5-2*5)+(2*0-0*5))/2 #area of parallelogram ABCD
if (A1==(A/2)):
  print("Area of the triangle APB is half of the parallelogram ABCD ")
else:
  print("Area of the triangle APB is not half of the parallelogram ABCD")
if (A2==(A/2)):
  print("Area of the triangle BQC is half of the parallelogram ABCD")
else:
  print("Area of the triangle BQC is  not half of the parallelogram ABCD")
if (A1==A2):
  print("Area of both triangles are equal")
else:
  print("Area of both triangles are not equal")


fig,ax=plt.subplots(figsize=(5,2.7))
ax.set_title("Required Parallelogram")#setting title to the plot
plt.plot([0,2,8,6,0],[0,5,5,0,0])#(A,B,C,D)
plt.plot([6,1,8],[0,2.5,5])#(Triangle BQC)
plt.plot([0,4.5,6],[0,5,0])#(Triangle APB)
plt.ylim(-2,8) #y_axis limit
plt.xlim(0,10) #x_axis limit
plt.xlabel('x-axis')#y_label
plt.ylabel('y-axis')#x_label
plt.text(0.1,-0.5,r'$A$')#labelling the vertices
plt.text(1.7,5,r'$D$')
plt.text(8,5,r'$C$')
plt.text(6.2,-0.5,r'$B$')
plt.text(0.6,2.5,r'$Q$')
plt.text(4.6,5,u'$P$')


plt.grid()
plt.show()


