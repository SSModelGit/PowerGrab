%run ./compileSimFingerTestModel.py

t1 = tF['time']
val = tF['fingerStructure.doubleBoneJoint.twoDegreeJoint.restrainedRevolute1.revolute.axis.phi']

fig = p1.figure()
p1.plot(t1,val)
p1.show()
