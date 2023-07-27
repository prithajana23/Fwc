import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from numpy import linalg as la
from numpy.linalg import norm

r=5
O=np.array([6,0])
O1=np.array([-2,0])
A=np.array([2,3])

def gen_formula_of_f(x,u):
  equn=2*u@x-norm(x)**2
  return equn 
x=A
u1=np.transpose(O)
u2=np.transpose(O1)

result1=round(gen_formula_of_f(A,u1))
result2=round(gen_formula_of_f(A,u2))
print("The value of f1 is",result1)
print("The value of f2 is",result2)


fig,ax = plt.subplots(figsize=(5,5))
def circ_gen(O,r):
 len = 50
 theta = np.linspace(0,2*np.pi,len)
 x_circ = np.zeros((2,len))
 x_circ[0,:] = r*np.cos(theta)
 x_circ[1,:] = r*np.sin(theta)
 x_circ = (x_circ.T + O).T
 return x_circ
x_circ= circ_gen(O1,r)
plt.plot(x_circ[0,:],x_circ[1,:],label='$Circle$')
plt.plot(A[0],A[1],'o')
plt.plot(O1[0],O1[1],'o')
plt.xlabel('$x-axis$')
plt.ylabel('$y-axis$')
plt.text(1.5,3,r'$A$')
plt.text(-2,0,u'$O$')
plt.grid()
plt.show()

