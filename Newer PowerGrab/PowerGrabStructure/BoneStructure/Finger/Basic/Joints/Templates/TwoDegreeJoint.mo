within PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Templates;
partial model TwoDegreeJoint "Joint with Two Degrees of Freedom"
  extends Interfaces.TwoDegreeJoint;
  replaceable Subcomponents.Interfaces.RestrainedRevolute restrainedRevolute
    annotation (Placement(transformation(extent={{-56,-10},{-36,10}})));
  replaceable Subcomponents.Interfaces.RestrainedRevolute restrainedRevolute1
    annotation (Placement(transformation(extent={{-8,-10},{12,10}})));
equation
  connect(frame_a, restrainedRevolute.frame_a) annotation (Line(
      points={{-100,0},{-78,0},{-56,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.frame_b, restrainedRevolute1.frame_a) annotation (
      Line(
      points={{-36,0},{-22,0},{-8,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute1.frame_b, frame_b) annotation (Line(
      points={{12,0},{58,0},{58,0},{100,0}},
      color={95,95,95},
      thickness=0.5));
end TwoDegreeJoint;
