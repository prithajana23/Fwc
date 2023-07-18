import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm

def my_func():
  global theta,alpha,beta,O,P,Q,R,angle_OPR


O=np.array([0,0])
theta=100*np.pi/180
alpha=165.4*np.pi/180
beta=5*np.pi/180
P=np.array([np.cos(alpha),np.sin(alpha)])
R=np.array([np.cos(beta),np.sin(beta)])
Q=np.array([np.cos(theta),np.sin(theta)])
PO=O-P
PR=R-P

angle_OPR=round(np.arccos((PO@PR)/(norm(PO)*norm(PR)))*180/np.pi)
print("The value of angle OPR is",angle_OPR,"degree")


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
x_PQ = line_gen(P,Q)
x_QR = line_gen(Q,R)
x_OP = line_gen(O,P)
x_OR = line_gen(O,R)
x_PR = line_gen(P,R)




plt.plot(x_circ[0,:],x_circ[1,:],label='$Circle$')
plt.plot(x_PQ[0,:],x_PQ[1,:],label='$PQ$')
plt.plot(x_PR[0,:],x_PR[1,:],label='$PR$')
plt.plot(x_QR[0,:],x_QR[1,:],label='$QR$')
plt.plot(x_OR[0,:],x_OR[1,:],label='$OR$')
plt.plot(x_OP[0,:],x_OP[1,:],label='$OP$')

plt.text(0,0,u'$O$')
plt.text(-0.96,0.25,u'$P$')
plt.text(0.96,0.25,r'$R$')
plt.text(0,1,r'$Q$')
plt.text(0,-0.45,r'$T$')
plt.xlabel('$x-axis$')
plt.ylabel('$y-axis$')
plt.legend()
plt.grid()
plt.show()

