within PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Subcomponents.Interfaces;
partial model RestrainedRevolute "Interface for Restrained Revolute Joint"

  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a
    annotation (Placement(transformation(extent={{-116,-16},{-84,16}})));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b
    annotation (Placement(transformation(extent={{84,-16},{116,16}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a if useAxisFlange annotation(Placement(visible = true, transformation(origin = {30, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {24.971, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-15, 67.02800000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-22.552, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Boolean useAxisFlange = false "if = true, then axis flange is enabled (connects to the internal revolute joint's axis flange)";
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end RestrainedRevolute;
