import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm

def my_func():
  global A,B,C,D,m1,m2


m1=np.array([1,2,2])
m2=np.array([1,2,2])
  
R=(np.dot(m1,m2))/(norm(m1)*norm(m2))
theta=np.arccos(R)
print(theta)
if (theta==0):
  print("The two lines having direction vector m1 and m2 are parallel")
else:
  print("The two lines having direction vector m1 and m2 are not parallel")

def line_gen(A,B):
  len=100
  dim=A.shape[0]
  x_AB=np.zeros((dim,len))
  lam_1=np.linspace(0,1,len)
  for i in range(len):
    temp1=A+lam_1[i]*(B-A)
    x_AB[:,i]=temp1.T
  return x_AB
fig,ax=plt.subplots(figsize=(5,2.7))
A=np.array([4,7,8])
B=np.array([2,3,4])
C=np.array([-1,-2,1])
D=np.array([1,2,5])
x_AB=line_gen(A,B)
x_CD=line_gen(C,D)
plt.plot(x_AB[0,:],x_AB[1,:],color='g',label='Having direction vector m1')
plt.plot(x_CD[0,:],x_CD[1,:],color='r',label='Having direction vector m2')
plt.grid()
plt.legend()
plt.show()

