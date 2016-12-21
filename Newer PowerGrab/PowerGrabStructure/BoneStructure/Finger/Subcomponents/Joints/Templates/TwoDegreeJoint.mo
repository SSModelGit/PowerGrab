within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Templates;
partial model TwoDegreeJoint "Joint with Two Degrees of Freedom"
  extends Interfaces.TwoDegreeJoint;
  replaceable Subcomponents.Interfaces.RestrainedRevolute
    restrainedRevolute(useAxisFlange=useAxisFlange)
    annotation (Placement(transformation(extent={{-62,-10},{-42,10}})));
  replaceable Subcomponents.Interfaces.RestrainedRevolute
    restrainedRevolute1(useAxisFlange=useAxisFlange)
    annotation (Placement(transformation(extent={{6,-10},{26,10}})));
equation
  connect(frame_a, restrainedRevolute.frame_a) annotation (Line(
      points={{-100,0},{-82,0},{-62,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.frame_b, restrainedRevolute1.frame_a)
    annotation (Line(
      points={{-42,0},{-18,0},{6,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute1.frame_b, frame_b) annotation (Line(
      points={{26,0},{100,0},{100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.frame_b, frame_resolve) annotation (Line(
      points={{-42,0},{-20,0},{-20,-100},{2,-100}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.flange_b, flange_b1) annotation (Line(points={{-54.2552,
          10},{-40,10},{-40,67.028},{-23,67.028}}, color={0,0,0}));
  connect(restrainedRevolute.flange_a, flange_a1) annotation (Line(points={{-49.5029,
          10},{-14.7514,10},{-14.7514,67.069},{22,67.069}}, color={0,0,0}));
  connect(restrainedRevolute1.flange_b, flange_b2) annotation (Line(points={{13.7448,
          10},{30,10},{30,67.028},{47,67.028}}, color={0,0,0}));
  connect(restrainedRevolute1.flange_a, flange_a2) annotation (Line(points={{18.4971,
          10},{56,10},{56,67.069},{92,67.069}}, color={0,0,0}));
end TwoDegreeJoint;
