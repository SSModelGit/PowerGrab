within DiscardedPowerGrabModels.OldComponents;
model OneJointFingerNew "Incomplete model; does not include the newer version of the muslce model"
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0.5, 0, 0}, r_shape = {0, 0, 0}, color = {155, 0, 0}, diameter = 0.2, animation = true) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0.5, 0, 0}, r_shape = {0, 0, 0},
    r_0(                                                                                                start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = 0.2, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-127.115, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
    r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                  m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
    phi(                                                                                                         fixed =     true, start =     1.5))
                                                                                                                                                    annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.TranslationalSpringConstant k = 1500;
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    revoluteRestrained(
    phi_0_restrained=0,
    theta_1=0,
    theta_2=2,
    d=100,
    useAxisFlange=true,
    brakePlacementAngle=(revoluteRestrained.theta_2 + revoluteRestrained.theta_1)
        /2 - 0.1,
    totalBacklashAngle=revoluteRestrained.theta_2 - revoluteRestrained.theta_1)
    annotation (Placement(visible=true, transformation(
        origin={-10,-12.083},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
    phi(                                                                                   start =     1.5,                       fixed =     true),
                                                                                                            useAxisFlange = true)                   annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
    r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                r_CM = {0, 0.05, 0},                    shapeType = "box", sphereColor = {0, 230, 0}) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  PhysicalMuscle2 physicalMuscle2(d_front = 200, c_posterior = 50, d_posterior = 200, freeLength_anterior = 0.05, freeLength_posterior = 0) annotation(Placement(visible = true, transformation(origin = {-15, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-101.892, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 20) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20, phi_rel(
                                                                  fixed =         false))
                                                                                         annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position(w(
                                                          fixed =   false), a(
                                                                           fixed =   false))
                                                                                            annotation(Placement(visible = true, transformation(origin = {5, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = k) annotation(Placement(visible = true, transformation(origin = {-125, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 2, rising = 10, width = 2, falling = 10, period = 25) annotation(Placement(visible = true, transformation(origin = {80, 38.1}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(trapezoid.y, position.phi_ref) annotation(Line(visible = true, origin = {31.5, 26.55}, points = {{37.5, 11.55}, {-11.5, 11.55}, {-11.5, -11.55}, {-14.5, -11.55}}, color = {0, 0, 127}));
  connect(const.y, physicalMuscle2.kNominal) annotation(Line(visible = true, origin = {-68.5, 75}, points = {{-45.5, 0}, {45.5, 0}}, color = {0, 0, 127}));
  connect(position.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-6.669, 9.305999999999999}, points = {{1.669, 5.694}, {-0.834, 5.694}, {-0.834, -11.388}}));
  connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
  connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
  connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
  connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
  connect(physicalMuscle2.frame_b, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 19.325}, points = {{-12.245, 46.435}, {-7.245, 42.675}, {5.868, 42.675}, {5.868, -65.892}, {2.755, -65.892}}));
  connect(physicalMuscle2.frame_b2, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-9.800000000000001, 67.874}, points = {{-5.2, 15.494}, {-5.2, 20.126}, {7.8, 20.126}, {7.8, -27.874}, {-5.2, -27.874}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-114.503, 0}, points = {{-2.612, 0}, {2.611, 0}}));
  connect(fixedRotation.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-78.446, 0}, points = {{-13.446, 0}, {13.446, 0}}));
  connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
  connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
  connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
  connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
  connect(physicalMuscle2.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-68.468, 21.2}, points = {{44.645, 46.2}, {-17.586, 46.2}, {-17.586, -46.2}, {-14.474, -46.2}}));
  connect(fixedTranslation3.frame_b, physicalMuscle2.frame_b_p) annotation(Line(visible = true, origin = {11.25, 21}, points = {{28.75, -46}, {-8.25, -46}, {-8.25, 46}, {-17.25, 46}}));
  connect(physicalMuscle2.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {22.357, 52.965}, points = {{-28.357, 29.635}, {6.748, 29.635}, {6.748, -29.634}, {9.861000000000001, -29.634}}));
  connect(fixedTranslation.frame_b, physicalMuscle2.frame_a1) annotation(Line(visible = true, origin = {-68.19799999999999, 50.342}, points = {{-14.325, -32.059}, {-17.437, -32.059}, {-17.437, 32.059}, {44.198, 32.059}}));
  connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
  connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
  connect(PalmBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
  connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.041}, points = {{19.047, -6.041}, {-5.345, -6.041}, {-5.345, 6.041}, {-8.356999999999999, 6.041}}));
  connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.041}, points = {{14.113, 6.041}, {-2.887, 6.041}, {-2.887, -6.041}, {-8.337999999999999, -6.041}}));
  connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.666}, {3.554, 11.665}, {3.554, -11.665}, {-9.663, -11.665}}));
  connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
  connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end OneJointFingerNew;
