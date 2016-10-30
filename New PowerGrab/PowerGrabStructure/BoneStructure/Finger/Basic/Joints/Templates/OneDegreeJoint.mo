within PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Templates;
partial model OneDegreeJoint "Template of Joint with One Degree of Freedom"
  extends Interfaces.Joint;
  replaceable Subcomponents.Interfaces.RestrainedRevolute restrainedRevolute
    annotation (Placement(transformation(extent={{-14,-10},{6,10}})));
equation
  connect(frame_a, restrainedRevolute.frame_a) annotation (Line(
      points={{-100,0},{-54,0},{-14,0}},
      color={95,95,95},
      thickness=0.5));
  connect(restrainedRevolute.frame_b, frame_b) annotation (Line(
      points={{6,0},{6,0},{100,0}},
      color={95,95,95},
      thickness=0.5));
end OneDegreeJoint;
