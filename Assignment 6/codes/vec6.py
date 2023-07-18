import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm

def my_func():
  global P,Q,R,S,O,theta1,theta2,theta3,theta4,theta5,theta6
r=1
O=np.array([0,0])
theta1=180*np.pi/180
theta2=(-47.9)*np.pi/180
theta3=0*np.pi/180
theta4=-132.1*np.pi/180

P=np.array([round(np.cos(theta1)),round(np.sin(theta1))])
Q=np.array([np.cos(theta2),np.sin(theta2)])
R=np.array([round(np.cos(theta3)),round(np.sin(theta3))])
S=np.array([np.cos(theta4),np.sin(theta4)])
print(P)
print(Q)
print(R)
print(S)

Om=np.array([[0,1],[-1,0]])
n1=Om@(Q-P)
n2=Om@(S-R)
print(n1)
print(n2)

def line_intersect(m,n,A,B):
  N=np.vstack((m,n))
  p=np.zeros(2)
  p[0]=m@A
  p[1]=n@B
  Result=np.linalg.inv(N)@p
  return(Result)
T=line_intersect(n1,n2,P,R)
T=np.array(T)
print(T)

PT=T-P
OT=T-O
RT=T-R

theta5=round((np.arccos((PT@OT)/(norm(PT)*norm(OT))))*180/np.pi)
theta6=round((np.arccos((RT@OT)/(norm(RT)*norm(OT))))*180/np.pi)

if(theta5==theta6):
  print("Angle OTP and angle OTR are equal")
else:
  print("Angle OTP and angle OTR are not equal")

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
x_RS = line_gen(R,S)
x_OT = line_gen(O,T)


plt.plot(x_circ[0,:],x_circ[1,:],label='$Circle$')
plt.plot(x_PQ[0,:],x_PQ[1,:],label='$PQ$')
plt.plot(x_RS[0,:],x_RS[1,:],label='$RS$')
plt.plot(x_OT[0,:],x_OT[1,:],label='$OT$')
plt.text(0,0,u'$O$')
plt.text(-1,0,r'$P$')
plt.text(1,0,r'$R$')
plt.text(-0.67,-0.7,u'$S$')
plt.text(0.67,-0.75,r'$Q$')
plt.text(0,-0.45,r'$T$')
plt.xlabel('$x-axis$')
plt.ylabel('$y-axis$')
plt.legend()
plt.grid()
plt.show()

