within PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Examples;
model OneDegreeJoint "Joint with one degree of freedom"
  extends Templates.OneDegreeJoint(redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
        useAxisFlange=true));
equation
  connect(restrainedRevolute.flange_b, flange_b1) annotation (Line(points={{
          -6.2552,10},{-6.2552,38},{-23,38},{-23,67.028}}, color={0,0,0}));
  connect(restrainedRevolute.flange_a, flange_a1) annotation (Line(points={{
          -1.5029,10},{10,10},{10,67.069},{22,67.069}}, color={0,0,0}));
end OneDegreeJoint;
