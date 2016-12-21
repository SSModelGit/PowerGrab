within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Interfaces;
partial model TwoDegreeJoint "Interface of Joint with Two Degrees of Freedom"
  extends Joint;
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a2 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {92, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {44.971, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b2 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {47, 67.028}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {13.448, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve
    annotation (Placement(transformation(extent={{-14,-116},{18,-84}}),
        iconTransformation(extent={{-14,-116},{18,-84}})));
end TwoDegreeJoint;
