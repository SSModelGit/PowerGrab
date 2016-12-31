
import pylab as p1
from pyjmi.common.plotting import plot_gui

from pymodelica import compile_fmu
from pyfmi import load_fmu

cname = 'PowerGrabStructure.Finger.Tests.TestFingerContactModel'
fname = 'Documents/GitHub/Working Files/PowerGrabStructure'
fmu_name = compile_fmu(cname, fname, jvm_args='-Xmx5g')
testF = load_fmu(fmu_name)

#testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.c',0.01);
#testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.d',0.1);
#slips away

#testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.c',1);
#testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.d',5);
#holds

testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.c',5);
testF.set('middleMostFinger.fingerStructure.doubleBoneJoint.springDamper.d',15);


tF = testF.simulate(final_time=20)

#plot_gui.startGUI()