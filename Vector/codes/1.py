import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm
def my_func():
  global a,b,e1,theta,k1,k2,A,B,C,D,P,Q

a=AB=DC=6
b=AD=BC=np.sqrt(29)
e1=np.array([1,0])
theta=np.sin(5/np.sqrt(29))
k1=np.any(a)#we can assign any value to it
k2=np.any(a)#we can assign any value to it
A = np.array([0,0])
B = a*e1
D = b*np.array([np.sin(theta),np.cos(theta)])
C = B+D
P = (k2*C+D)//k2+1
Q = (k1*D+A)//k1+1


x1 = np.block([1,1,1])
y1 = np.block([0,(((k2*(a+b*np.sin(theta)))+b*np.sin(theta))/(k2+1)),a])
z1 = np.block([0,(((k2*b*np.cos(theta))+b*np.cos(theta))/(k2+1)),0])
A1 = np.block([[x1],[y1],[z1]])#area of triangle APB
print(A1)
print(norm(np.linalg.det(A1)))
x2 = np.block([1,1,1])
y2 = np.block([a,(k1*b*np.sin(theta))/(k1+1),(a+b*np.sin(theta))])
z2 = np.block([0,(k1*b*np.cos(theta))/(k1+1),(b*np.cos(theta))])
A2 = np.block([[x2],[y2],[z2]])#area of triangle BQC
print(A2)
print(norm(np.linalg.det(A2)))
if (np.any(A2)==np.any(A1)):
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
plt.text(0.6,2.5,r'$Q$')#(AQ+QD)
plt.text(4.6,5,u'$P$')#(DP+PC)


plt.grid()
plt.show()

