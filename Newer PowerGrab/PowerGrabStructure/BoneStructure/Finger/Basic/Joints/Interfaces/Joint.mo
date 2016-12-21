within PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Interfaces;

partial model Joint "Joint Interface"
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(transformation(extent = {{84, -16}, {116, 16}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a1 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {22, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {24.971, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b1 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-23, 67.028}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-22.552, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //  annotation(Icon(coordinateSystem(preserveAspectRatio = false)), Diagram(coordinateSystem(preserveAspectRatio = false)));
end Joint;
