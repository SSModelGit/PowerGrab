within PowerGrabStructure.Discarded.OldTests;
model TestHingeMuscleJointLineForceWMBSC
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(
    r_0(                                                 start =     {0, 0.5, 0},                                                  fixed =     true),
                                                                                  r = {0, 0.001, 0}, r_CM = {0, 0.0005, 0}, m = 1)                   annotation(Placement(visible = true, transformation(origin = {36.777, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = -1) annotation(Placement(visible = true, transformation(origin = {-50, 58.094}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {65, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {43.771, 47.619}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {-7.673, 37.306}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-8.202, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(lineForceWithMass.flange_b, force2.flange_b) annotation(Line(visible = true, origin = {0.8100000000000001, 52.914}, points = {{-2.482, -5.608}, {-2.482, -4.282}, {1.988, -4.282}, {1.988, 7.086}, {0.988, 7.086}}, color = {0, 127, 0}));
  connect(lineForceWithMass.flange_a, force2.flange_a) annotation(Line(visible = true, origin = {-16.79, 52.914}, points = {{3.117, -5.608}, {3.117, -4.282}, {-2.412, -4.282}, {-2.412, 7.086}, {-1.412, 7.086}}, color = {0, 127, 0}));
  connect(const1.y, force2.f) annotation(Line(visible = true, origin = {-22.402, 61.047}, points = {{-16.598, -2.953}, {1.199, -2.953}, {1.199, 2.953}, {14.199, 2.953}}, color = {0, 0, 127}));
  connect(lineForceWithMass.frame_b, frame_a) annotation(Line(visible = true, origin = {39.832, 43.653}, points = {{-37.505, -6.347}, {6.168, -6.347}, {6.168, 6.347}, {25.168, 6.347}}));
  connect(lineForceWithMass.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-40.356, 18.653}, points = {{22.683, 18.653}, {-6.519, 18.653}, {-6.519, -18.653}, {-9.644, -18.653}}));
  connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {58.926, 16.667}, points = {{6.074, 33.333}, {6.074, -16.667}, {-12.149, -16.667}}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {20.428, -0.33}, points = {{-13.021, -0.33}, {3.336, -0.33}, {3.336, 0.33}, {6.349, 0.33}}));
  connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestHingeMuscleJointLineForceWMBSC;
