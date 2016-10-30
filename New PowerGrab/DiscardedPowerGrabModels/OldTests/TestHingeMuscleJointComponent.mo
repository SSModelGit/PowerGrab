within DiscardedPowerGrabModels.OldTests;
model TestHingeMuscleJointComponent
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity, g = 0) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-1, 3, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-77.215, 51.837}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = -1) annotation(Placement(visible = true, transformation(origin = {-70, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {-55, -1.852}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {0, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {-55, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 1) annotation(Placement(visible = true, transformation(origin = {-30, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {1, 3, 0}) annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 2, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {70, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0}, r_CM = {0, 0.005, 0}, m = 1,
    r_0(                                                                                                fixed =     true, start =     {0, 1, 0}))
                                                                                                                                                 annotation(Placement(visible = true, transformation(origin = {101.6, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {0, 58.208}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(force2.flange_a, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-8.800000000000001, 50.813}, points = {{-1.2, 7.395}, {-2.2, 7.395}, {-2.2, -4.488}, {2.8, -4.488}, {2.8, -5.813}}, color = {0, 127, 0}));
  connect(force2.flange_b, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {8.800000000000001, 50.813}, points = {{1.2, 7.395}, {2.2, 7.395}, {2.2, -4.488}, {-2.8, -4.488}, {-2.8, -5.813}}, color = {0, 127, 0}));
  connect(gain.y, force2.f) annotation(Line(visible = true, origin = {-6.333, 77.40300000000001}, points = {{-12.667, 7.597}, {6.333, 7.597}, {6.333, -15.194}}, color = {0, 0, 127}));
  connect(lineForceWithMass1.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {87.756, 20}, points = {{-77.756, 15}, {26.956, 15}, {26.956, -15}, {23.844, -15}}));
  connect(lineForceWithMass.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {36.342, -1.617}, points = {{-81.342, -0.235}, {-75.32899999999999, -0.235}, {-75.32899999999999, -6.383}, {78.371, -6.383}, {78.371, 6.617}, {75.258, 6.617}}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {86.54600000000001, 5.714}, points = {{-9.138, 0.714}, {2.042, 0.714}, {2.042, -0.714}, {5.054, -0.714}}));
  connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {13.98, 3.214}, points = {{-133.98, -3.214}, {43.02, -3.214}, {43.02, 3.214}, {47.939, 3.214}}));
  connect(fixedTranslation1.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-105, 0}, points = {{15, -0}, {-15, 0}}));
  connect(fixedTranslation1.frame_b, lineForceWithMass.frame_a) annotation(Line(visible = true, origin = {-68.333, -1.235}, points = {{-1.667, 1.235}, {-1.667, -0.617}, {3.333, -0.617}}));
  connect(const.y, gain.u) annotation(Line(visible = true, origin = {-50.5, 85}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
  connect(fixedTranslation.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {-27.31, 43.419}, points = {{-39.905, 8.419}, {11.297, 8.419}, {11.297, -8.419}, {17.31, -8.419}}));
  connect(const.y, force2_1.f) annotation(Line(visible = true, origin = {-56.333, 64.667}, points = {{-2.667, 20.333}, {1.333, 20.333}, {1.333, -40.667}}, color = {0, 0, 127}));
  connect(force2_1.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {-46.333, 12.099}, points = {{1.333, 7.901}, {1.333, -3.951}, {-2.667, -3.951}}, color = {0, 127, 0}));
  connect(force2_1.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-63.667, 12.099}, points = {{-1.333, 7.901}, {-1.333, -3.951}, {2.667, -3.951}}, color = {0, 127, 0}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-106.911, 25.919}, points = {{-13.089, -25.919}, {6.696, -25.919}, {6.696, 25.919}, {19.696, 25.919}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestHingeMuscleJointComponent;
