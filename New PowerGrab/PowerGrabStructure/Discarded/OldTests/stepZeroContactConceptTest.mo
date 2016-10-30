within PowerGrabStructure.Discarded.OldTests;
model stepZeroContactConceptTest
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0.01, 0}, m = 1,
    r_0(                                                                   start =     {0, 1, 0}, fixed =     true),angles_fixed = true) annotation(Placement(visible = true, transformation(origin = {65, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
    s(                                                                          start =   1, fixed =   true),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-85, -16.778}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {-107.124, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine(freqHz = 1, amplitude = 0, offset = 1) annotation(Placement(visible = true, transformation(origin = {-152.942, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(sine.y, position.s_ref) annotation(Line(visible = true, origin = {-130.533, -55}, points = {{-11.409, 0}, {11.409, 0}}, color = {0, 0, 127}));
  connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {-79.41800000000001, -32.889}, points = {{-17.705, -22.111}, {7.643, -22.111}, {7.643, 22.111}, {2.418, 22.111}}, color = {0, 127, 0}));
  connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {20.994, -8.388999999999999}, points = {{-95.994, -8.388999999999999}, {30.994, -8.388999999999999}, {30.994, 8.388999999999999}, {34.006, 8.388999999999999}}));
  connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-102.756, -8.388999999999999}, points = {{-17.244, 8.388999999999999}, {4.744, 8.388999999999999}, {4.744, -8.388999999999999}, {7.756, -8.388999999999999}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end stepZeroContactConceptTest;
