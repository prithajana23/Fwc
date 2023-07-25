import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm
def my_func():
  global r,O,A,B,C,D,m1,m2,theta1,theta2
r=5.59
O=np.array([0,0])
theta1=117*(np.pi/180)
theta2=-170*(np.pi/180)

A=r*np.array([np.cos(theta1),np.sin(theta1)])
B=r*np.array([-np.cos(theta1),np.sin(theta1)])
C=r*np.array([np.cos(theta2),np.sin(theta2)])
D=r*np.array([-np.cos(theta2),np.sin(theta2)])

P=np.array([0,5])
M=np.array([5.5,0])
Q=np.array([0,-1])

fig,ax = plt.subplots(figsize=(5,5))

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
x_AB = line_gen(A,B)
x_CD = line_gen(C,D)
x_OA = line_gen(O,A)
x_OC = line_gen(O,C)
x_OP = line_gen(O,P)
x_OM = line_gen(O,M)
x_OQ = line_gen(O,Q)




plt.plot(x_circ[0,:],x_circ[1,:],label='$Circle$')
plt.plot(x_AB[0,:],x_AB[1,:],label='$AB$')
plt.plot(x_CD[0,:],x_CD[1,:],label='$CD$')
plt.plot(x_OA[0,:],x_OA[1,:],label='$OA$')
plt.plot(x_OC[0,:],x_OC[1,:],label='$OC$')
plt.plot(x_OP[0,:],x_OP[1,:],label='$OP$')
plt.plot(x_OM[0,:],x_OM[1,:],label='$OM$')
plt.plot(x_OQ[0,:],x_OQ[1,:],label='$OQ$')

plt.plot(O[0],O[1],'o')
plt.text(0,0,u'$O$')
plt.text(-2.5,5,r'$A$')
plt.text(2.5,5,r'$B$')
plt.text(-5.5,-1,r'$C$')
plt.text(5.5,-1,r'$D$')
plt.text(0,5,u'$P$')
plt.text(0,-1,r'$Q$')
plt.text(5.5,0,r'$M$')


plt.xlim(-7,7)
plt.ylim(-7,7)
plt.xlabel('Values of angle')
plt.legend()
plt.grid()
plt.show()
  

