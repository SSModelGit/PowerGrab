within DiscardedPowerGrabModels.OldTrials;
model PrescribedStiffness "Incomplete model; does not include the newer version of the muscle model"
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0.5, 0, 0}, r_shape = {0, 0, 0}, color = {155, 0, 0}, diameter = 0.2, animation = true) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0.5, 0, 0}, r_shape = {0, 0, 0},
    r_0(                                                                                                start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = 0.2, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-135, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
    r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                  m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
    phi(                                                                                                         fixed =     true, start =     1.5))
                                                                                                                                                    annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    revoluteRestrained(
    phi_0_restrained=0,
    theta_1=-0.1,
    theta_2=1.6,
    useAxisFlange=true) annotation (Placement(visible=true, transformation(
        origin={-10,-12.083},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
    phi(                                                                                   start =     1.5,                       fixed =     true),
                                                                                                            useAxisFlange = true)                   annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
    r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-101.892, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 20) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20, phi_rel(
                                                                  fixed =         false))
                                                                                         annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldComponents.PhysicalMuscle3 physicalMuscle3(
    d_front=200,
    c_posterior=500,
    d_posterior=200,
    freeLength_posterior=0,
    freeLength_anterior=0.05,
    K_m=muscleStiffness,
    muscleLengthNom=0.5013879999999999) annotation (Placement(visible=true,
        transformation(
        origin={-16.581,75},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(table = [0, 1099; 0.2, 859; 0.4, 605; 0.6, 550; 0.8, 577; 1, 612; 1.2, 653; 1.4, 700; 1.6, 741], smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(visible = true, transformation(origin = {-131.764, 86.56699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = muscleStiffness) annotation(Placement(visible = true, transformation(origin = {-130, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.TranslationalSpringConstant muscleStiffness = 1100;
  Modelica.Blocks.Math.Division division annotation(Placement(visible = true, transformation(origin = {-97.014, 68.43899999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 1.57, rising = 25, width = 5, falling = 25, period = 60) annotation(Placement(visible = true, transformation(origin = {80, 55}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(trapezoid.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-92.07299999999999, 70.783}, points = {{161.073, -15.783}, {-54.691, -15.783}, {-54.691, 15.783}, {-51.691, 15.783}}, color = {0, 0, 127}));
  connect(const.y, division.u2) annotation(Line(visible = true, origin = {-113.01, 53.719}, points = {{-5.99, -8.718999999999999}, {0.997, -8.718999999999999}, {0.997, 8.718999999999999}, {3.997, 8.718999999999999}}, color = {0, 0, 127}));
  connect(division.y, physicalMuscle3.kNomPercent) annotation(Line(visible = true, origin = {-42.439, 71.71899999999999}, points = {{-43.575, -3.281}, {12.858, -3.281}, {12.858, 3.281}, {17.858, 3.281}}, color = {0, 0, 127}));
  connect(combiTable1D.y[1], division.u1) annotation(Line(visible = true, origin = {-113.451, 80.503}, points = {{-7.312, 6.064}, {1.438, 6.064}, {1.438, -6.064}, {4.438, -6.064}}, color = {0, 0, 127}));
  connect(physicalMuscle3.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-70.114, 21.2}, points = {{44.71, 46.2}, {-15.941, 46.2}, {-15.941, -46.2}, {-12.828, -46.2}}));
  connect(physicalMuscle3.frame_b_p, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {26.549, 21}, points = {{-34.129, 46}, {10.339, 46}, {10.339, -46}, {13.451, -46}}));
  connect(physicalMuscle3.frame_b, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-5.387, 19.325}, points = {{-11.193, 46.435}, {-11.193, 42.675}, {8.5, 42.675}, {8.5, -65.892}, {5.387, -65.892}}));
  connect(physicalMuscle3.frame_b2, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-11.064, 67.874}, points = {{-5.516, 15.494}, {-5.516, 20.126}, {7.484, 20.126}, {7.484, -27.874}, {-3.936, -27.874}}));
  connect(physicalMuscle3.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {20.712, 52.965}, points = {{-28.293, 29.635}, {8.393000000000001, 29.635}, {8.393000000000001, -29.634}, {11.506, -29.634}}));
  connect(physicalMuscle3.frame_a1, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-69.84399999999999, 50.342}, points = {{44.263, 32.058}, {-15.792, 32.058}, {-15.792, -32.059}, {-12.679, -32.059}}));
  connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
  connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
  connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
  connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-118.446, 0}, points = {{-6.554, 0}, {6.554, -0}}));
  connect(fixedRotation.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-78.446, 0}, points = {{-13.446, 0}, {13.446, 0}}));
  connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
  connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
  connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
  connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
  connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
  connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
  connect(PalmBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
  connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.041}, points = {{19.047, -6.041}, {-5.345, -6.041}, {-5.345, 6.041}, {-8.356999999999999, 6.041}}));
  connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.041}, points = {{14.113, 6.041}, {-2.887, 6.041}, {-2.887, -6.041}, {-8.337999999999999, -6.041}}));
  connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.666}, {3.554, 11.665}, {3.554, -11.665}, {-9.663, -11.665}}));
  connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
  connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PrescribedStiffness;
