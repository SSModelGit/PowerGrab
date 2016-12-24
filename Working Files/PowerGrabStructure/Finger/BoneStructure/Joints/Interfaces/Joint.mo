within PowerGrabStructure.Finger.BoneStructure.Joints.Interfaces;
partial model Joint "Joint Interface"

  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(transformation(extent = {{84, -16}, {116, 16}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a1 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {22, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-23.029,
            100},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b1 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-23, 67.028}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-54.552,
            100},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Boolean useAxisFlange = true;
  //  annotation(Icon(coordinateSystem(preserveAspectRatio = false)), Diagram(coordinateSystem(preserveAspectRatio = false)));
  annotation (Icon(graphics={                                                                                                                         Ellipse(visible = true, origin={0,
              0.756},                                                                                                                                                                              fillColor = {0, 0, 128},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-94.494, -92.982}, {94.494, 92.982}}), Polygon(visible = true, origin={
              -0.324,-2.833},                                                                                                                                                                                                        fillColor = {255, 0, 128},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-49.676, 24.756}, {-1.188, 60.286}, {47.949, 29.292}, {46.437, -57.167}, {-43.521, -57.167}}), Ellipse(visible = true, origin={
              1.339,-2.268},                                                                                                                                                                                                        fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-21.339, -19.655}, {21.339, 19.655}})}));
end Joint;
