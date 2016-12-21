within PowerGrabStructure.OldComponents;
package OldTrials

  model MuscleTrial
    PowerGrab.Components.NewMuscle newMuscle(k_min_a = 1000, k_max_a = 1100, x_min_a = 0.405, x_max_a = 0.528, k_min_p = 1000, k_max_p = 1100, x_min_p = 0.502, x_max_p = 0.67) annotation(Placement(visible = true, transformation(origin = {0, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
      r_0(                                                                                                                                                                                    fixed =     false))
                                                                                                                                                                                                        "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
      r_0(                                                                                                             start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
      r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                    m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.35, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.45, -0.05, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                         fixed =     false, start =     1.5))
                                                                                                                                                       annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 1.57, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                   start =     1.5,                       fixed =     false),
                                                                                                              useAxisFlange = true)                    annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
      r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                  r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel(
                                                                     fixed =         false))
                                                                                            annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-131.519, -67.056}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-111.581, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
    parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-125, 77.611}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const3(k = 1) annotation(Placement(visible = true, transformation(origin = {-125, 47.531}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const4(k = 0) annotation(Placement(visible = true, transformation(origin = {45, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const5(k = 0) annotation(Placement(visible = true, transformation(origin = {45, 60}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
    connect(fixedRotation.frame_b, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-75.651, -15}, points = {{-25.93, -15}, {7.639, -15}, {7.639, 15}, {10.651, 15}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-121.512, -50.295}, points = {{-0.007, -16.76}, {3.118, -16.76}, {3.118, -3.535}, {-3.081, -3.535}, {-3.081, 20.295}, {-0.068, 20.295}}));
    connect(const5.y, newMuscle.xPercent_p) annotation(Line(visible = true, origin = {18.123, 65.5}, points = {{15.877, -5.5}, {-3.377, -5.5}, {-3.377, 5.5}, {-9.122999999999999, 5.5}}, color = {0, 0, 127}));
    connect(const4.y, newMuscle.kPercent_p) annotation(Line(visible = true, origin = {18.123, 84}, points = {{15.877, 6}, {-3.377, 6}, {-3.377, -6}, {-9.122999999999999, -6}}, color = {0, 0, 127}));
    connect(const3.y, newMuscle.xPercent_a) annotation(Line(visible = true, origin = {-38.256, 59.113}, points = {{-75.744, -11.583}, {23.244, -11.583}, {23.244, 11.583}, {29.256, 11.583}}, color = {0, 0, 127}));
    connect(const.y, newMuscle.kPercent_a) annotation(Line(visible = true, origin = {-38.138, 77.806}, points = {{-75.86199999999999, -0.194}, {23.125, -0.194}, {23.125, 0.194}, {29.612, 0.194}}, color = {0, 0, 127}));
    connect(newMuscle.frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-9.829000000000001, 66.33}, points = {{9.829000000000001, 18.27}, {9.829000000000001, 23.216}, {-5.184, 23.216}, {-5.184, -6.021}, {-2.059, -6.021}, {-2.059, -26.33}, {-5.171, -26.33}}));
    connect(newMuscle.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {30.944, 20}, points = {{-20.944, 45}, {5.944, 45}, {5.944, -45}, {9.055999999999999, -45}}));
    connect(newMuscle.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {22.086, 62.199}, points = {{-12.086, 23.045}, {-12.086, 27.346}, {7.02, 27.346}, {7.02, -38.868}, {10.132, -38.868}}));
    connect(newMuscle.frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {1.245, 18.539}, points = {{-1.245, 46.672}, {-1.245, 41.77}, {1.868, 41.77}, {1.868, -65.10599999999999}, {-1.245, -65.10599999999999}}));
    connect(newMuscle.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-54.933, 27.123}, points = {{45.126, 37.877}, {45.126, 33.185}, {-31.122, 33.185}, {-31.122, -52.123}, {-28.009, -52.123}}));
    connect(newMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-54.759, 60.131}, points = {{44.759, 24.869}, {44.759, 29.414}, {-30.877, 29.414}, {-30.877, -41.848}, {-27.764, -41.848}}));
    connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
    connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
    connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
    connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points = {{-8.085000000000001, 25}, {3.695, 25}, {3.695, -25}, {0.695, -25}}, color = {0, 0, 127}));
    connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points = {{-9.016999999999999, -9.5}, {2.006, -9.5}, {2.006, 9.5}, {5.006, 9.5}}, color = {0, 0, 127}));
    connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
    connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
    connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
    connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
    connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
    connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
    connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
    connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
    connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
    connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
    connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
    connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
    connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
    connect(fixedTranslation2.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
    connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
    connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
    connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
    connect(fixedTranslation.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MuscleTrial;

  model OpenLoopTrial "Incomplete model; does not include the newer version of the muscle model"
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0.5, 0, 0}, r_shape = {0, 0, 0}, color = {155, 0, 0}, diameter = 0.2, animation = true) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0.5, 0, 0}, r_shape = {0, 0, 0},
      r_0(                                                                                                start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = 0.2, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
      r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                    m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                         fixed =     false, start =     1.5))
                                                                                                                                                       annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 0, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                   start =     1.5,                       fixed =     false),
                                                                                                              useAxisFlange = true)                    annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
      r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                  r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-101.892, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 20) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20, phi_rel(
                                                                    fixed =         false))
                                                                                           annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PhysicalMuscle3 physicalMuscle3(d_front = 200, c_posterior = 200, d_posterior = 200, freeLength_posterior = 0, freeLength_anterior = 0.05, K_m = 1100, muscleLengthNom = 0.5013879999999999) annotation(Placement(visible = true, transformation(origin = {-16.581, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-125, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {57.653, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = -0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
    connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.32599999999999, 40}, points = {{9.673999999999999, 0}, {-9.673999999999999, -0}}, color = {0, 0, 127}));
    connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
    connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points = {{-8.085000000000001, 25}, {3.695, 25}, {3.695, -25}, {0.695, -25}}, color = {0, 0, 127}));
    connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points = {{-9.016999999999999, -9.5}, {2.006, -9.5}, {2.006, 9.5}, {5.006, 9.5}}, color = {0, 0, 127}));
    connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
    connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
    connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {10.663, 32.5}, points = {{36.99, 7.5}, {-0.663, 7.5}, {-0.663, -7.5}, {-35.663, -7.5}}));
    connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
    connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
    connect(const.y, physicalMuscle3.kNomPercent) annotation(Line(visible = true, origin = {-69.29000000000001, 75}, points = {{-44.71, 0}, {44.709, 0}}, color = {0, 0, 127}));
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
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-115.946, 0}, points = {{-4.054, 0}, {4.054, 0}}));
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
  end OpenLoopTrial;

  model PrescribedMotion1 "Incomplete model; does not include the newer version of the muscle model"
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
    parameter Real k = 1;
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 0, theta_1 = 0, theta_2 = 2, d = 100, useAxisFlange = true, brakePlacementAngle = (revoluteRestrained.theta_2 + revoluteRestrained.theta_1) / 2 - 0.1, totalBacklashAngle = revoluteRestrained.theta_2 - revoluteRestrained.theta_1) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                   start =     1.5,                       fixed =     true),
                                                                                                              useAxisFlange = true)                   annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
      r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                  r_CM = {0, 0.05, 0},                    shapeType = "box", sphereColor = {0, 230, 0}) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-101.892, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 20) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20, phi_rel(
                                                                    fixed =         false))
                                                                                           annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.PhysicalMuscle3
      physicalMuscle3(
      d_front=200,
      c_posterior=50,
      d_posterior=200,
      freeLength_posterior=0,
      freeLength_anterior=0.05,
      K_m=1100,
      muscleLengthNom=0.44) annotation (Placement(visible=true, transformation(
          origin={-16.581,75},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.Rotational.Sources.Torque2 torque2 annotation(Placement(visible = true, transformation(origin = {20, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 0) annotation(Placement(visible = true, transformation(origin = {110, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {6.947, 17.761}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 1.57, rising = 5, falling = 5, period = 10.5) annotation(Placement(visible = true, transformation(origin = {112.964, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = k) annotation(Placement(visible = true, transformation(origin = {-115, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const.y, physicalMuscle3.kNomPercent) annotation(Line(visible = true, origin = {-64.29000000000001, 75}, points = {{-39.71, 0}, {39.709, 0}}, color = {0, 0, 127}));
    connect(trapezoid.y, position.phi_ref) annotation(Line(visible = true, origin = {41.201, 26.381}, points = {{60.762, 8.619}, {-19.254, 8.619}, {-19.254, -8.619}, {-22.254, -8.619}}, color = {0, 0, 127}));
    connect(position.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-6.02, 11.146}, points = {{2.967, 6.615}, {-1.483, 6.615}, {-1.483, -13.229}}));
    connect(const2.y, torque2.tau) annotation(Line(visible = true, origin = {46.25, -13}, points = {{52.75, 8}, {-13.25, 8}, {-13.25, -8}, {-26.25, -8}}, color = {0, 0, 127}));
    connect(torque2.flange_b, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {16.199, -10.05}, points = {{13.801, -14.95}, {16.801, -14.95}, {16.801, 10.967}, {-23.702, 10.967}, {-23.702, 7.967}}));
    connect(torque2.flange_a, revoluteRestrained.flange_b) annotation(Line(visible = true, origin = {-0.102, -10.05}, points = {{10.102, -14.95}, {7.102, -14.95}, {7.102, 10.967}, {-12.153, 10.967}, {-12.153, 7.967}}));
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
  end PrescribedMotion1;

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
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 0, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    PowerGrabStructure.OldComponents.OldComponents.PhysicalMuscle3
      physicalMuscle3(
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

  model PrescribedTorque1 "Incomplete model; does not include the newer version of the muscle model"
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0.5, 0, 0}, r_shape = {0, 0, 0}, color = {155, 0, 0}, diameter = 0.2, animation = true) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0.5, 0, 0}, r_shape = {0, 0, 0},
      r_0(                                                                                                start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = 0.2, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-135, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
      r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                    m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute anteriorRestraint(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                                 fixed =     true, start =     1.5))
                                                                                                                                                              annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute posteriorRestraint(animation = false, n = {0, 0, 1},
      phi(                                                                                            start =     1.5,                       fixed =     true),
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
    PowerGrabStructure.OldComponents.OldComponents.PhysicalMuscle3
      physicalMuscle3(
      d_front=200,
      c_posterior=50,
      d_posterior=200,
      freeLength_posterior=0,
      freeLength_anterior=0.05,
      K_m=1100,
      muscleLengthNom=0.5013879999999999) annotation (Placement(visible=true,
          transformation(
          origin={-16.581,75},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Sources.Constant const2(k = 16) annotation(Placement(visible = true, transformation(origin = {110, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque torque(useSupport = false) annotation(Placement(visible = true, transformation(origin = {22.578, -21.872}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(useAxisFlange = true, phi_0_restrained = 0, theta_1 = -0.1, theta_2 = 1.57) annotation(Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-125, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const.y, physicalMuscle3.kNomPercent) annotation(Line(visible = true, origin = {-69.29000000000001, 75}, points = {{-44.71, 0}, {44.709, 0}}, color = {0, 0, 127}));
    connect(revoluteRestrained.frame_b, FingerExtension.frame_a) annotation(Line(visible = true, origin = {12.881, -5}, points = {{-15.332, -5}, {4.107, -5}, {4.107, 5}, {7.119, 5}}));
    connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -5}, points = {{19.047, -5}, {-5.345, -5}, {-5.345, 5}, {-8.356999999999999, 5}}));
    connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {3.346, -7.549}, points = {{9.231999999999999, -14.323}, {6.232, -14.323}, {6.232, 10.549}, {-10.849, 10.549}, {-10.849, 7.549}}));
    connect(torque.tau, const2.y) annotation(Line(visible = true, origin = {81.39400000000001, -13.436}, points = {{-46.817, -8.436}, {14.606, -8.436}, {14.606, 8.436}, {17.606, 8.436}}, color = {0, 0, 127}));
    connect(physicalMuscle3.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-70.114, 21.2}, points = {{44.71, 46.2}, {-15.941, 46.2}, {-15.941, -46.2}, {-12.828, -46.2}}));
    connect(physicalMuscle3.frame_b_p, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {26.549, 21}, points = {{-34.129, 46}, {10.339, 46}, {10.339, -46}, {13.451, -46}}));
    connect(physicalMuscle3.frame_b, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-5.387, 19.325}, points = {{-11.193, 46.435}, {-11.193, 42.675}, {8.5, 42.675}, {8.5, -65.892}, {5.387, -65.892}}));
    connect(physicalMuscle3.frame_b2, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-11.064, 67.874}, points = {{-5.516, 15.494}, {-5.516, 20.126}, {7.484, 20.126}, {7.484, -27.874}, {-3.936, -27.874}}));
    connect(physicalMuscle3.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {20.712, 52.965}, points = {{-28.293, 29.635}, {8.393000000000001, 29.635}, {8.393000000000001, -29.634}, {11.506, -29.634}}));
    connect(physicalMuscle3.frame_a1, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-69.84399999999999, 50.342}, points = {{44.263, 32.058}, {-15.792, 32.058}, {-15.792, -32.059}, {-12.679, -32.059}}));
    connect(damper1.flange_a, posteriorRestraint.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
    connect(damper1.flange_b, posteriorRestraint.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
    connect(damper.flange_b, anteriorRestraint.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
    connect(damper.flange_a, anteriorRestraint.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-118.446, 0}, points = {{-6.554, 0}, {6.554, -0}}));
    connect(fixedRotation.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-78.446, 0}, points = {{-13.446, 0}, {13.446, 0}}));
    connect(anteriorRestraint.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
    connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
    connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
    connect(posteriorRestraint.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
    connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
    connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
    connect(PalmBone.frame_b, posteriorRestraint.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.666}, {3.554, 11.665}, {3.554, -11.665}, {-9.663, -11.665}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(PalmBone.frame_b, anteriorRestraint.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PrescribedTorque1;

  model PrescribedTorqueAttempt "Incomplete model; does not include the newer version of the muscle model"
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
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 0.785, theta_1 = -0.1, theta_2 = 1.57, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    PowerGrabStructure.OldComponents.OldComponents.PhysicalMuscle3
      physicalMuscle3(
      d_front=200,
      c_posterior=0,
      d_posterior=0,
      freeLength_posterior=0,
      freeLength_anterior=0.05,
      K_m=1100,
      muscleLengthNom=0.5013879999999999) annotation (Placement(visible=true,
          transformation(
          origin={-16.581,75},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {6.703, 12.347}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {83.256, -17.992}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = -125) annotation(Placement(visible = true, transformation(origin = {128.467, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.BlankOutput blankOutput
      annotation (Placement(visible=true, transformation(
          origin={-125,68.378},
          extent={{-15,-15},{15,15}},
          rotation=0)));
    Modelica.Blocks.Sources.Sine sine(amplitude = 0.785, offset = 0.785, freqHz = 0.1) annotation(Placement(visible = true, transformation(origin = {91.72199999999999, 37.394}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(sine.y, position.phi_ref) annotation(Line(visible = true, origin = {35.708, 24.871}, points = {{45.014, 12.524}, {-14.005, 12.524}, {-14.005, -12.524}, {-17.005, -12.524}}, color = {0, 0, 127}));
    connect(const.y, torque.tau) annotation(Line(visible = true, origin = {107.308, -11.496}, points = {{10.158, 6.496}, {-4.053, 6.496}, {-4.053, -6.496}, {-12.053, -6.496}}, color = {0, 0, 127}));
    connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {39.752, -7.246}, points = {{33.503, -10.745}, {30.503, -10.745}, {30.503, 8.163}, {-47.255, 8.163}, {-47.255, 5.163}}));
    connect(position.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-6.101, 7.537}, points = {{2.804, 4.81}, {-1.402, 4.81}, {-1.402, -9.619999999999999}}));
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
  end PrescribedTorqueAttempt;

  model TrialFingerRevoluteModel
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 200, maxMDistal = 200, maxCDistal = 200) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 200, maxMDistal = 200, maxCDistal = 200) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const3(k = 0) annotation(Placement(visible = true, transformation(origin = {230, -22.26}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const4(k = 0) annotation(Placement(visible = true, transformation(origin = {220, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const8(k = 10) annotation(Placement(visible = true, transformation(origin = {55, -92.056}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
    Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, rising = 3, width = 3, falling = 3, period = 12, offset = 0, startTime = 0) annotation(Placement(visible = true, transformation(origin = {-15, 105}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Trapezoid trapezoid1(period = 12, rising = 3.5, width = 2.5, falling = 3.5, amplitude = 0, offset = 0, startTime = 0) annotation(Placement(visible = true, transformation(origin = {7.511, 133.054}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Trapezoid trapezoid2(amplitude = 0, rising = 4, width = 2, falling = 4, period = 12, offset = 0, startTime = 0) annotation(Placement(visible = true, transformation(origin = {40, 130}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-123.227, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-88.194, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 1) annotation(Placement(visible = true, transformation(origin = {-223.076, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const5(k = 0.21) annotation(Placement(visible = true, transformation(origin = {225, 55}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp1(duration = 10, height = 0, offset = 0.2) annotation(Placement(visible = true, transformation(origin = {-252.584, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp2(duration = 10, height = 0, offset = 0) annotation(Placement(visible = true, transformation(origin = {-225, -26.822}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.FingerMultipleRevoluteArray fingerMultipleRevoluteArray(
      phi_0_boneFDistal=0,
      phi_0_boneCDistal=0,
      phi_0_boneMDistal=0,
      phi_0_doubleJoint=-0.435) annotation (Placement(visible=true,
          transformation(
          origin={10.007,13.287},
          extent={{-55.007,-55.007},{55.007,55.007}},
          rotation=0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid3(amplitude = 0, falling = 5, offset = 0.2, period = 12, rising = 5, width = 1, startTime = 0) annotation(Placement(visible = true, transformation(origin = {-305, 105}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  equation
    connect(ramp.y, fingerMultipleRevoluteArray.sidePosterior) annotation(Line(visible = true, origin = {-126.482, 1.959}, points={{-85.594,
            53.041},{-82.594,53.041},{-82.594,-47.71},{125.392,-47.71},{125.392,
            -10.6629}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(ramp1.y, fingerMultipleRevoluteArray.sideAnterior) annotation(Line(visible = true, origin = {-144.231, 50.171}, points={{-97.353,
            -15.171},{-94.353,-15.171},{-94.353,22.154},{143.028,22.154},{
            143.028,-13.9644}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(trapezoid3.y, fingerMultipleRevoluteArray.sideTheta) annotation(Line(visible = true, origin = {-204.177, 40.191}, points={{
            -100.823,53.809},{-100.823,-26.904},{201.647,-26.904}},                                                                                                                                   color = {0, 0, 127}));
    connect(ramp1.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-191.736, 23.778}, points={{-49.848,
            11.222},{14.718,11.222},{14.718,-11.222},{20.414,-11.222}},                                                                                                                                 color = {0, 0, 127}));
    connect(fixedRotation.frame_b, fingerMultipleRevoluteArray.frame_a) annotation(Line(visible = true, origin = {-25.505, -62.379}, points={{-52.689,
            -12.621},{26.3442,-12.621},{26.3442,25.2429}}));
    connect(const8.y, fingerMultipleRevoluteArray.loadForce) annotation(Line(visible = true, origin = {38.796, -53.771}, points={{16.204,
            -27.285},{16.204,8.02},{-16.2043,8.02},{-16.2043,11.2447}},                                                                                                                                    color = {0, 0, 127}));
    connect(debug6P.frame_a, fingerMultipleRevoluteArray.frame_6P) annotation(Line(visible = true, origin = {70.261, 34.085}, points={{9.739,
            57.638},{-2.246,57.638},{-2.246,-57.6389},{-5.247,-57.6389}}));
    connect(debug7P.frame_a, fingerMultipleRevoluteArray.frame_7P) annotation(Line(visible = true, origin = {73.215, -53.907}, points={{16.785,
            -6.093},{-8.39261,-6.093},{-8.39261,12.187}}));
    connect(debug7A.frame_a, fingerMultipleRevoluteArray.frame_7A) annotation(Line(visible = true, origin = {-54.327, -48.551}, points={{-5.673,
            -8.312},{-6.685,-8.312},{-6.685,4.799},{9.52182,4.799},{9.52182,
            7.02582}}));
    connect(debug6A.frame_b, fingerMultipleRevoluteArray.frame_6A) annotation(Line(visible = true, origin = {-58.601, 35.871}, points={{-34.88,
            59.129},{10.577,59.129},{10.577,-59.1293},{13.7271,-59.1293}}));
    connect(trapezoid2.y, fingerMultipleRevoluteArray.thetaFDistal) annotation(Line(visible = true, origin = {36.463, 84.64400000000001}, points={{3.537,
            34.356},{3.537,-10.452},{-3.53642,-10.452},{-3.53642,-13.4525}},                                                                                                                                                  color = {0, 0, 127}));
    connect(trapezoid1.y, fingerMultipleRevoluteArray.thetaMDistal) annotation(Line(visible = true, origin = {6.467, 85.459}, points={{1.044,
            36.595},{1.044,-11.198},{-1.04392,-11.198},{-1.04392,-14.1987}},                                                                                                                                      color = {0, 0, 127}));
    connect(trapezoid.y, fingerMultipleRevoluteArray.thetaCDistal) annotation(Line(visible = true, origin = {-17.818, 78.28100000000001}, points={{2.818,
            15.719},{2.818,-4.24},{-2.81848,-4.24},{-2.81848,-7.24032}},                                                                                                                                                color = {0, 0, 127}));
    connect(posteriorMuscleArray.frame_1, fingerMultipleRevoluteArray.frame_1P) annotation(Line(visible = true, origin = {71.581, 67.157}, points={{13.419,
            -1.232},{-3.473,-1.232},{-3.473,1.23097},{-6.47303,1.23097}}));
    connect(posteriorMuscleArray.frame_2, fingerMultipleRevoluteArray.frame_2P) annotation(Line(visible = true, origin = {71.587, 49.017}, points={{13.413,
            -0.942},{-3.471,-0.942},{-3.471,0.941333},{-6.47078,0.941333}},                                                                                                                                                                                                     color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerMultipleRevoluteArray.frame_3P) annotation(Line(visible = true, origin = {71.48999999999999, 31.145}, points={{13.51,
            -0.395},{-3.476,-0.395},{-3.476,0.394698},{-6.55897,0.394698}}));
    connect(posteriorMuscleArray.frame_4, fingerMultipleRevoluteArray.frame_4P) annotation(Line(visible = true, origin = {71.44199999999999, 13.252}, points={{13.558,
            0.238625},{-3.428,0.238625},{-3.428,-0.239577},{-6.70258,-0.239577}}));
    connect(posteriorMuscleArray.frame_5, fingerMultipleRevoluteArray.frame_5P) annotation(Line(visible = true, origin = {71.496, -4.265}, points={{13.504,
            0.843275},{-3.481,0.843275},{-3.481,-0.843716},{-6.54205,-0.843716}}));
    connect(posteriorMuscleArray.frame_6, fingerMultipleRevoluteArray.frame_6P) annotation(Line(visible = true, origin = {71.511, -21.997}, points={{13.489,
            1.55687},{-3.496,1.55687},{-3.496,-1.55694},{-6.497,-1.55694}}));
    connect(posteriorMuscleArray.frame_7, fingerMultipleRevoluteArray.frame_7P) annotation(Line(visible = true, origin = {74.911, -42.681}, points={{10.089,
            5.181},{10.089,-3.071},{-10.0886,-3.071},{-10.0886,0.961}}));
    connect(anteriorMuscleArray.frame_7, fingerMultipleRevoluteArray.frame_7A) annotation(Line(visible = true, origin = {-56.742, -42.337}, points={{-11.936,
            6.015},{-11.936,-3.414},{11.9368,-3.414},{11.9368,0.811816}}));
    connect(anteriorMuscleArray.frame_6, fingerMultipleRevoluteArray.frame_6A) annotation(Line(visible = true, origin = {-52.4, -21.452}, points={{-16.278,
            1.80708},{4.376,1.80708},{4.376,-1.80628},{7.52606,-1.80628}}));
    connect(anteriorMuscleArray.frame_5, fingerMultipleRevoluteArray.frame_5A) annotation(Line(visible = true, origin = {-52.429, -4.023}, points={{-16.249,
            1.01462},{4.405,1.01462},{4.405,-1.01467},{7.44,-1.01467}}));
    connect(anteriorMuscleArray.frame_4, fingerMultipleRevoluteArray.frame_4A) annotation(Line(visible = true, origin = {-52.432, 13.404}, points={{-16.246,
            0.120493},{4.408,0.120493},{4.408,-0.11975},{7.42925,-0.11975}}));
    connect(anteriorMuscleArray.frame_3, fingerMultipleRevoluteArray.frame_3A) annotation(Line(visible = true, origin = {-52.404, 30.956}, points={{-16.274,
            -0.5594},{4.381,-0.5594},{4.381,0.558486},{7.51218,0.558486}},                                                                                                                                                                                                    color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_2, fingerMultipleRevoluteArray.frame_2A) annotation(Line(visible = true, origin = {-52.431, 48.646}, points={{-16.247,
            -1.31314},{4.408,-1.31314},{4.408,1.31233},{7.431,1.31233}},                                                                                                                                                  color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_1, fingerMultipleRevoluteArray.frame_1A) annotation(Line(visible = true, origin = {-57.953, 68.47499999999999}, points={{-10.725,
            -3.69266},{-7.725,-3.69266},{-7.725,3.85},{13.0864,3.85},{13.0864,
            -0.314392}}));
    connect(ramp2.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-184.839, -25.714}, points={{-29.161,
            -1.108},{7.822,-1.108},{7.822,1.10779},{13.517,1.10779}},                                                                                                                              color = {0, 0, 127}));
    connect(const5.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {198.57, 54.403}, points={{15.43,
            0.597},{-2.812,0.597},{-2.812,-0.597625},{-9.80743,-0.597625}},                                                                                                                       color = {0, 0, 127}));
    connect(ramp.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-184.056, 53.967}, points={{-28.02,
            1.033},{7.038,1.033},{7.038,-1.03234},{13.9437,-1.03234}},                                                                                                                          color = {0, 0, 127}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-105.711, -75}, points = {{-7.516, 0}, {7.517, 0}}));
    connect(const3.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {200.129, -23.888}, points={{18.871,
            1.628},{-4.371,1.628},{-4.371,-1.6273},{-10.129,-1.6273}},                                                                                                                                color = {0, 0, 127}));
    connect(const4.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {197.629, 13.75}, points={{11.371,
            1.25},{-1.871,1.25},{-1.871,-1.25005},{-7.629,-1.25005}},                                                                                                                          color = {0, 0, 127}));
    annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TrialFingerRevoluteModel;

  model TrialOpposableFingers
    PowerGrabStructure.OldComponents.OldComponents.ObjectLFConnection
      objectLFConnection(threshold=0.75) annotation (Placement(visible=true,
          transformation(
          origin={-25,27.15},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    OldComponents.WholeFingerArray wholeFingerArray(
      fDistalClosed=false,
      mDistalClosed=false,
      cDistalSideClosed=false,
      cDistalRegularClosed=false) annotation (Placement(visible=true,
          transformation(
          origin={17.5,70},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    OldComponents.WholeFingerArray wholeFingerArray1(
      mDistalClosed=false,
      cDistalRegularClosed=false,
      fDistalClosed=false,
      cDistalSideClosed=false) annotation (Placement(visible=true,
          transformation(
          origin={55,12.5},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-132.292, -21.955}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-65, 53.311}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-1.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -21.693}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.ObjectLFConnection
      objectLFConnection1(threshold=0.75) annotation (Placement(visible=true,
          transformation(
          origin={5,-33.214},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-117.828, 77.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-118.181, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.ObjectLFConnection
      objectLFConnection2(threshold=0.75) annotation (Placement(visible=true,
          transformation(
          origin={-25,10},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.OldComponents.OldComponents.ObjectLFConnection
      objectLFConnection3(threshold=0.75) annotation (Placement(visible=true,
          transformation(
          origin={-25,43.039},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.OldComponents.OldComponents.ObjectLFConnection
      objectLFConnection4(threshold=0.75) annotation (Placement(visible=true,
          transformation(
          origin={5,-15},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.OldComponents.OldComponents.ObjectLFConnection
      objectLFConnection5(threshold=0.75) annotation (Placement(visible=true,
          transformation(
          origin={5,-50},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = -90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-36.689, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = 180, n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-65, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixedRotation2.frame_b, wholeFingerArray1.frame_a) annotation(Line(visible = true, origin = {26.328, -46.228}, points={{-53.017,
            -23.772},{26.5085,-23.772},{26.5085,47.543}}));
    connect(fixedRotation1.frame_b, fixedRotation2.frame_a) annotation(Line(visible = true, origin = {-50.844, -70}, points={{-4.156,
            0},{4.155,0}}));
    connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-88.32899999999999, -45.977}, points={{-33.963,
            24.022},{10.317,24.022},{10.317,-24.023},{13.329,-24.023}}));
    connect(objectLFConnection5.frame_b, wholeFingerArray1.frame_a1) annotation(Line(visible = true, origin = {33.512, -23.3}, points={{
            -20.9632,-26.7},{5.988,-26.7},{5.988,26.7},{8.988,26.7}}));
    connect(objectLFConnection1.frame_b, wholeFingerArray1.frame_a2) annotation(Line(visible = true, origin = {33.512, -10.357}, points={{
            -20.9632,-22.857},{5.988,-22.857},{5.988,22.857},{8.988,22.857}}));
    connect(objectLFConnection4.frame_b, wholeFingerArray1.frame_a3) annotation(Line(visible = true, origin = {33.552, 3.3}, points={{
            -21.0032,-18.3},{5.948,-18.3},{5.948,18.3},{9.1073,18.3}}));
    connect(fixedTranslation.frame_b, objectLFConnection5.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -35.846}, points={{-10.351,
            14.153},{1.649,14.153},{1.649,-14.154},{7.0533,-14.154}}));
    connect(fixedTranslation.frame_b, objectLFConnection4.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -18.346}, points={{-10.351,
            -3.347},{1.649,-3.347},{1.649,3.346},{7.0533,3.346}}));
    connect(objectLFConnection2.frame_b, wholeFingerArray.frame_a1) annotation(Line(visible = true, origin = {-2.113, 35.45}, points={{
            -15.3382,-25.45},{4.113,-25.45},{4.113,25.45},{7.113,25.45}}));
    connect(objectLFConnection.frame_b, wholeFingerArray.frame_a2) annotation(Line(visible = true, origin = {-2.113, 48.575}, points={{
            -15.3382,-21.425},{4.113,-21.425},{4.113,21.425},{7.113,21.425}}));
    connect(objectLFConnection3.frame_b, wholeFingerArray.frame_a3) annotation(Line(visible = true, origin = {-2.073, 61.069}, points={{
            -15.3782,-18.03},{4.073,-18.03},{4.073,18.031},{7.2323,18.031}}));
    connect(fixedTranslation.frame_b, objectLFConnection2.frame_a) annotation(Line(visible = true, origin = {-27.062, -6.795}, points={{7.062,
            -14.898},{10.174,-14.898},{10.174,-1.898},{-10.938,-1.898},{-10.938,
            16.795},{-5.5337,16.795}}));
    connect(fixedTranslation.frame_b, objectLFConnection3.frame_a) annotation(Line(visible = true, origin = {-27.062, 4.218}, points={{7.062,
            -25.911},{10.174,-25.911},{10.174,-12.911},{-10.938,-12.911},{
            -10.938,38.821},{-5.5337,38.821}}));
    connect(one.y, wholeFingerArray1.anteriorInput[3]) annotation(Line(visible = true, origin = {6.336, 46.978}, points={{
            -113.164,30.28},{33.164,30.28},{33.164,-29.7804},{46.8338,-29.7804}},                                                                                                                   color = {0, 0, 127}));
    connect(one.y, wholeFingerArray.anteriorInput[3]) annotation(Line(visible = true, origin = {-21.789, 75.72799999999999}, points={{-85.039,
            1.53},{23.789,1.53},{23.789,-1.0304},{37.4588,-1.0304}},                                                                                                                                       color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.posteriorInput[4]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
            -113.452,18.89},{33.229,18.89},{33.229,-17.3894},{46.9916,-17.3894}},                                                                                                                    color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.posteriorInput[3]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
            -113.452,18.89},{33.229,18.89},{33.229,-18.3894},{46.9916,-18.3894}},                                                                                                                    color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.posteriorInput[2]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
            -113.452,18.89},{33.229,18.89},{33.229,-19.3894},{46.9916,-19.3894}},                                                                                                                    color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.posteriorInput[1]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
            -113.452,18.89},{33.229,18.89},{33.229,-20.3894},{46.9916,-20.3894}},                                                                                                                    color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.anteriorInput[4]) annotation(Line(visible = true, origin = {6.247, 30.849}, points={{
            -113.428,14.151},{33.253,14.151},{33.253,-12.6514},{46.9228,
            -12.6514}},                                                                                                                                                                                  color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.anteriorInput[2]) annotation(Line(visible = true, origin = {6.247, 30.849}, points={{
            -113.428,14.151},{33.253,14.151},{33.253,-14.6514},{46.9228,
            -14.6514}},                                                                                                                                                                                  color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray1.anteriorInput[1]) annotation(Line(visible = true, origin = {6.247, 30.849}, points={{
            -113.428,14.151},{33.253,14.151},{33.253,-15.6514},{46.9228,
            -15.6514}},                                                                                                                                                                                  color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.anteriorInput[4]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
            -14.599},{23.878,-14.599},{23.878,16.0986},{37.5478,16.0986}},                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.anteriorInput[2]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
            -14.599},{23.878,-14.599},{23.878,14.0986},{37.5478,14.0986}},                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.anteriorInput[1]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
            -14.599},{23.878,-14.599},{23.878,13.0986},{37.5478,13.0986}},                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[4]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,11.3606},{37.6166,11.3606}},                                                                                                                                                                                          color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[3]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,10.3606},{37.6166,10.3606}},                                                                                                                                                                                          color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[2]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,9.3606},{37.6166,9.3606}},                                                                                                                                                                                            color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[1]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,8.3606},{37.6166,8.3606}},                                                                                                                                                                                            color = {0, 0, 127}));
    connect(fixedTranslation.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-27.062, -1.079}, points={{7.062,
            -20.614},{10.174,-20.614},{10.174,-7.614},{-10.938,-7.614},{-10.938,
            28.229},{-5.5337,28.229}}));
    connect(fixedTranslation.frame_b, objectLFConnection1.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -27.453}, points={{-10.351,
            5.76},{1.649,5.76},{1.649,-5.761},{7.0533,-5.761}}));
    connect(fixedTranslation.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-100.156, -21.824}, points={{60.156,
            0.131},{-19.01,0.131},{-19.01,-0.131},{-22.136,-0.131}}));
    connect(fixedRotation.frame_b, wholeFingerArray.frame_a) annotation(Line(visible = true, origin = {-8.109, 55.146}, points={{-46.891,
            -1.835},{23.4455,-1.835},{23.4455,3.669}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-88.32899999999999, 15.678}, points={{-33.963,
            -37.633},{10.317,-37.633},{10.317,37.633},{13.329,37.633}}));
    annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TrialOpposableFingers;

  model TrialMultipleFingerArray
    OldComponents.FinalFingerArray middleMostFinger(
      fDistalClosed=false,
      mDistalClosed=false,
      cDistalSideClosed=false,
      cDistalRegularClosed=false,
      threshold=0.75,
      fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
          mFinger*0.147058824}) annotation (Placement(visible=true,
          transformation(
          origin={-46.326,57.203},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    OldComponents.FinalFingerArray opposable(
      mDistalClosed=false,
      cDistalRegularClosed=false,
      fDistalClosed=false,
      cDistalSideClosed=false,
      threshold=0.75,
      fingerLength={tFinger*0.137931034,tFinger*0.344827586,tFinger*0.275862069,
          tFinger*0.24137931}) annotation (Placement(visible=true,
          transformation(
          origin={-21.326,-77.797},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-162.128, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, 14.703}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-1.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-130, -46.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-167.617, 93.361}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-160, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = 75, n = {0, 0, -1}) annotation(Placement(visible = true, transformation(origin = {-97.996, -98.20699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = -150, n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, -70.297}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0, -0.25}) if third annotation(Placement(visible = true, transformation(origin = {35.347, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation3(n = {0, 0, 1}, angle = 90) if third annotation(Placement(visible = true, transformation(origin = {62.532, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, 0, -0.4}) if fourth annotation(Placement(visible = true, transformation(origin = {35.347, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation4(n = {0, 0, 1}, angle = 90) if fourth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0, 0, 0.25}) if fifth annotation(Placement(visible = true, transformation(origin = {35.347, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation5(n = {0, 0, 1}, angle = 90) if fifth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.FinalFingerArray middleLeftFinger(
      fDistalClosed=false,
      mDistalClosed=false,
      cDistalRegularClosed=false,
      cDistalSideClosed=false,
      fingerLength={rFinger*0.319148936,rFinger*0.319148936,rFinger*0.212765957,
          rFinger*0.14893617}) if third annotation (Placement(visible=true,
          transformation(
          origin={98.56100000000001,25.357},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    OldComponents.FinalFingerArray leftMostFinger(
      fDistalClosed=false,
      mDistalClosed=false,
      cDistalRegularClosed=false,
      cDistalSideClosed=false,
      fingerLength={lFinger*0.337837838,lFinger*0.324324324,lFinger*0.168918919,
          lFinger*0.168918919}) if fourth annotation (Placement(visible=true,
          transformation(
          origin={97.998,-14.643},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    OldComponents.FinalFingerArray middleRight(
      fDistalClosed=false,
      mDistalClosed=false,
      cDistalRegularClosed=false,
      cDistalSideClosed=false,
      fingerLength={iFinger*0.342857143,iFinger*0.342857143,iFinger*0.171428571,
          iFinger*0.142857143}) if fifth annotation (Placement(visible=true,
          transformation(
          origin={97.998,-56.5},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    parameter Boolean third = true;
    parameter Boolean fourth = true;
    parameter Boolean fifth = false;
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(length = 0.7, r_shape = {-0.35, 0, 0}, width = 0.1, height = 0.1) annotation(Placement(visible = true, transformation(origin = {-94.611, 7.584}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 100, d = 10000, s_unstretched = 0) annotation(Placement(visible = true, transformation(origin = {-101.594, -46.755}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0.01, 0, 0}, r_CM = {0, 0, 0}, m = 0.01,
      r_0(                                                                                               fixed =     true, start =     {-1.2, 0, 0}))
                                                                                                                                                     annotation(Placement(visible = true, transformation(origin = {-60, -46.755}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation6(n = {0, 1, 0}, angle = -15) annotation(Placement(visible = true, transformation(origin = {-85, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation7(angle = 15, n = {0, 1, 0}) if fourth annotation(Placement(visible = true, transformation(origin = {67.408, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp(duration = 0.01, startTime = 10) annotation(Placement(visible = true, transformation(origin = {-208.139, 72.672}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp1(duration = 0.01, startTime = 5) annotation(Placement(visible = true, transformation(origin = {-207.786, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp2(duration = 0.01) annotation(Placement(visible = true, transformation(origin = {-210, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation8(angle = 30, n = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-65, -95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Length mFinger = 0.0204;
    parameter Modelica.SIunits.Length iFinger = 0.0175;
    parameter Modelica.SIunits.Length rFinger = 0.0188;
    parameter Modelica.SIunits.Length lFinger = 0.0148;
    parameter Modelica.SIunits.Length tFinger = 0.0145;
  equation
    connect(bodyShape.frame_b, middleRight.frame_a4) annotation(Line(visible = true, origin = {7.306, -61.302}, points={{-57.306,
            14.547},{-54.194,14.547},{-54.194,-10.698},{82.8476,-10.698},{
            82.8476,-7.698}}));
    connect(bodyShape.frame_b, opposable.frame_a4) annotation(Line(visible = true, origin = {-40.423, -74.08}, points={{-9.577,
            27.325},{-6.464,27.325},{-6.464,-19.217},{11.2526,-19.217},{11.2526,
            -16.217}}));
    connect(bodyShape.frame_b, leftMostFinger.frame_a4) annotation(Line(visible = true, origin = {43.436, -40.218}, points={{-93.436,
            -6.537},{46.7176,-6.537},{46.7176,13.075}}));
    connect(bodyShape.frame_b, middleLeftFinger.frame_a4) annotation(Line(visible = true, origin = {43.811, -26.884}, points={{-93.811,
            -19.871},{46.9056,-19.871},{46.9056,39.741}}));
    connect(bodyShape.frame_b, middleMostFinger.frame_a4) annotation(Line(visible = true, origin = {-50.423, 6.92}, points={{0.423,
            -53.675},{3.536,-53.675},{3.536,34.783},{-3.7474,34.783},{-3.7474,
            37.783}}));
    connect(fixedRotation8.frame_b, opposable.frame_a) annotation(Line(visible = true, origin = {-33.993, -92.994}, points={{-21.007,
            -2.006},{10.5035,-2.006},{10.5035,4.012}}));
    connect(fixedRotation2.frame_b, fixedRotation8.frame_a) annotation(Line(visible = true, origin = {-79.755, -96.60299999999999}, points={{-8.241,
            -1.604},{1.743,-1.604},{1.743,1.603},{4.755,1.603}}));
    connect(ramp2.y, leftMostFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {15.541, -2.723}, points={{
            -214.541,7.723},{66.957,7.723},{66.957,-7.2224},{80.6268,-7.2224}},                                                                                                                                           color = {0, 0, 127}));
    connect(ramp1.y, leftMostFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {16.094, 14.777}, points={{-212.88,
            25.223},{66.404,25.223},{66.404,-25.7224},{80.0738,-25.7224}},                                                                                                                                        color = {0, 0, 127}));
    connect(ramp.y, leftMostFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {16.006, 31.113}, points={{
            -213.145,41.559},{66.492,41.559},{66.492,-43.0584},{80.1618,
            -43.0584}},                                                                                                                                                                                           color = {0, 0, 127}));
    connect(ramp2.y, middleLeftFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {15.963, 17.277}, points={{
            -214.963,-12.277},{67.098,-12.277},{67.098,12.7776},{80.7678,
            12.7776}},                                                                                                                                                                                    color = {0, 0, 127}));
    connect(ramp1.y, middleLeftFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {16.517, 34.777}, points={{
            -213.303,5.223},{66.544,5.223},{66.544,-5.7224},{80.2138,-5.7224}},                                                                                                                       color = {0, 0, 127}));
    connect(ramp.y, middleLeftFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {16.428, 51.113}, points={{
            -213.567,21.559},{66.633,21.559},{66.633,-23.0584},{80.3028,
            -23.0584}},                                                                                                                                                                                             color = {0, 0, 127}));
    connect(ramp2.y, opposable.anteriorInput[3]) annotation(Line(visible = true, origin = {-73.952, -34.3}, points={{
            -125.048,39.3},{37.126,39.3},{37.126,-38.7994},{50.7958,-38.7994}},                                                                                                            color = {0, 0, 127}));
    connect(ramp1.y, opposable.anteriorInput[2]) annotation(Line(visible = true, origin = {-73.399, -16.8}, points={{
            -123.387,56.8},{36.573,56.8},{36.573,-57.2994},{50.2428,-57.2994}},                                                                                                            color = {0, 0, 127}));
    connect(ramp.y, opposable.anteriorInput[1]) annotation(Line(visible = true, origin = {-73.48699999999999, -0.464}, points={{
            -123.652,73.136},{36.661,73.136},{36.661,-74.6354},{50.3308,
            -74.6354}},                                                                                                                                                                                       color = {0, 0, 127}));
    connect(zero.y, opposable.posteriorInput[3]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
            61.538},{24.603,61.538},{24.603,-61.0384},{38.3656,-61.0384}},                                                                                                                          color = {0, 0, 127}));
    connect(zero.y, opposable.posteriorInput[2]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
            61.538},{24.603,61.538},{24.603,-62.0384},{38.3656,-62.0384}},                                                                                                                          color = {0, 0, 127}));
    connect(zero.y, opposable.posteriorInput[1]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
            61.538},{24.603,61.538},{24.603,-63.0384},{38.3656,-63.0384}},                                                                                                                          color = {0, 0, 127}));
    connect(ramp2.y, middleMostFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {-92.702, 33.2}, points={{
            -106.298,-28.2},{30.876,-28.2},{30.876,28.7006},{44.5458,28.7006}},                                                                                                                  color = {0, 0, 127}));
    connect(ramp1.y, middleMostFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {-92.149, 50.7}, points={{
            -104.637,-10.7},{30.323,-10.7},{30.323,10.2006},{43.9928,10.2006}},                                                                                                                  color = {0, 0, 127}));
    connect(ramp.y, middleMostFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {-92.23699999999999, 67.036}, points={{
            -104.902,5.636},{30.411,5.636},{30.411,-7.1354},{44.0808,-7.1354}},                                                                                                                                  color = {0, 0, 127}));
    connect(zero.y, middleMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points={{-68.821,
            -5.962},{18.353,-5.962},{18.353,6.4616},{32.1156,6.4616}},                                                                                                                                color = {0, 0, 127}));
    connect(zero.y, middleMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points={{-68.821,
            -5.962},{18.353,-5.962},{18.353,5.4616},{32.1156,5.4616}},                                                                                                                                color = {0, 0, 127}));
    connect(zero.y, middleMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points={{-68.821,
            -5.962},{18.353,-5.962},{18.353,4.4616},{32.1156,4.4616}},                                                                                                                                color = {0, 0, 127}));
    connect(zero.y, opposable.posteriorInput[4]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
            61.538},{24.603,61.538},{24.603,-60.0384},{38.3656,-60.0384}},                                                                                                                          color = {0, 0, 127}));
    connect(one.y, opposable.anteriorInput[4]) annotation(Line(visible = true, origin = {-67.643, 37.708}, points={{-88.974,
            55.653},{44.4868,55.653},{44.4868,-109.807}},                                                                                                                      color = {0, 0, 127}));
    connect(one.y, middleMostFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {-82.083, 72.642}, points={{-74.534,
            20.719},{20.257,20.719},{20.257,-19.2184},{34.0196,-19.2184}},                                                                                                                                         color = {0, 0, 127}));
    connect(one.y, middleMostFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {-82.10599999999999, 77.381}, points={{-74.511,
            15.98},{20.28,15.98},{20.28,-14.4804},{33.9498,-14.4804}},                                                                                                                                      color = {0, 0, 127}));
    connect(fixedRotation7.frame_b, leftMostFinger.frame_a) annotation(Line(visible = true, origin = {89.69199999999999, -31.943}, points={{-12.284,
            -3.057},{6.1425,-3.057},{6.1425,6.115}}));
    connect(fixedRotation4.frame_b, fixedRotation7.frame_a) annotation(Line(visible = true, origin = {67.91500000000001, -21.762}, points = {{7.432, 12.119}, {13.057, 12.119}, {13.057, 1.119}, {-11.52, 1.119}, {-11.52, -13.238}, {-10.507, -13.238}}));
    connect(fixedRotation3.frame_b, middleLeftFinger.frame_a) annotation(Line(visible = true, origin = {85.128, 12.92}, points={{-12.596,
            2.437},{-4.971,2.437},{-4.971,-3.063},{11.2695,-3.063},{11.2695,
            1.252}}));
    connect(fixedRotation6.frame_b, middleMostFinger.frame_a) annotation(Line(visible = true, origin = {-61.346, 45.885}, points={{-13.654,
            4.115},{-6.029,4.115},{-6.029,-4.182},{12.8565,-4.182},{12.8565,
            0.133}}));
    connect(fixedRotation.frame_b, fixedRotation6.frame_a) annotation(Line(visible = true, origin = {-74.126, 30.802}, points = {{17.8, -16.099}, {25.425, -16.099}, {25.425, -3.099}, {-23.887, -3.099}, {-23.887, 19.198}, {-20.874, 19.198}}));
    connect(fixedTranslation.frame_b, springDamperParallel.frame_a) annotation(Line(visible = true, origin = {-115.702, -46.752}, points = {{-4.298, 0.002}, {0.095, 0.002}, {0.095, -0.003}, {4.108, -0.003}}));
    connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-144.532, -33.375}, points = {{-7.596, 13.375}, {1.532, 13.375}, {1.532, -13.375}, {4.532, -13.375}}));
    connect(bodyShape.frame_b, middleRight.frame_a1) annotation(Line(visible = true, origin = {50.124, -56.178}, points={{
            -100.124,9.423},{32.374,9.423},{32.374,-9.422},{35.374,-9.422}}));
    connect(bodyShape.frame_b, middleRight.frame_a2) annotation(Line(visible = true, origin = {50.124, -51.627}, points = {{-100.124, 4.872}, {32.374, 4.872}, {32.374, -4.873}, {35.374, -4.873}}));
    connect(bodyShape.frame_b, middleRight.frame_a3) annotation(Line(visible = true, origin = {50.163, -47.078}, points={{
            -100.163,0.323},{32.335,0.323},{32.335,-0.322},{35.4943,-0.322}}));
    connect(bodyShape.frame_b, leftMostFinger.frame_a1) annotation(Line(visible = true, origin = {50.124, -35.249}, points = {{-100.124, -11.506}, {32.374, -11.506}, {32.374, 11.506}, {35.374, 11.506}}));
    connect(bodyShape.frame_b, leftMostFinger.frame_a2) annotation(Line(visible = true, origin = {50.124, -30.699}, points = {{-100.124, -16.056}, {32.374, -16.056}, {32.374, 16.056}, {35.374, 16.056}}));
    connect(bodyShape.frame_b, leftMostFinger.frame_a3) annotation(Line(visible = true, origin = {50.163, -26.149}, points={{
            -100.163,-20.606},{32.335,-20.606},{32.335,20.606},{35.4943,20.606}}));
    connect(bodyShape.frame_b, middleLeftFinger.frame_a1) annotation(Line(visible = true, origin = {50.546, -15.249}, points = {{-100.546, -31.506}, {32.515, -31.506}, {32.515, 31.506}, {35.515, 31.506}}));
    connect(bodyShape.frame_b, middleLeftFinger.frame_a2) annotation(Line(visible = true, origin = {50.546, -10.699}, points = {{-100.546, -36.056}, {32.515, -36.056}, {32.515, 36.056}, {35.515, 36.056}}));
    connect(bodyShape.frame_b, middleLeftFinger.frame_a3) annotation(Line(visible = true, origin = {50.586, -6.149}, points={{
            -100.586,-40.606},{32.475,-40.606},{32.475,40.606},{35.6343,40.606}}));
    connect(bodyShape.frame_b, opposable.frame_a1) annotation(Line(visible = true, origin = {-39.369, -66.82599999999999}, points = {{-10.631, 20.071}, {2.543, 20.071}, {2.543, -20.071}, {5.543, -20.071}}));
    connect(bodyShape.frame_b, opposable.frame_a2) annotation(Line(visible = true, origin = {-39.369, -62.276}, points = {{-10.631, 15.521}, {2.543, 15.521}, {2.543, -15.521}, {5.543, -15.521}}));
    connect(bodyShape.frame_b, opposable.frame_a3) annotation(Line(visible = true, origin = {-39.33, -57.726}, points={{-10.67,
            10.971},{2.504,10.971},{2.504,-10.971},{5.6633,-10.971}}));
    connect(bodyShape.frame_b, middleMostFinger.frame_a1) annotation(Line(visible = true, origin = {-54.376, -10.802}, points = {{4.376, -35.953}, {7.488, -35.953}, {7.488, -22.953}, {-7.45, -22.953}, {-7.45, 58.905}, {-4.45, 58.905}}));
    connect(bodyShape.frame_b, middleMostFinger.frame_a2) annotation(Line(visible = true, origin = {-54.376, -7.769}, points = {{4.376, -38.986}, {7.488, -38.986}, {7.488, -25.986}, {-7.45, -25.986}, {-7.45, 64.97199999999999}, {-4.45, 64.97199999999999}}));
    connect(bodyShape.frame_b, middleMostFinger.frame_a3) annotation(Line(visible = true, origin = {-54.349, -4.736}, points={{4.349,
            -42.019},{7.461,-42.019},{7.461,-29.019},{-7.477,-29.019},{-7.477,
            71.039},{-4.3177,71.039}}));
    connect(springDamperParallel.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-80.797, -46.755}, points = {{-10.797, 0}, {10.797, 0}}));
    connect(world.frame_b, fixedTranslation3.frame_a) annotation(Line(visible = true, origin = {-20.522, -34.822}, points={{
            -131.606,14.822},{42.869,14.822},{42.869,-14.821},{45.869,-14.821}}));
    connect(world.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-20.522, -14.822}, points={{
            -131.606,-5.178},{42.869,-5.178},{42.869,5.179},{45.869,5.179}}));
    connect(world.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {-20.522, -2.322}, points={{
            -131.606,-17.678},{42.869,-17.678},{42.869,17.679},{45.869,17.679}}));
    connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-96.783, -45.148}, points={{-55.345,
            25.148},{17.444,25.148},{17.444,-25.149},{20.457,-25.149}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-96.783, -2.649}, points={{-55.345,
            -17.351},{17.444,-17.351},{17.444,17.352},{20.457,17.352}}));
    connect(fixedShape.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-138.686, -6.208}, points = {{34.075, 13.792}, {-10.317, 13.792}, {-10.317, -13.792}, {-13.442, -13.792}}));
    connect(fixedRotation5.frame_b, middleRight.frame_a) annotation(Line(visible = true, origin = {85.792, -61.394}, points={{-10.445,
            11.751},{-4.82,11.751},{-4.82,-8.606},{10.0425,-8.606},{10.0425,
            -6.291}}));
    connect(one.y, middleRight.anteriorInput[3]) annotation(Line(visible = true, origin = {26.137, 20.529}, points={{
            -182.754,72.832},{56.361,72.832},{56.361,-72.3314},{70.0308,
            -72.3314}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(one.y, middleRight.posteriorInput[4]) annotation(Line(visible = true, origin = {26.16, 15.791}, points={{
            -182.777,77.57},{56.338,77.57},{56.338,-76.0704},{70.1006,-76.0704}},                                                                                                                                                              color = {0, 0, 127}));
    connect(zero.y, middleRight.posteriorInput[3]) annotation(Line(visible = true, origin = {28.064, -10.89}, points={{
            -177.064,50.89},{54.434,50.89},{54.434,-50.3894},{68.1966,-50.3894}},                                                                                                                color = {0, 0, 127}));
    connect(zero.y, middleRight.posteriorInput[2]) annotation(Line(visible = true, origin = {28.064, -10.89}, points={{
            -177.064,50.89},{54.434,50.89},{54.434,-51.3894},{68.1966,-51.3894}},                                                                                                                color = {0, 0, 127}));
    connect(zero.y, middleRight.posteriorInput[1]) annotation(Line(visible = true, origin = {28.064, -10.89}, points={{
            -177.064,50.89},{54.434,50.89},{54.434,-52.3894},{68.1966,-52.3894}},                                                                                                                color = {0, 0, 127}));
    connect(one.y, middleRight.anteriorInput[4]) annotation(Line(visible = true, origin = {26.137, 20.529}, points={{
            -182.754,72.832},{56.361,72.832},{56.361,-71.3314},{70.0308,
            -71.3314}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(zero.y, middleRight.anteriorInput[2]) annotation(Line(visible = true, origin = {28.041, -6.151}, points={{
            -177.041,46.151},{54.457,46.151},{54.457,-46.6514},{68.1268,
            -46.6514}},                                                                                                                                                                             color = {0, 0, 127}));
    connect(zero.y, middleRight.anteriorInput[1]) annotation(Line(visible = true, origin = {28.041, -6.151}, points={{
            -177.041,46.151},{54.457,46.151},{54.457,-47.6514},{68.1268,
            -47.6514}},                                                                                                                                                                             color = {0, 0, 127}));
    connect(one.y, leftMostFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {26.16, 36.719}, points={{
            -182.777,56.642},{56.338,56.642},{56.338,-55.1414},{70.1006,
            -55.1414}},                                                                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, leftMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {28.064, 10.039}, points={{
            -177.064,29.961},{54.434,29.961},{54.434,-29.4614},{68.1966,
            -29.4614}},                                                                                                                                                                                 color = {0, 0, 127}));
    connect(zero.y, leftMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {28.064, 10.039}, points={{
            -177.064,29.961},{54.434,29.961},{54.434,-30.4614},{68.1966,
            -30.4614}},                                                                                                                                                                                 color = {0, 0, 127}));
    connect(zero.y, leftMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {28.064, 10.039}, points={{
            -177.064,29.961},{54.434,29.961},{54.434,-31.4614},{68.1966,
            -31.4614}},                                                                                                                                                                                 color = {0, 0, 127}));
    connect(zero.y, middleLeftFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {28.486, 30.039}, points={{
            -177.486,9.961},{54.575,9.961},{54.575,-9.4614},{68.3376,-9.4614}},                                                                                                                       color = {0, 0, 127}));
    connect(one.y, leftMostFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {26.137, 41.458}, points={{
            -182.754,51.903},{56.361,51.903},{56.361,-50.4034},{70.0308,
            -50.4034}},                                                                                                                                                                                          color = {0, 0, 127}));
    connect(one.y, middleLeftFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {26.582, 56.719}, points={{
            -183.199,36.642},{56.479,36.642},{56.479,-35.1414},{70.2416,
            -35.1414}},                                                                                                                                                                                  color = {0, 0, 127}));
    connect(zero.y, middleLeftFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {28.486, 30.039}, points={{
            -177.486,9.961},{54.575,9.961},{54.575,-10.4614},{68.3376,-10.4614}},                                                                                                                     color = {0, 0, 127}));
    connect(zero.y, middleLeftFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {28.486, 30.039}, points={{
            -177.486,9.961},{54.575,9.961},{54.575,-11.4614},{68.3376,-11.4614}},                                                                                                                     color = {0, 0, 127}));
    connect(one.y, middleLeftFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {26.559, 61.458}, points={{
            -183.176,31.903},{56.502,31.903},{56.502,-30.4034},{70.1718,
            -30.4034}},                                                                                                                                                                                 color = {0, 0, 127}));
    connect(fixedRotation5.frame_a, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {50.347, -49.643}, points = {{5, 0}, {-5, 0}}));
    connect(fixedRotation4.frame_a, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {50.347, -9.643000000000001}, points = {{5, 0}, {-5, 0}}));
    connect(fixedTranslation1.frame_b, fixedRotation3.frame_a) annotation(Line(visible = true, origin = {48.939, 15.357}, points = {{-3.592, 0}, {3.593, 0}}));
    connect(fixedRotation1.frame_b, fixedRotation2.frame_a) annotation(Line(visible = true, origin = {-80.623, -83.934}, points = {{24.297, 13.637}, {31.922, 13.637}, {31.922, 0.637}, {-30.385, 0.637}, {-30.385, -14.273}, {-27.373, -14.273}}));
    annotation(experiment(StopTime = 25.0, Interval = 0.1), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TrialMultipleFingerArray;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end OldTrials;
