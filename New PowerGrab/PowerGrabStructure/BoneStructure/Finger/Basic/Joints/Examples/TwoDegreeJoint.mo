within PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Examples;
model TwoDegreeJoint "Joint with two degrees of freedom"
  extends Templates.TwoDegreeJoint(redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
        useAxisFlange=true), redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute1(
        useAxisFlange=true));
equation
  connect(restrainedRevolute.flange_b, flange_b1) annotation (Line(points={{
          -48.2552,10},{-36,10},{-36,67.028},{-23,67.028}}, color={0,0,0}));
  connect(restrainedRevolute.flange_a, flange_a1) annotation (Line(points={{
          -43.5029,10},{-10,10},{-10,67.069},{22,67.069}}, color={0,0,0}));
  connect(restrainedRevolute1.flange_b, flange_b2) annotation (Line(points={{
          -0.2552,10},{24,10},{24,67.028},{47,67.028}}, color={0,0,0}));
  connect(restrainedRevolute1.flange_a, flange_a2) annotation (Line(points={{
          4.4971,10},{48,10},{48,67.069},{92,67.069}}, color={0,0,0}));
end TwoDegreeJoint;
