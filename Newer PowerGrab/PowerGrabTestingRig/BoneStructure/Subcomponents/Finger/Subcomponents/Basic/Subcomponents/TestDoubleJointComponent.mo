within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents;
model TestDoubleJointComponent
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
  r_0(                                                                                                                                                                                      fixed =     false))
                                                                                                                                                                                                      "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
  r_0(                                                                                                               start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 2.5, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
  phi(                                                                                                           fixed =     false, start =     1.5))
                                                                                                                                                     annotation(Placement(visible = true, transformation(origin = {-10, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    revoluteRestrained(
    phi_0_restrained=phi_0_restrained,
    theta_1=-0.1,
    theta_2=1.6,
    useAxisFlange=true,
    stateSelect=true,
    c=10000,
    d=10000) annotation (Placement(visible=true, transformation(
        origin={3.053,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-35, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
  parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
  parameter Modelica.SIunits.Angle phi_0_restrained = 0;
  parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
  parameter Boolean closedLoop = true "Results in an open loop run when false";
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput LoadTorque "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -25}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-44.609, 109.799}, extent = {{15.391, -15.391}, {-15.391, 15.391}}, rotation = -270)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.804, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {104, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {102.392, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 42.881}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-80, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {157.74, -46.967}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {6.023, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -450)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    doubleJointRevolute(
    useAxisFlange=true,
    theta_1=-0.87,
    theta_2=0.87,
    phi_0_restrained=phi_0_doubleJoint,
    axisRotation={0,1,0},
    c=10000,
    d=10000) annotation (Placement(visible=true, transformation(
        origin={-25,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 1}) annotation(Placement(visible = true, transformation(origin = {-85, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 5}) annotation(Placement(visible = true, transformation(origin = {-65, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 5}) annotation(Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 5}) annotation(Placement(visible = true, transformation(origin = {35, -96.736}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle
    annotation (Placement(visible=true, transformation(
        origin={-43.039,75},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle1
    annotation (Placement(visible=true, transformation(
        origin={25,75},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle2
    annotation (Placement(visible=true, transformation(
        origin={-35,-85},
        extent={{-10,10},{10,-10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle3
    annotation (Placement(visible=true, transformation(
        origin={25,-70},
        extent={{-10,10},{10,-10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
    magnitudeMuscle(f_max=200) annotation (Placement(visible=true,
        transformation(
        origin={-110,-87.842},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
    magnitudeMuscle1(f_max=200) annotation (Placement(visible=true,
        transformation(
        origin={-115,80},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.467, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {28.108, 111.603}, extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.053, -88.256}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-23.775, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {1.225, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0},
  phi(                                                                                     fixed =     false, start =     1.5),useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {1.225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin = {-130, 175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-105, 126.351}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin = {-135, 136.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin = {-107.443, 153.649}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-32.821, -31.96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixedTranslation9.frame_a, revolute3.frame_b) annotation(Line(visible = true, origin = {8.117000000000001, 26}, points = {{-3.117, -61}, {-6.117, -61}, {-6.117, -48}, {6.121, -48}, {6.121, 109}, {3.108, 109}}));
  connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {41.053, 13.333}, points = {{71.00700000000001, 1.667}, {-35.503, 1.667}, {-35.503, -3.333}}));
  connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 24.294}, points = {{6.98, 18.587}, {6.98, -9.294}, {-13.96, -9.294}}, color = {0, 0, 127}));
  connect(lineMuscle.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {1.715, 117.3}, points = {{-34.754, -42.7}, {12.622, -42.7}, {12.622, 42.7}, {9.51, 42.7}}));
  connect(lineMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-67.95399999999999, 74.8}, points = {{14.915, -0.2}, {-3.934, -0.2}, {-3.934, 0.2}, {-7.046, 0.2}}));
  connect(lineMuscle1.frame_a, fixedTranslation6.frame_b) annotation(Line(visible = true, origin = {38.194, 72.3}, points = {{-3.194, 2.3}, {0.694, 2.3}, {0.694, -2.3}, {1.806, -2.3}}));
  connect(lineMuscle1.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {13.075, 107.533}, points = {{1.925, -32.933}, {-1.3, -32.933}, {-1.3, -19.533}, {1.263, -19.533}, {1.263, 52.467}, {-1.85, 52.467}}));
  connect(fixedTranslation10.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-7.607, -56.307}, points = {{-15.214, 24.347}, {7.607, 24.347}, {7.607, -48.693}}));
  connect(revolute1.frame_b, fixedTranslation10.frame_a) annotation(Line(visible = true, origin = {-21.406, 8.347}, points = {{21.406, 26.653}, {24.419, 26.653}, {24.419, 13.653}, {-24.415, 13.653}, {-24.415, -40.307}, {-21.415, -40.307}}));
  connect(revolute1.frame_a, doubleJointRevolute.frame_b) annotation(Line(visible = true, origin = {-17.913, 19}, points = {{-2.087, 16}, {-5.1, 16}, {-5.1, 3}, {5.913, 3}, {5.913, -19}, {0.461, -19}}));
  connect(lineMuscle3.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {34.112, -52.3}, points = {{0.888, -17.3}, {4.113, -17.3}, {4.113, 17.3}, {-9.112, 17.3}}));
  connect(lineMuscle2.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {14.056, -59.8}, points = {{-39.056, -24.8}, {14.056, -24.8}, {14.056, 24.8}, {10.944, 24.8}}));
  connect(lineMuscle3.frame_a, fixedTranslation7.frame_b) annotation(Line(visible = true, origin = {15.887, -83.16800000000001}, points = {{-0.887, 13.568}, {-4.113, 13.568}, {-4.113, -13.568}, {9.113, -13.568}}));
  connect(fixedTranslation7.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {45.25, -48.368}, points = {{-0.25, -48.368}, {2.75, -48.368}, {2.75, 48.368}, {-5.25, 48.368}}));
  connect(fixedTranslation6.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {56.5, 35}, points = {{3.5, 35}, {6.5, 35}, {6.5, -35}, {-16.5, -35}}, color = {95, 95, 95}));
  connect(IFingerBone.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-59.996, -31}, points = {{14.996, 31}, {18.008, 31}, {18.008, 18}, {-18.004, 18}, {-18.004, -49}, {-15.004, -49}}));
  connect(IFingerBone.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-69.996, 29.333}, points = {{24.996, -29.333}, {28.008, -29.333}, {28.008, -16.333}, {-28.004, -16.333}, {-28.004, 45.667}, {-25.004, 45.667}}));
  connect(position4.flange, revolute3.axis) annotation(Line(visible = true, origin = {-55.305, 138.83}, points = {{-39.695, -12.479}, {-36.683, -12.479}, {-36.683, 9.395}, {56.53, 9.395}, {56.53, 6.17}}));
  connect(relAngleSensor2.phi_rel, add3.u1) annotation(Line(visible = true, origin = {-126.481, 161.099}, points = {{-3.519, 2.901}, {-3.519, -1.45}, {7.038, -1.45}}, color = {0, 0, 127}));
  connect(add3.y, position4.phi_ref) annotation(Line(visible = true, origin = {-106.721, 140.212}, points = {{10.278, 13.437}, {13.278, 13.437}, {13.278, 0.424}, {-13.279, 0.424}, {-13.279, -13.861}, {-10.279, -13.861}}, color = {0, 0, 127}));
  connect(const4.y, add3.u2) annotation(Line(visible = true, origin = {-121.082, 141.883}, points = {{-2.918, -5.766}, {0.639, -5.766}, {0.639, 5.766}, {1.639, 5.766}}, color = {0, 0, 127}));
  connect(relAngleSensor.phi_rel, y) annotation(Line(visible = true, origin = {112.58, -31.645}, points = {{-22.58, 30.645}, {-22.58, -15.322}, {45.16, -15.322}}, color = {0, 0, 127}));
  connect(relAngleSensor2.flange_b, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-55.002, 120}, points = {{-64.998, 55}, {32.499, 55}, {32.499, -110}}));
  connect(relAngleSensor2.flange_a, doubleJointRevolute.flange_b) annotation(Line(visible = true, origin = {-96.102, 77.2}, points = {{-43.898, 97.8}, {-46.898, 97.8}, {-46.898, -64.2}, {68.84699999999999, -64.2}, {68.84699999999999, -67.2}}));
  connect(revolute3.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-34.438, 67.5}, points = {{25.663, 67.5}, {-7.55, 67.5}, {-7.55, -67.5}, {-10.562, -67.5}}));
  connect(damper2.flange_b, revolute3.axis) annotation(Line(visible = true, origin = {-3.775, 151.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
  connect(damper2.flange_a, revolute3.support) annotation(Line(visible = true, origin = {-19.839, 147.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
  connect(revolute3.frame_b, fixedTranslation8.frame_a) annotation(Line(visible = true, origin = {1.229, 147.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
  connect(posteriorDoubleJointMuscle, magnitudeMuscle.forcePValue) annotation(Line(visible = true, origin = {-128.296, -88.333}, points = {{-19.757, 0.077}, {5.071, 0.077}, {5.071, -0.077}, {9.615, -0.077}}, color = {0, 0, 127}));
  connect(anteriorDoubleJointMuscle, magnitudeMuscle1.forcePValue) annotation(Line(visible = true, origin = {-131.149, 79.71599999999999}, points = {{-17.318, 0.284}, {4.924, 0.284}, {4.924, -0.284}, {7.469, -0.284}}, color = {0, 0, 127}));
  connect(magnitudeMuscle1.fMagnitude, lineMuscle1.muscleMagnitude) annotation(Line(visible = true, origin = {-51.389, 83.883}, points = {{-52.926, -4.474}, {-49.926, -4.474}, {-49.926, 4.117}, {76.389, 4.117}, {76.389, 0.715}}, color = {0, 0, 127}));
  connect(magnitudeMuscle1.fMagnitude, lineMuscle.muscleMagnitude) annotation(Line(visible = true, origin = {-78.605, 83.883}, points = {{-25.71, -4.474}, {-22.71, -4.474}, {-22.71, 4.117}, {35.566, 4.117}, {35.566, 0.715}}, color = {0, 0, 127}));
  connect(magnitudeMuscle.fMagnitude, lineMuscle3.muscleMagnitude) annotation(Line(visible = true, origin = {-16.438, -85.488}, points = {{-82.877, -2.945}, {41.438, -2.945}, {41.438, 5.889}}, color = {0, 0, 127}));
  connect(magnitudeMuscle.fMagnitude, lineMuscle2.muscleMagnitude) annotation(Line(visible = true, origin = {-72.389, -93.49299999999999}, points = {{-26.926, 5.06}, {-23.926, 5.06}, {-23.926, -4.507}, {37.389, -4.507}, {37.389, -1.106}}, color = {0, 0, 127}));
  connect(fixedTranslation2.frame_b, lineMuscle2.frame_a) annotation(Line(visible = true, origin = {-49.112, -82.3}, points = {{-5.888, 2.3}, {0.887, 2.3}, {0.887, -2.3}, {4.112, -2.3}}));
  connect(doubleJointRevolute.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-10.997, 0}, points = {{-6.454, 0}, {6.454, 0}}));
  connect(IFingerBone.frame_b, doubleJointRevolute.frame_a) annotation(Line(visible = true, origin = {-38.798, 0}, points = {{-6.202, 0}, {6.202, 0}}));
  connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
  connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
  connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-1.813, 79.40000000000001}, points = {{-5.831, 25.6}, {-5.831, 6.6}, {4.925, 6.6}, {4.925, -19.4}, {1.813, -19.4}}, color = {95, 95, 95}));
  connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.486, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.486, 27.5}}));
  connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
  connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -22.5}, points = {{22.094, -2.5}, {-6.364, -2.5}, {-6.364, 2.5}, {-9.364000000000001, 2.5}}, color = {0, 0, 127}));
  connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {61.02, -0.8}, points = {{38.98, -19.2}, {35.98, -19.2}, {35.98, 13.8}, {-55.47, 13.8}, {-55.47, 10.8}}));
  connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {26.387, 42.29}, points = {{26.266, -7.29}, {23.254, -7.29}, {23.254, 5.935}, {-36.387, 5.935}, {-36.387, 2.71}}));
  connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
  connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
  connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
  connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {63.42, 15.2}, points = {{-57.87, -5.2}, {-57.87, 7.8}, {39.58, 7.8}, {39.58, -5.2}, {36.58, -5.2}}));
  connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {47.119, 11.2}, points = {{-46.321, -1.2}, {-46.321, 1.8}, {29.881, 1.8}, {29.881, -1.2}, {32.881, -1.2}}));
  connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-15, 51.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
  connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-31.064, 47.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
  connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-9.996, 47.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
  connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
  connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {15.301, 0}, points = {{4.699, 0}, {-4.699, 0}}));
  connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-90, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-30, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide")}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestDoubleJointComponent;
