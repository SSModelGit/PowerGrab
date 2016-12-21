within DiscardedPowerGrabModels.OldTests;
model TestHingeMuscleJointLineForceWMTwoBSC
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(
    r_0(                                                 start =     {0, 0.5, 0},                                                  fixed =     true),
                                                                                  r = {0, 0.001, 0}, r_CM = {0, 0.0005, 0}, m = 1)                   annotation(Placement(visible = true, transformation(origin = {36.777, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = -1) annotation(Placement(visible = true, transformation(origin = {-50, 58.094}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {65, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {43.771, 47.619}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {-7.673, 37.306}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-8.202, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {0, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {66.94, -23.019}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {45.077, -21.923}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 2, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -32.015}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixedTranslation.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {-15.506, -31.007}, points = {{-4.494, -1.007}, {-0.506, -1.007}, {-0.506, 1.007}, {5.506, 1.007}}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-44, -16.007}, points = {{-6, 16.007}, {1, 16.007}, {1, -16.007}, {4, -16.007}}));
  connect(frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {60.219, -7.673}, points = {{6.721, -15.346}, {6.721, 7.673}, {-13.442, 7.673}}));
  connect(lineForceWithMass1.frame_b, frame_b) annotation(Line(visible = true, origin = {43.205, -26.509}, points = {{-33.205, -3.491}, {4.735, -3.491}, {4.735, 3.491}, {23.735, 3.491}}));
  connect(force2_1.f, const1.y) annotation(Line(visible = true, origin = {-26.154, 2.047}, points = {{26.154, -56.047}, {-6.654, -56.047}, {-6.654, 56.047}, {-12.846, 56.047}}, color = {0, 0, 127}));
  connect(lineForceWithMass1.flange_b, force2_1.flange_b) annotation(Line(visible = true, origin = {7.333, -46.667}, points = {{-1.333, 6.667}, {-1.333, -3.333}, {2.667, -3.333}}, color = {0, 127, 0}));
  connect(force2_1.flange_a, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-8.667, -43.333}, points = {{-1.333, -6.667}, {-1.333, 3.333}, {2.667, 3.333}}, color = {0, 127, 0}));
  connect(lineForceWithMass.flange_b, force2.flange_b) annotation(Line(visible = true, origin = {0.8100000000000001, 52.914}, points = {{-2.482, -5.608}, {-2.482, -4.282}, {1.988, -4.282}, {1.988, 7.086}, {0.988, 7.086}}, color = {0, 127, 0}));
  connect(lineForceWithMass.flange_a, force2.flange_a) annotation(Line(visible = true, origin = {-16.79, 52.914}, points = {{3.117, -5.608}, {3.117, -4.282}, {-2.412, -4.282}, {-2.412, 7.086}, {-1.412, 7.086}}, color = {0, 127, 0}));
  connect(const1.y, force2.f) annotation(Line(visible = true, origin = {-22.402, 61.047}, points = {{-16.598, -2.953}, {1.199, -2.953}, {1.199, 2.953}, {14.199, 2.953}}, color = {0, 0, 127}));
  connect(lineForceWithMass.frame_b, frame_a) annotation(Line(visible = true, origin = {39.832, 43.653}, points = {{-37.505, -6.347}, {6.168, -6.347}, {6.168, 6.347}, {25.168, 6.347}}));
  connect(lineForceWithMass.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-40.356, 18.653}, points = {{22.683, 18.653}, {-6.519, 18.653}, {-6.519, -18.653}, {-9.644, -18.653}}));
  connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {58.926, 16.667}, points = {{6.074, 33.333}, {6.074, -16.667}, {-12.149, -16.667}}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {20.428, -0.33}, points = {{-13.021, -0.33}, {3.336, -0.33}, {3.336, 0.33}, {6.349, 0.33}}));
  connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestHingeMuscleJointLineForceWMTwoBSC;
