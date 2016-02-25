within PowerGrab.Tests.OldTests;

model TestHingeMuscleJointWorldForce
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r_0.start = {0, 0.5, 0}, r = {0, 0, 0}, r_CM = {0, 0, 0}, m = 1, r_0.fixed = true) annotation(Placement(visible = true, transformation(origin = {36.777, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force annotation(Placement(visible = true, transformation(origin = {3.175, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 2) annotation(Placement(visible = true, transformation(origin = {-50, 62.442}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {-5, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const2(k = 0) annotation(Placement(visible = true, transformation(origin = {-50, 32.544}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {65, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {43.771, 47.619}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
equation
  connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {58.926, 16.667}, points = {{6.074, 33.333}, {6.074, -16.667}, {-12.149, -16.667}}));
  connect(force.frame_b, frame_a) annotation(Line(visible = true, origin = {42.544, 37.5}, points = {{-29.369, -12.5}, {3.456, -12.5}, {3.456, 12.5}, {22.456, 12.5}}, color = {95, 95, 95}));
  connect(const2.y, force.force[3]) annotation(Line(visible = true, origin = {-17.869, 28.772}, points = {{-21.131, 3.772}, {6.044, 3.772}, {6.044, -3.772}, {9.044, -3.772}}, color = {0, 0, 127}));
  connect(const.y, force.force[2]) annotation(Line(visible = true, origin = {-17.869, 43.721}, points = {{-21.131, 18.721}, {6.044, 18.721}, {6.044, -18.721}, {9.044, -18.721}}, color = {0, 0, 127}));
  connect(const1.y, force.force[1]) annotation(Line(visible = true, origin = {-1.413, 50.663}, points = {{7.413, 19.337}, {10.413, 19.337}, {10.413, 6.325}, {-10.413, 6.325}, {-10.413, -25.663}, {-7.413, -25.663}}, color = {0, 0, 127}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {20.428, -0.33}, points = {{-13.021, -0.33}, {3.336, -0.33}, {3.336, 0.33}, {6.349, 0.33}}));
  connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestHingeMuscleJointWorldForce;