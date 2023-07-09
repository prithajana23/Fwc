import matplotlib as mpl
from matplotlib import pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm
def my_func():
  global m1,m21,m22,theta,P,a,y1,y21,y22,x1,x2,a,b,c
m1=2
theta=60*(np.pi/180)
P=np.array([2,3])
a=((np.cos(theta))**2)
b=4**2-4*(5*a-4)*(5*a-1)
c=2*(5*a-4)
m21=(4+np.sqrt(b))/c
m22=(4-np.sqrt(b))/c
print(m21)
print(m22)

fig,ax=plt.subplots(figsize=(5,4))
x1=np.arange(10)
y1=(2*(x1-2))+3
x2=np.arange(10)
y21=(m21*(x2-2))+3
y22=(m22*(x2-2))+3
plt.plot(x1,y1,color='b',label='(2  -1)x=1')
plt.plot(x2,y21,color='r',label='(-8-5√3)/11    -1)x=(-49-16√3)/11')
plt.plot(x2,y22,color='m',label='(-8+5√3)/11    -1)x=(-49+16√3)/11')
plt.xlabel('x-axis')
plt.ylabel('y-axis')
plt.legend()
plt.grid()
plt.show()

