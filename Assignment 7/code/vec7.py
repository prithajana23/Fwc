import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm
def my_func():
  global r,O,A,B,m1,m2,theta
r=1
O=np.array([0,0])
A=np.array([-0.6,0.8])
B=np.array([0.6,-0.8])
m1=O-A
m2=O-B
theta=np.arccos((m1@m2)/(norm(m1)*norm(m2)))*180/np.pi
print(theta)
if(theta==180):
  print("The two tangents are parallel to each other")
else:
  print("The two tangents are not parallel to each other")

fig,ax = plt.subplots(figsize=(5,5))
P=np.array([1,2])
Q=np.array([-2,-0.2])
R=np.array([2,0.2])
S=np.array([-1,-2])
def line_gen(A,B):
  len=100
  dim=A.shape[0]
  x_AB=np.zeros((dim,len))
  lam_1=np.linspace(0,1,len)
  for i in range(len):
    temp1=A+lam_1[i]*(B-A)
    x_AB[:,i]=temp1.T
  return x_AB

def circ_gen(O,r):
 len = 50
 theta = np.linspace(0,2*np.pi,len)
 x_circ = np.zeros((2,len))
 x_circ[0,:] = r*np.cos(theta)
 x_circ[1,:] = r*np.sin(theta)
 x_circ = (x_circ.T + O).T
 return x_circ
x_circ= circ_gen(O,r)
x_PQ = line_gen(P,Q)
x_RS = line_gen(R,S)


plt.plot(x_circ[0,:],x_circ[1,:],label='$Circle$')
plt.plot(x_PQ[0,:],x_PQ[1,:],label='$PQ$')
plt.plot(x_RS[0,:],x_RS[1,:],label='$RS$')
plt.plot(O[0],O[1],'o')
plt.text(0,0,u'$O$')
plt.text(-1,1,r'$A$')
plt.text(1,-1,r'$B$')
plt.plot(A[0],A[1],'o')
plt.plot(B[0],B[1],'o')

plt.xlim(-3,3)
plt.ylim(-3,3)
plt.xlabel('$x-axis$')
plt.ylabel('$y-axis$')
plt.legend()
plt.grid()
plt.show()

