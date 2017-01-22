
import pylab as p1
from pyjmi.common.plotting import plot_gui
import matplotlib.pyplot as plt

time = tF['time']

# m - middle, r - ring, i - index, l - little, t - thumb

m_phi_bot = tF['middleMostFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']
m_phi_side = tF['middleMostFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute.revolute.axis.phi']
m_phi_mid = tF['middleMostFinger.fingerStructure.boneJoint.joint.restrainedRevolute.revolute.axis.phi']
m_phi_top = tF['middleMostFinger.fingerStructure.boneJoint1.joint.restrainedRevolute.revolute.axis.phi']

m_con_bot = tF['middleMostFinger.objectConnection2.contact']
m_con_mid = tF['middleMostFinger.objectConnection1.contact']
m_con_top = tF['middleMostFinger.objectConnection.contact']

i_phi_bot = tF['middleRightFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']
i_phi_side = tF['middleRightFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute.revolute.axis.phi']
i_phi_mid = tF['middleRightFinger.fingerStructure.boneJoint.joint.restrainedRevolute.revolute.axis.phi']
i_phi_top = tF['middleRightFinger.fingerStructure.boneJoint1.joint.restrainedRevolute.revolute.axis.phi']

i_con_bot = tF['middleRightFinger.objectConnection2.contact']
i_con_mid = tF['middleRightFinger.objectConnection1.contact']
i_con_top = tF['middleRightFinger.objectConnection.contact']

r_phi_bot = tF['middleLeftFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']
r_phi_side = tF['middleLeftFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute.revolute.axis.phi']
r_phi_mid = tF['middleLeftFinger.fingerStructure.boneJoint.joint.restrainedRevolute.revolute.axis.phi']
r_phi_top = tF['middleLeftFinger.fingerStructure.boneJoint1.joint.restrainedRevolute.revolute.axis.phi']

r_con_bot = tF['middleLeftFinger.objectConnection2.contact']
r_con_mid = tF['middleLeftFinger.objectConnection1.contact']
r_con_top = tF['middleLeftFinger.objectConnection.contact']

t_phi_bot = tF['opposable.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']
t_phi_side = tF['opposable.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute.revolute.axis.phi']
t_phi_mid = tF['opposable.fingerStructure.boneJoint.joint.restrainedRevolute.revolute.axis.phi']
t_phi_top = tF['opposable.fingerStructure.boneJoint1.joint.restrainedRevolute.revolute.axis.phi']

t_con_bot = tF['opposable.objectConnection2.contact']
t_con_mid = tF['opposable.objectConnection1.contact']
t_con_top = tF['opposable.objectConnection.contact']

l_phi_bot = tF['leftMostFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']
l_phi_side = tF['leftMostFinger.fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute.revolute.axis.phi']
l_phi_mid = tF['leftMostFinger.fingerStructure.boneJoint.joint.restrainedRevolute.revolute.axis.phi']
l_phi_top = tF['leftMostFinger.fingerStructure.boneJoint1.joint.restrainedRevolute.revolute.axis.phi']

l_con_bot = tF['leftMostFinger.objectConnection2.contact']
l_con_mid = tF['leftMostFinger.objectConnection1.contact']
l_con_top = tF['leftMostFinger.objectConnection.contact']

plt.figure (1)
plt.plot(time,l_phi_bot, label='Little Finger Angle')
plt.plot(time,r_phi_bot, label='Ring Finger Angle')
plt.plot(time,m_phi_bot, label='Middle Finger Angle')
plt.plot(time,i_phi_bot, label='Index Finger Angle')
plt.plot(time,t_phi_bot, label='Thumb Angle')
plt.plot(time,l_con_bot, label='Little Finger PCS')
plt.plot(time,r_con_bot, label='Ring Finger PCS')
plt.plot(time,m_con_bot, label='Middle Finger PCS')
plt.plot(time,i_con_bot, label='Index Finger PCS')
plt.plot(time,t_con_bot, label='Thumb PCS')
plt.title('Testing the Hand Model: Proximal Joint Data')
plt.legend(loc='upper right')
plt.xlabel('Time [s]')
plt.ylabel('Angular Position [rad], Phalange Contact Signal (PCS)')
plt.ylim(-0.1,1.1)
plt.grid(True)
plt.show()

plt.figure (2)
plt.plot(time,l_phi_mid, label='Little Finger Angle')
plt.plot(time,r_phi_mid, label='Ring Finger Angle')
plt.plot(time,m_phi_mid, label='Middle Finger Angle')
plt.plot(time,i_phi_mid, label='Index Finger Angle')
plt.plot(time,t_phi_mid, label='Thumb Angle')
plt.plot(time,l_con_mid, label='Little Finger PCS')
plt.plot(time,r_con_mid, label='Ring Finger PCS')
plt.plot(time,m_con_mid, label='Middle Finger PCS')
plt.plot(time,i_con_mid, label='Index Finger PCS')
plt.plot(time,t_con_mid, label='Thumb PCS')
plt.title('Testing the Hand Model: Middle Joint Data')
plt.legend(loc='lower right')
plt.xlabel('Time [s]')
plt.ylabel('Angular Position [rad], Phalange Contact Signal (PCS)')
# plt.ylim(-0.1,1.1)
plt.grid(True)
plt.show()

plt.figure (3)
plt.plot(time,l_phi_top, label='Little Finger Angle')
plt.plot(time,r_phi_top, label='Ring Finger Angle')
plt.plot(time,m_phi_top, label='Middle Finger Angle')
plt.plot(time,i_phi_top, label='Index Finger Angle')
plt.plot(time,t_phi_top, label='Thumb Angle')
plt.plot(time,l_con_top, label='Little Finger PCS')
plt.plot(time,r_con_top, label='Ring Finger PCS')
plt.plot(time,m_con_top, label='Middle Finger PCS')
plt.plot(time,i_con_top, label='Index Finger PCS')
plt.plot(time,t_con_top, label='Thumb PCS')
plt.title('Testing the Hand Model: Distal Joint Data')
plt.legend(loc='upper left')
plt.xlabel('Time [s]')
plt.ylabel('Angular Position [rad], Phalange Contact Signal (PCS)')
# plt.ylim(-0.1,1.1)
plt.grid(True)
plt.show()

# plt.subplot(4,1,2)
# plt.plot(time, l_phi_side, label='Little Finger Angle')
# plt.plot(time, r_phi_side, label='Ring Finger Angle')
# plt.plot(time, m_phi_side, label='Middle Finger Angle')
# plt.plot(time, i_phi_side, label='Index Finger Angle')
# plt.plot(time, t_phi_side, label='Thumb Angle')
# plt.legend(loc='upper left')
# plt.xlabel('Time [s]')
# plt.ylabel('Angular Position [rad]')
# plt.subplot(4,1,4)
# plt.plot(time,l_con_bot, label='Little Finger PCS')
# plt.plot(time,r_con_bot, label='Ring Finger PCS')
# plt.plot(time,m_con_bot, label='Middle Finger PCS')
# plt.plot(time,i_con_bot, label='Index Finger PCS')
# plt.plot(time,t_con_bot, label='Thumb PCS')
# plt.legend(loc='upper left')
# plt.xlabel('Time [s]')
# plt.ylabel('Phalange Contact Signal (PCS)')
# plt.grid(True)
# plt.show()