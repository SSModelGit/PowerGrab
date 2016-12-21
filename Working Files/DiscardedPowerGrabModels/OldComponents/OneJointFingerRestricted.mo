within DiscardedPowerGrabModels.OldComponents;
model OneJointFingerRestricted "Incomplete model; does not include the newer version of the muslce model"
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0, 0.8, 0}, r_shape = {0, 0.8, 0}, color = {155, 0, 0}, diameter = 0.2) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0, 0.7, 0}, r_shape = {0, 0.7, 0},
    r_0(                                                                                                  start =     {0, 0.08, 0}, fixed =     false),color = {255, 65, 65}, diameter = 0.2) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-108.479, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PrismaticRestricted prismaticRestricted(l_stop = 0.001, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {-30, 38.148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0},
    r_0(                                                                   start =     {0, 0.08, 0}),m = 0.001, r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {-7.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.1, -0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.1, -0.35, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {26.987, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(
    phi(                                                 start =     1.71),animation = false, n = {0, 0, -1}, useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-30, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.TranslationalSpringConstant k = 100;
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    revoluteRestrained(elastoBacklash(
      d=50,
      phi_rel0=0,
      b=4,
      c=200)) annotation (Placement(visible=true, transformation(
        origin={-20,-8.202},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, -1},
    phi(                                                                                    start =     1.71),useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-37.475, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PrismaticRestricted prismaticRestricted1(c_bottom = 2000, c_upper = 2000, d_bottom = 200, d_upper = 200, l_stop = 0.001) annotation(Placement(visible = true, transformation(origin = {-13.133, -47.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.01, 0},
    r_0(                                                                               start =     {0, 0.08, 0}),r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {12.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.1, 0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(animation = false, r = {0.1, -0.35, 0}) annotation(Placement(visible = true, transformation(origin = {53.379, 22.692}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  PhysicalMuscle2 physicalMuscle2 annotation(Placement(visible = true, transformation(origin = {-15, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = k) annotation(Placement(visible = true, transformation(origin = {-113.45, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const.y, physicalMuscle2.kNominal) annotation(Line(visible = true, origin = {-45.363, 70}, points = {{-57.088, -5}, {17.363, -5}, {17.363, 5}, {22.363, 5}}, color = {0, 0, 127}));
  connect(physicalMuscle2.frame_b, bodyShape1.frame_b) annotation(Line(visible = true, origin = {8.801, 19.244}, points = {{-23.801, 46.517}, {-23.801, 42.756}, {16.905, 42.756}, {16.905, -66.015}, {13.792, -66.015}}));
  connect(physicalMuscle2.frame_b2, bodyShape.frame_b) annotation(Line(visible = true, origin = {-3.041, 67.874}, points = {{-11.959, 15.494}, {-11.959, 20.126}, {9.01, 20.126}, {9.01, -27.874}, {5.897, -27.874}}));
  connect(physicalMuscle2.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-73.468, 21.2}, points = {{49.646, 46.2}, {-17.586, 46.2}, {-17.586, -46.2}, {-14.474, -46.2}}));
  connect(fixedTranslation3.frame_b, physicalMuscle2.frame_b_p) annotation(Line(visible = true, origin = {8.345000000000001, 44.846}, points = {{35.034, -22.154}, {-10.345, -22.154}, {-10.345, 22.154}, {-14.345, 22.154}}));
  connect(physicalMuscle2.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {9.683999999999999, 28.8}, points = {{-15.684, 53.8}, {4.191, 53.8}, {4.191, -53.8}, {7.303, -53.8}}));
  connect(fixedTranslation.frame_b, physicalMuscle2.frame_a1) annotation(Line(visible = true, origin = {-73.19799999999999, 50.342}, points = {{-14.325, -32.059}, {-17.437, -32.059}, {-17.437, 32.059}, {49.198, 32.059}}));
  connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {57.784, 11.346}, points = {{5.595, 11.346}, {8.595000000000001, 11.346}, {8.595000000000001, -11.346}, {-22.784, -11.346}}));
  connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
  connect(prismaticRestricted1.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {0.007, -46.603}, points = {{-5.733, 0.168}, {1.573, 0.168}, {1.573, -0.168}, {2.586, -0.168}}));
  connect(revolute2.frame_b, prismaticRestricted1.frame_a) annotation(Line(visible = true, origin = {-24.239, -38.217}, points = {{-3.236, 8.217000000000001}, {0.106, 8.217000000000001}, {0.106, -8.217000000000001}, {3.025, -8.217000000000001}}, color = {95, 95, 95}));
  connect(PalmBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-48.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
  connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-43.014, -4.101}, points = {{14.933, -4.101}, {-3.974, -4.101}, {-3.974, 4.101}, {-6.986, 4.101}}));
  connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {-2.903, -4.101}, points = {{17.903, 4.101}, {-4.097, 4.101}, {-4.097, -4.101}, {-9.710000000000001, -4.101}}));
  connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {36.99, -12.5}, points = {{-0.003, -12.5}, {0.997, -12.5}, {0.997, 12.5}, {-1.99, 12.5}}));
  connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.458, 9.141999999999999}, points = {{-14.065, 9.141999999999999}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
  connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-29.676, 26.934}, points = {{9.676, -11.934}, {10.688, -11.934}, {10.688, -0.709}, {-11.324, -0.709}, {-11.324, 12.643}, {-8.404999999999999, 12.643}}));
  connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-44.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-19.012, 39.788}, points = {{-3.58, -0.212}, {0.856, -0.212}, {0.856, 0.212}, {1.868, 0.212}}));
  connect(world.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-84.239, 0}, points = {{-14.24, 0}, {14.239, 0}}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end OneJointFingerRestricted;
