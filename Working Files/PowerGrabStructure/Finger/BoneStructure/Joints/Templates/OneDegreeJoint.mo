within PowerGrabStructure.Finger.BoneStructure.Joints.Templates;
partial model OneDegreeJoint "Template of Joint with One Degree of Freedom"
  extends Interfaces.Joint;
  replaceable Subcomponents.Interfaces.RestrainedRevolute
    restrainedRevolute(useAxisFlange=useAxisFlange)
    annotation (Placement(transformation(extent={{-16,-10},{4,10}})));
equation
  connect(frame_a, restrainedRevolute.frame_a) annotation (Line(
      points={{-100,0},{-58,0},{-16,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.frame_b, frame_b) annotation (Line(
      points={{4,0},{52,0},{52,0},{100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.flange_b, flange_b1) annotation (Line(points={
          {-8.2552,10},{-16,10},{-16,67.028},{-23,67.028}}, color={0,0,0}));
  connect(restrainedRevolute.flange_a, flange_a1) annotation (Line(points={
          {-3.5029,10},{10,10},{10,67.069},{22,67.069}}, color={0,0,0}));
end OneDegreeJoint;
