import matplotlib.pyplot as plt
fig,ax=plt.subplots(figsize=(5,2.7))
ax.set_title("Required Parallelogram")
plt.plot([0,2,8,6,0],[0,5,5,0,0])
plt.plot([6,1,8],[0,2.5,5])
plt.plot([0,4.5,6],[0,5,0])
plt.ylim(-2,8)
plt.xlim(0,10)
plt.xlabel('x-axis')
plt.ylabel('y-axis')
plt.text(0.1,-0.5,r'$A$')
plt.text(1.7,5,r'$D$')
plt.text(8,5,r'$C$')
plt.text(6.2,-0.5,r'$B$')
plt.text(0.6,2.5,r'$Q$')
plt.text(4.6,5,u'$P$')


plt.grid()
plt.show()
