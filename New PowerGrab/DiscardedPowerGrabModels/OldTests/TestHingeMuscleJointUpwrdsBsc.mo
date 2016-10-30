within DiscardedPowerGrabModels.OldTests;
model TestHingeMuscleJointUpwrdsBsc
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-100, 65}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-67.34, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {100, 65}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {73.05, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-0, -74}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -26.206}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0}, r_CM = {0, 0, 0}, m = 1,
    r_0(                                                                                         start =     {0, 0.5, 0}))
                                                                                                                          annotation(Placement(visible = true, transformation(origin = {-0, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-105, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Force force1 annotation(Placement(visible = true, transformation(origin = {110, 21.519}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {1, 0, 0}, angle = 0) annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-105, -31.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-82.55, -2.117}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {67.381, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-40, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {31.75, 87.842}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -72.319}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const1.y, force.force[3]) annotation(Line(visible = true, origin = {-17.55, 60.798}, points = {{60.3, 27.043}, {63.3, 27.043}, {63.3, -12.644}, {-93.45, -12.644}, {-93.45, -28.798}}, color = {0, 0, 127}));
  connect(const1.y, force.force[1]) annotation(Line(visible = true, origin = {-17.55, 55.537}, points = {{60.3, 32.305}, {63.3, 32.305}, {63.3, -20.537}, {-93.45, -20.537}, {-93.45, -23.537}}, color = {0, 0, 127}));
  connect(const1.y, force1.force[3]) annotation(Line(visible = true, origin = {60.324, 60.68}, points = {{-17.574, 27.161}, {-13.051, 27.161}, {-13.051, -27.161}, {43.676, -27.161}}, color = {0, 0, 127}));
  connect(const1.y, force1.force[2]) annotation(Line(visible = true, origin = {70.02500000000001, 60.68}, points = {{-27.275, 27.161}, {-3.35, 27.161}, {-3.35, -27.161}, {33.975, -27.161}}, color = {0, 0, 127}));
  connect(const.y, force.force[2]) annotation(Line(visible = true, origin = {-60.6, 54.4}, points = {{31.6, 30.6}, {34.6, 30.6}, {34.6, -19.4}, {-50.4, -19.4}, {-50.4, -22.4}}, color = {0, 0, 127}));
  connect(fixedTranslation2.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-79.688, -52.035}, points = {{39.688, -20.285}, {-12.188, -20.285}, {-12.188, 20.285}, {-15.312, 20.285}}));
  connect(fixedTranslation2.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-13.5, -73.16}, points = {{-6.5, 0.84}, {-3.5, 0.84}, {-3.5, -0.84}, {13.5, -0.84}}));
  connect(const1.y, force1.force[1]) annotation(Line(visible = true, origin = {83.583, 69.73399999999999}, points = {{-40.833, 18.108}, {20.417, 18.108}, {20.417, -36.215}}, color = {0, 0, 127}));
  connect(fixedTranslation.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-76.66200000000001, -16.933}, points = {{4.112, 14.817}, {7.112, 14.817}, {7.112, -14.817}, {-18.338, -14.817}}));
  connect(fixedTranslation.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-109.888, 8.942}, points = {{17.338, -11.058}, {-6.112, -11.058}, {-6.112, 11.058}, {-5.112, 11.058}}));
  connect(world.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {17.785, -5.875}, points = {{-112.785, -25.875}, {36.595, -25.875}, {36.595, 25.875}, {39.595, 25.875}}, color = {95, 95, 95}));
  connect(fixedTranslation1.frame_b, force1.frame_a) annotation(Line(visible = true, origin = {92.845, 20.759}, points = {{-15.465, -0.759}, {4.155, -0.759}, {4.155, 0.759}, {7.155, 0.759}}));
  connect(fixedRotation.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-0.714, -26.02}, points = {{0.714, -13.98}, {0.714, 3.02}, {-0.714, 3.02}, {-0.714, 7.939}}));
  connect(frame_resolve, fixedRotation.frame_a) annotation(Line(visible = true, origin = {0, -67}, points = {{0, -7}, {0, 7}}, color = {95, 95, 95}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-7.776, 26.681}, points = {{6.348, -29.274}, {6.348, -23.681}, {-5.236, -23.681}, {-5.236, 38.319}, {-2.224, 38.319}}, color = {95, 95, 95}));
  connect(force1.frame_b, frame_b) annotation(Line(visible = true, origin = {113.2, 40.008}, points = {{6.8, -18.488}, {9.800000000000001, -18.488}, {9.800000000000001, 5.992}, {-13.2, 5.992}, {-13.2, 24.992}}));
  connect(force.frame_b, frame_a) annotation(Line(visible = true, origin = {-95.8, 39.4}, points = {{0.8, -19.4}, {3.8, -19.4}, {3.8, 6.6}, {-4.2, 6.6}, {-4.2, 25.6}}));
  connect(bodyShape.frame_b, frame_b) annotation(Line(visible = true, origin = {55, 65}, points = {{-45, 0}, {45, 0}}));
  connect(frame_a, bodyShape.frame_a) annotation(Line(visible = true, origin = {-55, 65}, points = {{-45, 0}, {45, 0}}));
  abs(frame_a.f) = abs(frame_b.f);
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestHingeMuscleJointUpwrdsBsc;
