
import pylab as p1
from pyjmi.common.plotting import plot_gui

from pymodelica import compile_fmu
from pyfmi import load_fmu

cname = 'PowerGrabStructure.Examples.HandWithObject.RealHandContactTrial'
fname = 'Documents/GitHub/Working Files/PowerGrabStructure'
fmu_name = compile_fmu(cname, fname)
testF = load_fmu(fmu_name)

testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.c',5);
testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.d',15);

testF.set('opposable.fingerStructure.doubleBoneJoint.springDamper.c',5);
testF.set('opposable.fingerStructure.doubleBoneJoint.springDamper.d',15);

testF.set('middleLeftFinger.fingerStructure.doubleBoneJoint.springDamper.c',5);
testF.set('middleLeftFinger.fingerStructure.doubleBoneJoint.springDamper.d',15);

testF.set('middleRightFinger.fingerStructure.doubleBoneJoint.springDamper.c',5);
testF.set('middleRightFinger.fingerStructure.doubleBoneJoint.springDamper.d',15);

testF.set('leftMostFinger.fingerStructure.doubleBoneJoint.springDamper.c',5);
testF.set('leftMostFinger.fingerStructure.doubleBoneJoint.springDamper.d',15);


tF = testF.simulate(final_time=20)

#plot_gui.startGUI()