within PowerGrab.Components;

model RevoluteRestrained
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true, phi.start = phi_0_restrained, n = {0, 0, 1}, phi.fixed = true) annotation(Placement(visible = true, transformation(origin = {37.108, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.ElastoBacklash elastoBacklash(d = d, c = c, b = totalBacklashAngle) annotation(Placement(visible = true, transformation(origin = {24.323, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Disc disc(deltaPhi = brakePlacementAngle) annotation(Placement(visible = true, transformation(origin = {-14.096, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Boolean useAxisFlange = false "if = true, then axis flange is enabled (connects to the internal revolute joint's axis flange)";
  parameter Modelica.SIunits.Angle totalBacklashAngle = theta_2 - theta_1;
  parameter Modelica.SIunits.RotationalSpringConstant c = 1000 "Stiffness of the brakes applied on the revolute joint";
  parameter Modelica.SIunits.RotationalDampingConstant d = 1000 "Damping - energy loss - present in the brakes applied on the revolute joint";
  parameter Modelica.SIunits.Angle phi_0_restrained "Initial angle of the revolute joint - must stay within the limits specficied in theta_1 and theta_2";
  parameter Modelica.SIunits.Angle theta_1 "Lower limit for rotation of revolute joint";
  parameter Modelica.SIunits.Angle theta_2 "Upper limit for rotation of revolute joint";
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a if useAxisFlange annotation(Placement(visible = true, transformation(origin = {30, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {24.971, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-15, 67.02800000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-22.552, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Angle brakePlacementAngle = (theta_2 + theta_1) / 2;
equation
  connect(flange_a, revolute.axis) annotation(Line(visible = true, origin = {33.554, 25.88}, points = {{-3.554, 41.19}, {-3.554, -12.655}, {3.554, -12.655}, {3.554, -15.88}}));
  connect(flange_b, revolute.support) annotation(Line(visible = true, origin = {8.054, 25.869}, points = {{-23.054, 41.158}, {-23.054, -12.644}, {23.054, -12.644}, {23.054, -15.869}}));
  connect(revolute.frame_b, frame_b) annotation(Line(visible = true, origin = {79.604, 0}, points = {{-32.496, 0}, {32.496, 0}}));
  connect(frame_a, revolute.frame_a) annotation(Line(visible = true, origin = {-42.844, 0}, points = {{-69.952, 0}, {69.952, 0}}));
  connect(disc.flange_a, revolute.support) annotation(Line(visible = true, origin = {-11.801, 17.5}, points = {{-12.295, 7.5}, {-15.307, 7.5}, {-15.307, -7.5}, {42.909, -7.5}}));
  connect(elastoBacklash.flange_b, revolute.axis) annotation(Line(visible = true, origin = {36.18, 20}, points = {{-1.857, 5}, {0.928, 5}, {0.928, -10}}));
  connect(disc.flange_b, elastoBacklash.flange_a) annotation(Line(visible = true, origin = {5.114, 25}, points = {{-9.209, 0}, {9.209, 0}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, origin = {0, 0.756}, fillColor = {0, 0, 128}, fillPattern = FillPattern.Solid, extent = {{-94.494, -92.982}, {94.494, 92.982}}), Polygon(visible = true, origin = {-0.324, -2.833}, fillColor = {255, 0, 128}, fillPattern = FillPattern.Solid, points = {{-49.676, 24.756}, {-1.188, 60.286}, {47.949, 29.292}, {46.437, -57.167}, {-43.521, -57.167}}), Ellipse(visible = true, origin = {1.339, -2.268}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-21.339, -19.655}, {21.339, 19.655}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RevoluteRestrained;