
import pylab as p1
from pyjmi.common.plotting import plot_gui
import matplotlib.pyplot as plt

time = tF['time']
phi_bot = tF['middleMostFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']
phi_side = tF['middleMostFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute.revolute.axis.phi']
phi_mid = tF['middleMostFinger.fingerStructure.boneJoint.joint.restrainedRevolute.revolute.axis.phi']
phi_top = tF['middleMostFinger.fingerStructure.boneJoint1.joint.restrainedRevolute.revolute.axis.phi']

plt.plot(time,phi_side, label='Side Joint Angle')
plt.plot(time,phi_bot, label='Proximal Joint Angle')
plt.plot(time,phi_mid, label='Middle Joint Angle')
plt.plot(time,phi_top, label='Distal Joint Angle')
plt.legend()
plt.xlabel('Time [s]')
plt.ylabel('Angular Position [rad]')
plt.grid(True)
plt.show()


