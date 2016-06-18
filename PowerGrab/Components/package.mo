within PowerGrab;

package Components
  model BoneJointComponent
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true, r_0.fixed = false) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone, r_0.start = {0, 0.08, 0}, r_0.fixed = false, color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true, phi.fixed = false, phi.start = 1.5) annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = phi_0_restrained, theta_1 = 0, theta_2 = 1.6, useAxisFlange = true, stateSelect = stateSelect) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1}, phi.start = 1.5, useAxisFlange = true, phi.fixed = false) annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], -diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel.fixed = false) annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
    parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
    parameter Modelica.SIunits.Angle phi_0_restrained;
    Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -27.854}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {0, -50}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    parameter Boolean torD = true "True if direct torque on joint is desired";
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.01, 85.714}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.01, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 35}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-0, 30}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor1 annotation(Placement(visible = true, transformation(origin = {-77.78700000000001, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {-138.112, -33.337}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    parameter Boolean stateSelect = true;
    parameter Boolean closedLoop = true;
  equation
    connect(relAngleSensor1.phi_rel, y) annotation(Line(visible = true, origin = {-108.782, -36.135}, points = {{30.995, 0.135}, {30.995, -2.865}, {-16.33, -2.865}, {-16.33, 2.797}, {-29.33, 2.797}}, color = {0, 0, 127}));
    connect(relAngleSensor1.flange_b, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-42.474, -10.05}, points = {{-25.314, -14.95}, {-22.314, -14.95}, {-22.314, 10.967}, {34.971, 10.967}, {34.971, 7.967}}));
    connect(relAngleSensor1.flange_a, revoluteRestrained.flange_b) annotation(Line(visible = true, origin = {-58.775, -10.05}, points = {{-29.013, -14.95}, {-32.013, -14.95}, {-32.013, 10.967}, {46.519, 10.967}, {46.519, 7.967}}));
    connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
    connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
    connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 21.667}, points = {{6.98, 13.333}, {6.98, -6.667}, {-13.96, -6.667}}, color = {0, 0, 127}));
    connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {32.351, 9.305999999999999}, points = {{79.709, 5.694}, {-39.854, 5.694}, {-39.854, -11.389}}));
    connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-10.096, 61.667}, points = {{2.452, 43.333}, {2.452, -21.667}, {-4.904, -21.667}}, color = {95, 95, 95}));
    connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.485, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.485, 27.5}}));
    connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
    connect(frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {1.245, -74.027}, points = {{-1.245, -30.973}, {-1.245, -11.973}, {1.868, -11.973}, {1.868, 27.46}, {-1.245, 27.46}}, color = {95, 95, 95}));
    connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -23.927}, points = {{22.094, -3.927}, {-6.364, -3.927}, {-6.364, 3.927}, {-9.364000000000001, 3.927}}, color = {0, 0, 127}));
    connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
    connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
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
    connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
    connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
    connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
    connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
    connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
    connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end BoneJointComponent;

  model MagnitudeMuscle
    Modelica.Blocks.Interfaces.RealInput forcePValue "Percent value of total force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.807, -5.685}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    parameter Modelica.SIunits.Force f_max "Maximum value for anterior muscle force";
    Modelica.Blocks.Interfaces.RealOutput fMagnitude annotation(Placement(visible = true, transformation(origin = {31.75, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106.85, -5.908}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    fMagnitude = forcePValue * f_max;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MagnitudeMuscle;

  model LineMuscle
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LineMuscle(lineShapeColor = muscleColor, lineShapeWidth = 0.001, lineShapeHeight = 0.001) annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force forceMagnitude(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-80, -17.356}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput muscleMagnitude "Percent value of total anterior force" annotation(Placement(visible = true, transformation(origin = {-145, -17.63}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 95.98699999999999}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    parameter Integer muscleColor[3] = {155, 0, 0};
  equation
    connect(forceMagnitude.flange, LineMuscle.flange_a) annotation(Line(visible = true, origin = {-27.333, -4.904}, points = {{-42.667, -12.452}, {21.333, -12.452}, {21.333, 24.904}}, color = {0, 127, 0}));
    connect(muscleMagnitude, forceMagnitude.f) annotation(Line(visible = true, origin = {-106.75, -17.493}, points = {{-38.25, -0.137}, {11.75, -0.137}, {11.75, 0.137}, {14.75, 0.137}}, color = {0, 0, 127}));
    connect(LineMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 43.395}, points = {{-89.479, -13.395}, {23.493, -13.395}, {23.493, 13.395}, {42.493, 13.395}}));
    connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
    connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.418}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
    connect(frame_a, LineMuscle.frame_a) annotation(Line(visible = true, origin = {-44.256, 43.717}, points = {{-90.744, 13.717}, {28.244, 13.717}, {28.244, -13.717}, {34.256, -13.717}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {0, -2.139}, fillColor = {128, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end LineMuscle;

  model FingerMultipleRevoluteArray
    PowerGrab.Components.BoneJointComponent boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = true, closedLoop = mDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {5.256, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.BoneJointComponent boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, closedLoop = fDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin = {120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin = {120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin = {80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin = {40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin = {0, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin = {-40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin = {-80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin = {-120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin = {80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin = {40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin = {0, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin = {-40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin = {-80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin = {-120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaCDistal if cDistalRegularClosed annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaMDistal if mDistalClosed annotation(Placement(visible = true, transformation(origin = {25.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaFDistal if fDistalClosed annotation(Placement(visible = true, transformation(origin = {99.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-147.926, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    parameter Modelica.SIunits.Position r_IboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneFDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneFDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneFDistal;
    parameter Modelica.SIunits.Position r_IboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneMDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneMDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneMDistal;
    parameter Modelica.SIunits.Position r_IboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneCDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneCDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneCDistal;
    parameter Modelica.SIunits.Position baseAnterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position basePosterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Angle phi_0_doubleJoint;
    parameter Boolean fDistalClosed = true "If true, the far distal phalange will be in a constrained mode";
    parameter Boolean mDistalClosed = true "If true, the middle distal phalange will be in a constrained mode";
    parameter Boolean cDistalRegularClosed = true "If true, the close distal phalange's regular joint will be in a constrained mode";
    parameter Boolean cDistalSideClosed = true "If true, the close distal phalange's side joint will be in a constrained mode";
    Modelica.Blocks.Interfaces.RealInput loadForce if dirTorque annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
    PowerGrab.Components.FingerLoad fingerLoad(r2 = r_OboneMDistal[1], r3 = r_OboneCDistal[1], r1 = r_OboneFDistal[1] / 2) if dirTorque annotation(Placement(visible = true, transformation(origin = {-52.096, 71.024}, extent = {{-13.29, -13.29}, {13.29, 13.29}}, rotation = 0)));
    parameter Boolean dirTorque = true "True if direct torque upon joint is desired";
    Modelica.Blocks.Interfaces.RealInput sideTheta if cDistalSideClosed "secondary revolute joint - sideways swaying" annotation(Placement(visible = true, transformation(origin = {-20, -32.963}, extent = {{-12.963, -12.963}, {12.963, 12.963}}, rotation = 0), iconTransformation(origin = {-27.35, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    PowerGrab.Components.BoneDoubleJointComponent boneCDistal(phi_0_doubleJoint = phi_0_doubleJoint, closedDoubleJoint = cDistalSideClosed, closedRegularJoint = cDistalRegularClosed, torD = dirTorque, r_IFingerBone = r_IboneCDistal, r_shape_IFingerBone = r_shape_IboneCDistal, diameterIFingerBone = diameterIboneCDistal, r_OFingerBone = r_OboneCDistal, r_shape_OFingerBone = r_shape_OboneCDistal, diameterOFingerBone = diameterOboneCDistal, phi_0_regularJoint = phi_0_boneCDistal) annotation(Placement(visible = true, transformation(origin = {-86.959, -2.646}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin = {-123.296, 21.696}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin = {-123.175, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(sideTheta, boneCDistal.doubleJointControl) annotation(Line(visible = true, origin = {-53.457, -5.883}, points = {{33.457, -27.08}, {17.494, -27.08}, {17.494, 20.462}, {-34.223, 20.462}, {-34.223, 13.237}}, color = {0, 0, 127}));
    connect(sidePosterior, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.437, -1.291}, points = {{-25.738, -18.709}, {-4.288, -18.709}, {-4.288, 13.87}, {17.157, 13.87}, {17.157, 9.678000000000001}}, color = {0, 0, 127}));
    connect(sideAnterior, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.197, 17.302}, points = {{-26.098, 4.394}, {13.049, 4.394}, {13.049, -8.788}}, color = {0, 0, 127}));
    connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-56.449, -1.323}, points = {{51.705, 1.323}, {-15.717, 1.323}, {-15.717, -1.323}, {-20.271, -1.323}}));
    connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.186, -42.431}, points = {{-24.373, 30.785}, {12.186, 30.785}, {12.186, -61.569}}));
    connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.26, 38.903}, points = {{-24.519, -32.549}, {12.26, -32.549}, {12.26, 65.09699999999999}}));
    connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-58.959, 34.732}, points = {{18.616, 33.352}, {23.153, 33.352}, {23.153, -20.153}, {-32.461, -20.153}, {-32.461, -26.398}}, color = {0, 0, 127}));
    connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-84.545, 20.409}, points = {{20.827, 6.027}, {-10.414, 6.027}, {-10.414, -12.055}}, color = {0, 0, 127}));
    connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-91.992, -59.458}, points = {{-4.967, 47.812}, {-9.507999999999999, 47.812}, {-9.507999999999999, -25.542}, {11.992, -25.542}, {11.992, -44.542}}));
    connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-91.992, 57.342}, points = {{-4.967, -50.987}, {-9.507999999999999, -50.987}, {-9.507999999999999, 27.658}, {11.992, 27.658}, {11.992, 46.658}}, color = {95, 95, 95}));
    connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.477, -22.198}, points = {{-13.471, -19.552}, {2.977, -19.552}, {2.977, 19.552}, {7.518, 19.552}}));
    connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.46, 19.552}, points = {{-13.422, 22.198}, {2.96, 22.198}, {2.96, -22.198}, {7.501, -22.198}}));
    connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-111.971, -1.323}, points = {{-35.955, 1.323}, {10.471, 1.323}, {10.471, -1.323}, {15.012, -1.323}}));
    connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-10.011, 46.846}, points = {{-30.534, 25.923}, {15.267, 25.923}, {15.267, -51.846}}, color = {0, 0, 127}));
    connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {35.073, 36.21}, points = {{-75.69799999999999, 41.21}, {20.386, 41.21}, {20.386, -41.21}, {34.927, -41.21}}, color = {0, 0, 127}));
    connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-51.343, 28.568}, points = {{47.099, -34.568}, {-17.043, -34.568}, {-17.043, 34.568}, {-13.013, 34.568}}, color = {0, 0, 127}));
    connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-35.112, 32.959}, points = {{95.61199999999999, -38.959}, {-33.274, -38.959}, {-33.274, 38.959}, {-29.065, 38.959}}, color = {0, 0, 127}));
    connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points = {{-25.963, -7.71}, {7.251, -7.71}, {7.251, 7.71}, {11.46, 7.71}}, color = {0, 0, 127}));
    connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
    connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.628, 71}, points = {{2.628, -61}, {2.628, 14}, {-2.628, 14}, {-2.628, 33}}));
    connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.786, 40.381}, points = {{-16.429, -31.81}, {8.214, -31.81}, {8.214, 63.619}}));
    connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {75, 71}, points = {{-5, -61}, {-5, 14}, {5, 14}, {5, 33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {106.7, 40.381}, points = {{-26.599, -31.81}, {13.3, -31.81}, {13.3, 63.619}}));
    connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.628, -71}, points = {{2.628, 61}, {2.628, -14}, {-2.628, -14}, {-2.628, -33}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.752, -39.6}, points = {{-16.496, 32.2}, {8.247999999999999, 32.2}, {8.247999999999999, -64.40000000000001}}));
    connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {75, -71}, points = {{-5, 61}, {-5, -14}, {5, -14}, {5, -33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {106.667, -39.6}, points = {{-26.667, 32.2}, {13.333, 32.2}, {13.333, -64.40000000000001}}));
    connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {84.79600000000001, 14.736}, points = {{14.803, 11.736}, {-0.003, 11.736}, {-0.003, -11.736}, {-14.796, -11.736}}, color = {0, 0, 127}));
    connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {15.236, 13.27}, points = {{9.978999999999999, 12.784}, {9.978999999999999, -1.257}, {-9.978999999999999, -1.257}, {-9.978999999999999, -10.27}}, color = {0, 0, 127}));
    connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {46.569, 0.238}, points = {{-31.212, 0.238}, {8.890000000000001, 0.238}, {8.890000000000001, -0.238}, {13.431, -0.238}}));
    annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
  end FingerMultipleRevoluteArray;

  model BoneDoubleJointComponent
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true, r_0.fixed = false) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone, r_0.fixed = false, color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true, phi.fixed = false, phi.start = 1.5) annotation(Placement(visible = true, transformation(origin = {-10, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = phi_0_regularJoint, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true, stateSelect = true, c = 10000, d = 10000) annotation(Placement(visible = true, transformation(origin = {3.053, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    parameter Modelica.SIunits.Angle phi_0_regularJoint = 0;
    parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
    parameter Boolean closedDoubleJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
    parameter Boolean closedRegularJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
    Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -25}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-44.609, 109.799}, extent = {{15.391, -15.391}, {-15.391, 15.391}}, rotation = -270)));
    parameter Boolean torD = true "True if direct torque on joint is desired" annotation(Dialog(tab = "Advanced", group = "Parameters"));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.804, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {104, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {102.392, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position regularAngleControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {155, 42.881}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-80, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {157.74, -46.967}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {6.023, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -450)));
    PowerGrab.Components.RevoluteRestrained doubleJointRevolute(useAxisFlange = true, theta_1 = -0.87, theta_2 = 0.87, phi_0_restrained = phi_0_doubleJoint, axisRotation = {0, 1, 0}, c = 10000, d = 10000) annotation(Placement(visible = true, transformation(origin = {-25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.1}) annotation(Placement(visible = true, transformation(origin = {-85, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {-65, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {35, -96.736}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle annotation(Placement(visible = true, transformation(origin = {-43.039, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle1 annotation(Placement(visible = true, transformation(origin = {25, 75}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle2 annotation(Placement(visible = true, transformation(origin = {-35, -85}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle3 annotation(Placement(visible = true, transformation(origin = {25, -70}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    PowerGrab.Components.MagnitudeMuscle magnitudeMuscle(f_max = 200) annotation(Placement(visible = true, transformation(origin = {-110, -87.842}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.MagnitudeMuscle magnitudeMuscle1(f_max = 200) annotation(Placement(visible = true, transformation(origin = {-115, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.467, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {28.108, 111.603}, extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.053, -88.256}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
    Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-23.775, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {1.225, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0}, phi.fixed = false, phi.start = 1.5, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {1.225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin = {-130, 175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-105, 126.351}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin = {-135, 136.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin = {-107.443, 153.649}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-32.821, -31.96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput doubleJointControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-148.342, 45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-7.405, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
    Modelica.Mechanics.Rotational.Sources.Position doubleJointAngleControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-117.677, 8.558999999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(doubleJointAngleControl.flange, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-72.40300000000001, 10.624}, points = {{-35.275, -2.064}, {-32.262, -2.064}, {-32.262, 2.376}, {49.9, 2.376}, {49.9, -0.624}}));
    connect(doubleJointControl, doubleJointAngleControl.phi_ref) annotation(Line(visible = true, origin = {-142.121, 20.706}, points = {{-6.221, 24.294}, {-6.222, -12.147}, {12.444, -12.147}}, color = {0, 0, 127}));
    connect(fixedTranslation9.frame_a, revolute3.frame_b) annotation(Line(visible = true, origin = {8.117000000000001, 26}, points = {{-3.117, -61}, {-6.117, -61}, {-6.117, -48}, {6.121, -48}, {6.121, 109}, {3.108, 109}}));
    connect(regularAngleControl.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {41.053, 13.333}, points = {{71.00700000000001, 1.667}, {-35.503, 1.667}, {-35.503, -3.333}}));
    connect(thetaControl, regularAngleControl.phi_ref) annotation(Line(visible = true, origin = {148.02, 24.294}, points = {{6.98, 18.587}, {6.98, -9.294}, {-13.96, -9.294}}, color = {0, 0, 127}));
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
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-105, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-50, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide"), Text(visible = true, origin = {-5.816, 146.068}, extent = {{-34.184, -6.068}, {34.184, 6.068}}, textString = "doubleJointControl"), Line(visible = true, origin = {-7.817, 134.041}, points = {{0, -5.959}, {0, 5.959}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end BoneDoubleJointComponent;

  model ObjectLFConnection
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Distance threshold;
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
    Boolean contact;
    Modelica.Mechanics.MultiBody.Sensors.Distance deltaX annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.NonLinearSpringDamper nonLinearSpringDamper(s_unstretched = threshold) annotation(Placement(visible = true, transformation(origin = {0, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(shapeType = "sphere", length = 2 * threshold, width = 2 * threshold, height = 2 * threshold, r_shape = {-threshold, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(nonLinearSpringDamper.frame_b, frame_b) annotation(Line(visible = true, origin = {77.075, 27.5}, points = {{-67.075, 27.5}, {16.025, 27.5}, {16.025, -27.5}, {35.025, -27.5}}));
    connect(deltaX.frame_b, frame_b) annotation(Line(visible = true, origin = {77.075, 15}, points = {{-67.075, 15}, {16.025, 15}, {16.025, -15}, {35.025, -15}}));
    connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
    connect(nonLinearSpringDamper.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
    connect(deltaX.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
    contact = deltaX.distance < threshold;
    nonLinearSpringDamper.k = smooth(1, noEvent(if contact then k else 0));
    nonLinearSpringDamper.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, fillPattern = FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {3.683, 1.181}, extent = {{-13.683, -8.819000000000001}, {13.683, 8.819000000000001}}, textString = "LF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectLFConnection;

  model FinalFingerArray
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrab.Components.FingerMultipleRevoluteArray fingerArray(phi_0_boneFDistal = 0.1, phi_0_boneMDistal = 0.1, phi_0_boneCDistal = 0.1, fDistalClosed = fDistalClosed, mDistalClosed = mDistalClosed, cDistalRegularClosed = cDistalRegularClosed, cDistalSideClosed = cDistalSideClosed, dirTorque = false, phi_0_doubleJoint = 0, diameterIboneFDistal = 0.002, diameterIboneMDistal = 0.002, diameterIboneCDistal = 0.002, diameterOboneCDistal = 0.002, diameterOboneFDistal = 0.002, diameterOboneMDistal = 0.002, r_IboneFDistal = {fingerLength[4], 0, 0}, r_OboneFDistal = {fingerLength[3] / 2, 0, 0}, r_IboneMDistal = {fingerLength[3] / 2, 0, 0}, r_OboneMDistal = {fingerLength[2] / 2, 0, 0}, r_IboneCDistal = {fingerLength[2] / 2, 0, 0}, r_OboneCDistal = {fingerLength[1], 0, 0}) annotation(Placement(visible = true, transformation(origin = {17.255, 15}, extent = {{-47.745, -47.745}, {47.745, 47.745}}, rotation = 0)));
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Boolean fDistalClosed = true;
    parameter Boolean mDistalClosed = true;
    parameter Boolean cDistalRegularClosed = true;
    parameter Boolean cDistalSideClosed = true;
    parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
    Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    PowerGrab.Components.ObjectPrismConnection objectLFConnection(threshold = threshold, k = k, dampingCoefficient = dampingCoefficient, boneLength = 1) annotation(Placement(visible = true, transformation(origin = {-190, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.ObjectPrismConnection objectLFConnection1(k = k, dampingCoefficient = dampingCoefficient, threshold = threshold, boneLength = 1) annotation(Placement(visible = true, transformation(origin = {-190, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.ObjectPrismConnection objectLFConnection2(k = k, dampingCoefficient = dampingCoefficient, threshold = threshold, boneLength = 1) annotation(Placement(visible = true, transformation(origin = {-200, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    ObjectPrismConnection objectLFConnection3(boneLength = 1, dampingCoefficient = dampingCoefficient, k = k, threshold = threshold) annotation(Placement(visible = true, transformation(origin = {-125, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  equation
    connect(objectLFConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points = {{-16.258, -5.785}, {-16.258, 2.893}, {32.515, 2.893}}));
    connect(frame_a4, objectLFConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -47}, points = {{-98.101, -2}, {30.899, -2}, {30.899, 2}, {36.303, 2}}));
    connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.453}}));
    connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.089}}));
    connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
    connect(fixedTranslation.frame_b, objectLFConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points = {{8.726000000000001, 0}, {-8.726000000000001, 0}}));
    connect(fixedTranslation1.frame_b, objectLFConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points = {{40.024, 0}, {-40.024, 0}}));
    connect(fixedTranslation2.frame_b, objectLFConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points = {{62.863, 1.655}, {-19.137, 1.655}, {-19.137, -1.656}, {-24.588, -1.656}}));
    connect(frame_a1, objectLFConnection2.frame_a) annotation(Line(visible = true, origin = {-221.149, 89.5}, points = {{-29.851, -0.5}, {8.148999999999999, -0.5}, {8.148999999999999, 0.5}, {13.553, 0.5}}));
    connect(frame_a2, objectLFConnection1.frame_a) annotation(Line(visible = true, origin = {-214.399, 115.5}, points = {{-39.601, 0.5}, {11.399, 0.5}, {11.399, -0.5}, {16.803, -0.5}}));
    connect(frame_a3, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-214.649, 137.5}, points = {{-40.351, 2.5}, {11.649, 2.5}, {11.649, -2.5}, {17.053, -2.5}}));
    connect(jointControl[4], fingerArray.sideTheta) annotation(Line(visible = true, origin = {-6.857, 94.131}, points = {{20.039, 68.387}, {20.039, 44.937}, {-26.654, 44.937}, {-26.654, -79.131}, {13.23, -79.131}}, color = {0, 0, 127}));
    connect(jointControl[3], fingerArray.thetaCDistal) annotation(Line(visible = true, origin = {1.92, 90.976}, points = {{11.263, 71.541}, {11.263, -22.847}, {-11.263, -22.847}, {-11.263, -25.847}}, color = {0, 0, 127}));
    connect(jointControl[2], fingerArray.thetaMDistal) annotation(Line(visible = true, origin = {13.23, 91.119}, points = {{-0.047, 71.399}, {-0.047, -22.8}, {0.047, -22.8}, {0.047, -25.8}}, color = {0, 0, 127}));
    connect(jointControl[1], fingerArray.thetaFDistal) annotation(Line(visible = true, origin = {25.166, 91.074}, points = {{-11.983, 71.443}, {-11.983, -22.814}, {11.983, -22.814}, {11.983, -25.814}}, color = {0, 0, 127}));
    connect(posteriorInput[4], fingerArray.sidePosterior) annotation(Line(visible = true, origin = {143.669, -10.727}, points = {{106.331, 22.593}, {82.881, 22.593}, {82.881, -25.913}, {-136.046, -25.913}, {-136.046, 6.639}}, color = {0, 0, 127}));
    connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points = {{-122.39, -25.866}, {-98.94, -25.866}, {-98.94, 27.826}, {160.135, 27.826}, {160.135, -3.92}}, color = {0, 0, 127}));
    connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points = {{-27.13, -0.737}, {8.037000000000001, -0.737}, {8.037000000000001, 0.737}, {11.056, 0.737}}));
    connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points = {{42.121, 18.691}, {-12.121, 18.691}, {-12.121, -18.691}, {-17.879, -18.691}}, color = {0, 0, 127}));
    connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points = {{42.43, -20.97}, {-11.812, -20.97}, {-11.812, 20.97}, {-18.807, 20.97}}, color = {0, 0, 127}));
    connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points = {{42.121, -0.317}, {-12.121, -0.317}, {-12.121, 0.317}, {-17.879, 0.317}}, color = {0, 0, 127}));
    connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-200.089, -5.829}, points = {{-74.911, 18.777}, {23.072, 18.777}, {23.072, -18.777}, {28.767, -18.777}}, color = {0, 0, 127}));
    connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-200.089, 12.752}, points = {{-74.911, 0.196}, {23.072, 0.196}, {23.072, -0.196}, {28.767, -0.196}}, color = {0, 0, 127}));
    connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-199.787, 32.941}, points = {{-75.21299999999999, -19.993}, {22.769, -19.993}, {22.769, 19.993}, {29.675, 19.993}}, color = {0, 0, 127}));
    connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points = {{52.766, 34.156}, {52.766, -17.078}, {-105.532, -17.078}}));
    connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
    connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
    connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points = {{-19.179, 0.5629999999999999}, {-19.179, -2.437}, {19.179, -2.437}, {19.179, 4.31}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points = {{-27.158, -1.462}, {8.009, -1.462}, {8.009, 1.462}, {11.139, 1.462}}));
    connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points = {{-27.133, -1.051}, {8.034000000000001, -1.051}, {8.034000000000001, 1.051}, {11.065, 1.051}}, color = {95, 95, 95}));
    connect(debug7A.frame_b, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-34.375, -28.884}, points = {{-5.625, -27.979}, {0.865, -27.979}, {0.865, 27.979}, {3.895, 27.979}}));
    connect(debug7P.frame_a, fingerArray.frame_5P) annotation(Line(visible = true, origin = {72.73699999999999, -30.484}, points = {{17.263, -29.516}, {-4.737, -29.516}, {-4.737, 29.516}, {-7.789, 29.516}}));
    connect(debug6P.frame_a, fingerArray.frame_6P) annotation(Line(visible = true, origin = {70.25, 37.373}, points = {{9.75, 54.35}, {-2.25, 54.35}, {-2.25, -54.35}, {-5.25, -54.35}}));
    connect(debug6A.frame_b, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-47.721, 39.14}, points = {{-45.76, 55.86}, {14.21, 55.86}, {14.21, -55.86}, {17.34, -55.86}}));
    connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points = {{13.56, -0.636}, {-3.44, -0.636}, {-3.44, 0.636}, {-6.679, 0.636}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points = {{13.518, -0.046}, {-3.482, -0.046}, {-3.482, 0.046}, {-6.554, 0.046}}));
    connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points = {{13.433, 0.623}, {-3.478, 0.623}, {-3.478, -0.623}, {-6.478, -0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points = {{13.439, 1.549}, {-3.48, 1.549}, {-3.48, -1.549}, {-6.48, -1.549}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points = {{-27.154, -0.212}, {8.013, -0.212}, {8.013, 0.212}, {11.128, 0.212}}));
    connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points = {{-27.131, 0.251}, {8.037000000000001, 0.251}, {8.037000000000001, -0.251}, {11.057, -0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points = {{-16.522, -0.313}, {-13.522, -0.313}, {-13.522, 1.545}, {21.782, 1.545}, {21.782, -2.466}}));
    annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end FinalFingerArray;

  model ObjectPrismConnection
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Length boneLength;
    parameter Modelica.SIunits.Distance threshold;
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
    Boolean contact;
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {12.261, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance deltaX annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.NonLinearSpringDamper nonLinearSpringDamper(s_unstretched = threshold) annotation(Placement(visible = true, transformation(origin = {0, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s.fixed = false, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {61.951, -1.936}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {43.416, -15.468}, points = {{-21.155, -19.532}, {5.31, -19.532}, {5.31, 19.532}, {10.535, 19.532}}, color = {0, 127, 0}));
    connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {19.596, 3.043}, points = {{-56.364, -3.043}, {-53.364, -3.043}, {-53.364, 8.021000000000001}, {55.368, 8.021000000000001}, {55.368, -4.979}, {52.355, -4.979}}));
    connect(nonLinearSpringDamper.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 26.532}, points = {{-29.851, 28.468}, {8.875, 28.468}, {8.875, -28.468}, {12.1, -28.468}}));
    connect(deltaX.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 14.032}, points = {{-29.851, 15.968}, {8.875, 15.968}, {8.875, -15.968}, {12.1, -15.968}}));
    connect(prismatic.frame_a, frame_b) annotation(Line(visible = true, origin = {92.563, -0.968}, points = {{-20.612, -0.968}, {0.537, -0.968}, {0.537, 0.968}, {19.537, 0.968}}));
    connect(relativePosition.frame_a, frame_a) annotation(Line(visible = true, origin = {-84.782, 0}, points = {{28.014, 0}, {-28.014, 0}}));
    connect(deltaX.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
    connect(nonLinearSpringDamper.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
    connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
    contact = deltaX.distance < threshold;
    nonLinearSpringDamper.k = smooth(1, noEvent(if contact then k else 0));
    nonLinearSpringDamper.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
    position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, fillPattern = FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {0.286, -0}, extent = {{-29.714, -7.55}, {29.714, 7.55}}, textString = "PRISM")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectPrismConnection;

  model PrismDampingOC
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Length boneLength;
    parameter Modelica.SIunits.Distance threshold;
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
    parameter Modelica.SIunits.TranslationalSpringConstant bufferEffect = 500 "Repulsion caused by skin buffer approximation";
    Boolean contact;
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    parameter Modelica.SIunits.TranslationalDampingConstant bufferDamping(final min = 0) = 500 "Buffer zone's damping constant";
    Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {11.732, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance lMag(animation = false) annotation(Placement(visible = true, transformation(origin = {-0, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.OldComponents.NonLinearSpringDamper spring(s_unstretched = threshold, fMagDesired = true, animation = false) annotation(Placement(visible = true, transformation(origin = {-0, 57.91}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold, animation = true) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s.fixed = false, useAxisFlange = true, animation = false) annotation(Placement(visible = true, transformation(origin = {61.951, -1.936}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.RelativePosition lVec(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {5, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.SIunits.Length lHat[3];
    Modelica.SIunits.Velocity v2[3];
    Modelica.SIunits.Velocity v2Hat[3];
    Modelica.Mechanics.MultiBody.Forces.WorldForce fPrism(diameter = 0.005, animation = false) annotation(Placement(visible = true, transformation(origin = {-65, 38.1}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.WorldForce fSphere(diameter = 0.005, animation = false, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world) annotation(Placement(visible = true, transformation(origin = {-117.719, 38.229}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Real mu0;
    Real checkProjection;
    Real v2Mag;
    parameter Real mu;
    Modelica.Mechanics.MultiBody.Sensors.RelativeVelocity rV(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {-45, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Boolean fContact;
    Boolean bContact "True if within range of skin buffer";
    parameter Modelica.SIunits.Length bufferRange "Range the buffer approximating skin extends";
    parameter Modelica.SIunits.Length delta;
    parameter Modelica.SIunits.Velocity v0Mag = 5;
    parameter Modelica.SIunits.Velocity v2delta = 0.1;
    OldComponents.NonLinearSpringDamper skinBuffer(animation = false, fMagDesired = true, s_unstretched = threshold + bufferRange) annotation(Placement(visible = true, transformation(origin = {0, 26.587}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(skinBuffer.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 12.325}, points = {{-29.851, 14.261}, {8.875, 14.261}, {8.875, -14.261}, {12.1, -14.261}}));
    connect(skinBuffer.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 13.293}, points = {{67.59699999999999, 13.293}, {-16.199, 13.293}, {-16.199, -13.293}, {-35.199, -13.293}}));
    connect(rV.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {28.601, -28.468}, points = {{-63.601, -26.532}, {20.125, -26.532}, {20.125, 26.532}, {23.35, 26.532}}));
    connect(rV.frame_a, frame_a) annotation(Line(visible = true, origin = {-88.84699999999999, -27.5}, points = {{33.847, -27.5}, {-4.949, -27.5}, {-4.949, 27.5}, {-23.949, 27.5}}));
    connect(fSphere.frame_b, frame_a) annotation(Line(visible = true, origin = {-108.55, 22.892}, points = {{0.831, 15.338}, {3.831, 15.338}, {3.831, -3.892}, {-4.246, -3.892}, {-4.246, -22.892}}));
    connect(fPrism.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {23.601, 18.082}, points = {{-78.601, 20.018}, {25.125, 20.018}, {25.125, -20.018}, {28.35, -20.018}}));
    connect(lVec.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {41.101, -20.968}, points = {{-26.101, -19.032}, {7.625, -19.032}, {7.625, 19.032}, {10.85, 19.032}}));
    connect(lVec.frame_a, frame_a) annotation(Line(visible = true, origin = {-76.34699999999999, -20}, points = {{71.34699999999999, -20}, {-17.449, -20}, {-17.449, 20}, {-36.449, 20}}));
    connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {43.284, -30.468}, points = {{-21.552, -34.532}, {5.442, -34.532}, {5.442, 34.532}, {10.667, 34.532}}, color = {0, 127, 0}));
    connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {46.277, -13.468}, points = {{-83.04600000000001, -11.532}, {28.686, -11.532}, {28.686, 11.532}, {25.673, 11.532}}));
    connect(spring.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 27.987}, points = {{-29.851, 29.923}, {8.875, 29.923}, {8.875, -29.923}, {12.1, -29.923}}));
    connect(lMag.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 1.532}, points = {{-29.851, 3.468}, {8.875, 3.468}, {8.875, -3.468}, {12.1, -3.468}}));
    connect(prismatic.frame_a, frame_b) annotation(Line(visible = true, origin = {92.563, -0.968}, points = {{-20.612, -0.968}, {0.537, -0.968}, {0.537, 0.968}, {19.537, 0.968}}));
    connect(relativePosition.frame_a, frame_a) annotation(Line(visible = true, origin = {-89.289, -12.5}, points = {{32.521, -12.5}, {-4.507, -12.5}, {-4.507, 12.5}, {-23.507, 12.5}}));
    connect(lMag.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 2.5}, points = {{67.59699999999999, 2.5}, {-16.199, 2.5}, {-16.199, -2.5}, {-35.199, -2.5}}));
    connect(spring.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 28.955}, points = {{67.59699999999999, 28.955}, {-16.199, 28.955}, {-16.199, -28.955}, {-35.199, -28.955}}));
    connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
    contact = lMag.distance <= threshold;
    fContact = abs(lMag.distance - threshold) <= delta;
    bContact = lMag.distance - threshold <= bufferRange;
    spring.k = smooth(1, noEvent(if contact then k else 0));
    skinBuffer.k = smooth(1, noEvent(if bContact then bufferEffect else 0));
    spring.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
    skinBuffer.d = smooth(0, noEvent(if bContact then bufferDamping else 0));
    position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
    lHat = lVec.r_rel / lMag.distance;
    v2 = rV.v_rel - rV.v_rel * lHat * lHat;
    v2Hat = v2 / (v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2 + 0.1);
    v2Mag = sqrt(v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2 + 0.1);
    mu0 = smooth(0, noEvent(if fContact then mu else 0));
    checkProjection = v2Hat * lHat;
    fPrism.force = -mu0 * min(skinBuffer.y, 50) * v2Hat * min(smooth(0, noEvent(if v2Mag > v2delta then v2Mag - v2delta else 0)), v0Mag - v2delta);
    fSphere.force = -fPrism.force;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, fillPattern = FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {-0.339, 0}, extent = {{-66.146, -7.55}, {66.146, 7.55}}, textString = "PRISM DAMP")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PrismDampingOC;

  model FingerContactArray
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrab.Components.FingerMultipleRevoluteArray fingerArray(phi_0_boneFDistal = 0.1, phi_0_boneMDistal = 0.1, phi_0_boneCDistal = 0.1, fDistalClosed = fDistalClosed, mDistalClosed = mDistalClosed, cDistalRegularClosed = cDistalRegularClosed, cDistalSideClosed = cDistalSideClosed, dirTorque = false, phi_0_doubleJoint = 0, diameterIboneFDistal = 0.2, diameterIboneMDistal = 0.2, diameterIboneCDistal = 0.2, diameterOboneCDistal = 0.2, diameterOboneFDistal = 0.2, diameterOboneMDistal = 0.2, r_IboneFDistal = {fingerLength[4], 0, 0}, r_OboneFDistal = {fingerLength[3] / 2, 0, 0}, r_IboneMDistal = {fingerLength[3] / 2, 0, 0}, r_OboneMDistal = {fingerLength[2] / 2, 0, 0}, r_IboneCDistal = {fingerLength[2] / 2, 0, 0}, r_OboneCDistal = {fingerLength[1], 0, 0}) annotation(Placement(visible = true, transformation(origin = {17.255, 15}, extent = {{-47.745, -47.745}, {47.745, 47.745}}, rotation = 0)));
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Boolean fDistalClosed = true;
    parameter Boolean mDistalClosed = true;
    parameter Boolean cDistalRegularClosed = true;
    parameter Boolean cDistalSideClosed = true;
    parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
    Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection(threshold = threshold, k = k, dampingCoefficient = dampingCoefficient, boneLength = 1, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-190, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection1(k = k, dampingCoefficient = dampingCoefficient, threshold = threshold, boneLength = 1, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-190, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection2(k = k, dampingCoefficient = dampingCoefficient, threshold = threshold, boneLength = 1, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-200, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection3(boneLength = 1, dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-125, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Real mu;
    parameter Modelica.SIunits.Length delta;
  equation
    connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points = {{-16.258, -5.785}, {-16.258, 2.893}, {32.515, 2.893}}));
    connect(frame_a4, objectPrismDampConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -47}, points = {{-98.101, -2}, {30.899, -2}, {30.899, 2}, {36.303, 2}}));
    connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.453}}));
    connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.089}}));
    connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
    connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points = {{8.726000000000001, 0}, {-8.726000000000001, 0}}));
    connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points = {{40.024, 0}, {-40.024, 0}}));
    connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points = {{62.863, 1.655}, {-19.137, 1.655}, {-19.137, -1.656}, {-24.588, -1.656}}));
    connect(frame_a1, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-221.149, 89.5}, points = {{-29.851, -0.5}, {8.148999999999999, -0.5}, {8.148999999999999, 0.5}, {13.553, 0.5}}));
    connect(frame_a2, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-214.399, 115.5}, points = {{-39.601, 0.5}, {11.399, 0.5}, {11.399, -0.5}, {16.803, -0.5}}));
    connect(frame_a3, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-214.649, 137.5}, points = {{-40.351, 2.5}, {11.649, 2.5}, {11.649, -2.5}, {17.053, -2.5}}));
    connect(jointControl[4], fingerArray.sideTheta) annotation(Line(visible = true, origin = {-6.857, 94.131}, points = {{20.039, 68.387}, {20.039, 44.937}, {-26.654, 44.937}, {-26.654, -79.131}, {13.23, -79.131}}, color = {0, 0, 127}));
    connect(jointControl[3], fingerArray.thetaCDistal) annotation(Line(visible = true, origin = {1.92, 90.976}, points = {{11.263, 71.541}, {11.263, -22.847}, {-11.263, -22.847}, {-11.263, -25.847}}, color = {0, 0, 127}));
    connect(jointControl[2], fingerArray.thetaMDistal) annotation(Line(visible = true, origin = {13.23, 91.119}, points = {{-0.047, 71.399}, {-0.047, -22.8}, {0.047, -22.8}, {0.047, -25.8}}, color = {0, 0, 127}));
    connect(jointControl[1], fingerArray.thetaFDistal) annotation(Line(visible = true, origin = {25.166, 91.074}, points = {{-11.983, 71.443}, {-11.983, -22.814}, {11.983, -22.814}, {11.983, -25.814}}, color = {0, 0, 127}));
    connect(posteriorInput[4], fingerArray.sidePosterior) annotation(Line(visible = true, origin = {143.669, -10.727}, points = {{106.331, 22.593}, {82.881, 22.593}, {82.881, -25.913}, {-136.046, -25.913}, {-136.046, 6.639}}, color = {0, 0, 127}));
    connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points = {{-122.39, -25.866}, {-98.94, -25.866}, {-98.94, 27.826}, {160.135, 27.826}, {160.135, -3.92}}, color = {0, 0, 127}));
    connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points = {{-27.13, -0.737}, {8.037000000000001, -0.737}, {8.037000000000001, 0.737}, {11.056, 0.737}}));
    connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points = {{42.121, 18.691}, {-12.121, 18.691}, {-12.121, -18.691}, {-17.879, -18.691}}, color = {0, 0, 127}));
    connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points = {{42.43, -20.97}, {-11.812, -20.97}, {-11.812, 20.97}, {-18.807, 20.97}}, color = {0, 0, 127}));
    connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points = {{42.121, -0.317}, {-12.121, -0.317}, {-12.121, 0.317}, {-17.879, 0.317}}, color = {0, 0, 127}));
    connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-200.089, -5.829}, points = {{-74.911, 18.777}, {23.072, 18.777}, {23.072, -18.777}, {28.767, -18.777}}, color = {0, 0, 127}));
    connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-200.089, 12.752}, points = {{-74.911, 0.196}, {23.072, 0.196}, {23.072, -0.196}, {28.767, -0.196}}, color = {0, 0, 127}));
    connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-199.787, 32.941}, points = {{-75.21299999999999, -19.993}, {22.769, -19.993}, {22.769, 19.993}, {29.675, 19.993}}, color = {0, 0, 127}));
    connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points = {{52.766, 34.156}, {52.766, -17.078}, {-105.532, -17.078}}));
    connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
    connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
    connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points = {{-19.179, 0.5629999999999999}, {-19.179, -2.437}, {19.179, -2.437}, {19.179, 4.31}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points = {{-27.158, -1.462}, {8.009, -1.462}, {8.009, 1.462}, {11.139, 1.462}}));
    connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points = {{-27.133, -1.051}, {8.034000000000001, -1.051}, {8.034000000000001, 1.051}, {11.065, 1.051}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points = {{13.56, -0.636}, {-3.44, -0.636}, {-3.44, 0.636}, {-6.679, 0.636}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points = {{13.518, -0.046}, {-3.482, -0.046}, {-3.482, 0.046}, {-6.554, 0.046}}));
    connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points = {{13.433, 0.623}, {-3.478, 0.623}, {-3.478, -0.623}, {-6.478, -0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points = {{13.439, 1.549}, {-3.48, 1.549}, {-3.48, -1.549}, {-6.48, -1.549}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points = {{-27.154, -0.212}, {8.013, -0.212}, {8.013, 0.212}, {11.128, 0.212}}));
    connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points = {{-27.131, 0.251}, {8.037000000000001, 0.251}, {8.037000000000001, -0.251}, {11.057, -0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points = {{-16.522, -0.313}, {-13.522, -0.313}, {-13.522, 1.545}, {21.782, 1.545}, {21.782, -2.466}}));
    annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end FingerContactArray;

  model BodyCylinder "Rigid body with cylinder shape. Mass and animation properties are computed from cylinder data and density (12 potential states)"
    import NonSI = Modelica.SIunits.Conversions.NonSIunits;
    import Modelica.Mechanics.MultiBody.Types;
    import Modelica.Math.Vectors.normalizeWithAssert;
    import Modelica.SIunits.Conversions.to_unit1;
    import Modelica.Mechanics.MultiBody.Frames;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
    parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder between frame_a and frame_b)";
    parameter Real multAnimate "scaling factor for animation";
    parameter Modelica.SIunits.Position r[3](start = {0.1, 0, 0}) "Vector from frame_a to frame_b, resolved in frame_a";
    parameter Modelica.SIunits.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to cylinder origin, resolved in frame_a";
    parameter Modelica.Mechanics.MultiBody.Types.Axis lengthDirection = to_unit1(r - r_shape) "Vector in length direction of cylinder, resolved in frame_a" annotation(Evaluate = true);
    parameter Modelica.SIunits.Length length = Modelica.Math.Vectors.length(r - r_shape) "Length of cylinder";
    parameter Modelica.SIunits.Distance diameter = length / world.defaultWidthFraction "Diameter of cylinder";
    parameter Modelica.SIunits.Distance innerDiameter = 0 "Inner diameter of cylinder (0 <= innerDiameter <= Diameter)";
    parameter Modelica.SIunits.Density density = 7700 "Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800)";
    input Modelica.Mechanics.MultiBody.Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of cylinder" annotation(Dialog(colorSelector = true, enable = animation));
    input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(enable = animation));
    Modelica.SIunits.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
    parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
    parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
    parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Dialog(tab = "Advanced"));
    parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Dialog(tab = "Advanced"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
    constant Real pi = Modelica.Constants.pi;
    final parameter Modelica.SIunits.Distance radius = diameter / 2 "Radius of cylinder";
    final parameter Modelica.SIunits.Distance innerRadius = innerDiameter / 2 "Inner-Radius of cylinder";
    final parameter Modelica.SIunits.Mass mo(min = 0) = density * BodyCylinder.pi * length * radius * radius "Mass of cylinder without hole";
    final parameter Modelica.SIunits.Mass mi(min = 0) = density * BodyCylinder.pi * length * innerRadius * innerRadius "Mass of hole of cylinder";
    final parameter Modelica.SIunits.Inertia I22 = (mo * (length * length + 3 * radius * radius) - mi * (length * length + 3 * innerRadius * innerRadius)) / 12 "Inertia with respect to axis through center of mass, perpendicular to cylinder axis";
    final parameter Modelica.SIunits.Mass m(min = 0) = mo - mi "Mass of cylinder";
    final parameter Modelica.Mechanics.MultiBody.Frames.Orientation R = Frames.from_nxy(r, {0, 1, 0}) "Orientation object from frame_a to frame spanned by cylinder axis and axis perpendicular to cylinder axis";
    final parameter Modelica.SIunits.Position r_CM[3] = r_shape + normalizeWithAssert(lengthDirection) * length / 2 "Position vector from frame_a to center of mass, resolved in frame_a";
    final parameter Modelica.SIunits.Inertia I[3, 3] = Frames.resolveDyade1(R, diagonal({(mo * radius * radius - mi * innerRadius * innerRadius) / 2, I22, I22})) "Inertia tensor of cylinder with respect to center of mass, resolved in frame parallel to frame_a";
    PowerGrab.Components.Body body(r_CM = r_CM, m = m, I_11 = I[1, 1], I_22 = I[2, 2], I_33 = I[3, 3], I_21 = I[2, 1], I_31 = I[3, 1], I_32 = I[3, 2], animation = true, sequence_start = sequence_start, angles_fixed = angles_fixed, angles_start = angles_start, w_0_fixed = w_0_fixed, w_0_start = w_0_start, z_0_fixed = z_0_fixed, z_0_start = z_0_start, useQuaternions = useQuaternions, sequence_angleStates = sequence_angleStates, enforceStates = false, multAnimate = multAnimate) annotation(Placement(transformation(extent = {{-30, -80}, {10, -40}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation frameTranslation(r = r, animation = animation, shapeType = "pipecylinder", r_shape = r_shape, lengthDirection = lengthDirection, length = length, width = diameter, height = diameter, extra = innerDiameter / diameter, color = color, specularCoefficient = specularCoefficient, widthDirection = {0, 1, 0}) annotation(Placement(transformation(extent = {{-30, -20}, {10, 20}}, rotation = 0)));
  protected
    outer Modelica.Mechanics.MultiBody.World world;
  equation
    r_0 = frame_a.r_0;
    v_0 = der(r_0);
    a_0 = der(v_0);
    assert(innerDiameter < diameter, "parameter innerDiameter is greater than parameter diameter");
    connect(frameTranslation.frame_a, frame_a) annotation(Line(points = {{-30, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5));
    connect(frameTranslation.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5));
    connect(frame_a, body.frame_a) annotation(Line(points = {{-100, 0}, {-70, 0}, {-70, -60}, {-30, -60}}, color = {95, 95, 95}, thickness = 0.5));
    annotation(Documentation(info = "<HTML>
       <p>
       <b>Rigid body</b> with <b>cylinder</b> shape.
       The mass properties of the body (mass, center of mass,
       inertia tensor) are computed
       from the cylinder data. Optionally, the cylinder may be hollow.
       The cylinder shape is by default used in the animation.
       The two connector frames <b>frame_a</b> and <b>frame_b</b>
       are always parallel to each other. Example of component
       animation (note, that
       the animation may be switched off via parameter animation = <b>false</b>):
       </p>
       
       <p>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyCylinder.png\" ALT=\"Parts.BodyCylinder\">
       </p>
       
       <p>
       A BodyCylinder component has potential states. For details of these
       states and of the \"Advanced\" menu parameters, see model
       <a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Body\">MultiBody.Parts.Body</a>.</html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, 90}, {150, 50}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{150, -80}, {-150, -50}}, lineColor = {0, 0, 0}, textString = "%=r"), Rectangle(extent = {{-100, 40}, {100, -40}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{-87, 13}, {-51, -12}}, lineColor = {0, 0, 0}, textString = "a"), Text(extent = {{51, 12}, {87, -13}}, lineColor = {0, 0, 0}, textString = "b")}));
  end BodyCylinder;

  model Body "Rigid body with mass, inertia tensor and one frame connector (12 potential states)"
    import Modelica.Mechanics.MultiBody.Types;
    import Modelica.Mechanics.MultiBody.Frames;
    import Modelica.SIunits.Conversions.to_unit1;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed at body" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
    parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder and sphere)";
    parameter Real multAnimate "scaling factor for animation";
    parameter Modelica.SIunits.Position r_CM[3](start = {0, 0, 0}) "Vector from frame_a to center of mass, resolved in frame_a";
    parameter Modelica.SIunits.Mass m(min = 0, start = 1) "Mass of rigid body";
    parameter Modelica.SIunits.Inertia I_11(min = 0) = 0.001 "(1,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_22(min = 0) = 0.001 "(2,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_33(min = 0) = 0.001 "(3,3) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_21(min = -Modelica.Constants.inf) = 0 "(2,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_31(min = -Modelica.Constants.inf) = 0 "(3,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_32(min = -Modelica.Constants.inf) = 0 "(3,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    Modelica.SIunits.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
    parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
    parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.Diameter sphereDiameter = 0.001 "Diameter of sphere" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.Mechanics.MultiBody.Types.Color sphereColor = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
    parameter Modelica.SIunits.Diameter cylinderDiameter = sphereDiameter / Modelica.Mechanics.MultiBody.Types.Defaults.BodyCylinderDiameterFraction "Diameter of cylinder" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.Mechanics.MultiBody.Types.Color cylinderColor = sphereColor "Color of cylinder" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Evaluate = true, Dialog(tab = "Advanced"));
    parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
    final parameter Modelica.SIunits.Inertia I[3, 3] = [I_11, I_21, I_31; I_21, I_22, I_32; I_31, I_32, I_33] "inertia tensor";
    final parameter Modelica.Mechanics.MultiBody.Frames.Orientation R_start = Modelica.Mechanics.MultiBody.Frames.axesRotations(sequence_start, angles_start, zeros(3)) "Orientation object from world frame to frame_a at initial time";
    final parameter Modelica.SIunits.AngularAcceleration z_a_start[3] = Frames.resolve2(R_start, z_0_start) "Initial values of angular acceleration z_a = der(w_a), i.e., time derivative of angular velocity resolved in frame_a";
    Modelica.SIunits.AngularVelocity w_a[3](start = Frames.resolve2(R_start, w_0_start), fixed = fill(w_0_fixed, 3), each stateSelect = if enforceStates then if useQuaternions then StateSelect.always else StateSelect.never else StateSelect.avoid) "Absolute angular velocity of frame_a resolved in frame_a";
    Modelica.SIunits.AngularAcceleration z_a[3](start = Frames.resolve2(R_start, z_0_start), fixed = fill(z_0_fixed, 3)) "Absolute angular acceleration of frame_a resolved in frame_a";
    Modelica.SIunits.Acceleration g_0[3] "Gravity acceleration resolved in world frame";
  protected
    outer Modelica.Mechanics.MultiBody.World world;
    // Declarations for quaternions (dummies, if quaternions are not used)
    parameter Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation Q_start = Frames.to_Q(R_start) "Quaternion orientation object from world frame to frame_a at initial time";
    Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation Q(start = Q_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.prefer else StateSelect.never else StateSelect.avoid) "Quaternion orientation object from world frame to frame_a (dummy value, if quaternions are not used as states)";
    // Declaration for 3 angles
    parameter Modelica.SIunits.Angle phi_start[3] = if sequence_start[1] == sequence_angleStates[1] and sequence_start[2] == sequence_angleStates[2] and sequence_start[3] == sequence_angleStates[3] then angles_start else Frames.axesRotationsAngles(R_start, sequence_angleStates) "Potential angle states at initial time";
    Modelica.SIunits.Angle phi[3](start = phi_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "Dummy or 3 angles to rotate world frame into frame_a of body";
    Modelica.SIunits.AngularVelocity phi_d[3](each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "= der(phi)";
    Modelica.SIunits.AngularAcceleration phi_dd[3] "= der(phi_d)";
    // Declarations for animation
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinder(shapeType = "cylinder", color = cylinderColor, specularCoefficient = specularCoefficient, length = 100 * (if Modelica.Math.Vectors.length(r_CM) > sphereDiameter / 2 then Modelica.Math.Vectors.length(r_CM) - (if cylinderDiameter > 1.1 * sphereDiameter then sphereDiameter / 2 else 0) else 0), width = 100 * cylinderDiameter, height = 100 * cylinderDiameter, lengthDirection = to_unit1(r_CM), widthDirection = {0, 1, 0}, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape sphere(shapeType = "sphere", color = sphereColor, specularCoefficient = specularCoefficient, length = sphereDiameter, width = sphereDiameter, height = sphereDiameter, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, r_shape = r_CM - {1, 0, 0} * sphereDiameter / 2, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation and sphereDiameter > 0;
  initial equation
    if angles_fixed then
      if not Connections.isRoot(frame_a.R) then
        zeros(3) = Frames.Orientation.equalityConstraint(frame_a.R, R_start);
      elseif useQuaternions then
        zeros(3) = Frames.Quaternions.Orientation.equalityConstraint(Q, Q_start);
      else
        phi = phi_start;
      end if;
    end if;
    // Initialize positional variables
    // frame_a.R is computed somewhere else
    // frame_a.R is computed from quaternions Q
    // frame_a.R is computed from the 3 angles 'phi'
  equation
    if enforceStates then
      Connections.root(frame_a.R);
    else
      Connections.potentialRoot(frame_a.R);
    end if;
    r_0 = frame_a.r_0;
    if not Connections.isRoot(frame_a.R) then
      Q = {0, 0, 0, 1};
      phi = zeros(3);
      phi_d = zeros(3);
      phi_dd = zeros(3);
    elseif useQuaternions then
      frame_a.R = Frames.from_Q(Q, Frames.Quaternions.angularVelocity2(Q, der(Q)));
      {0} = Frames.Quaternions.orientationConstraint(Q);
      phi = zeros(3);
      phi_d = zeros(3);
      phi_dd = zeros(3);
    else
      phi_d = der(phi);
      phi_dd = der(phi_d);
      frame_a.R = Frames.axesRotations(sequence_angleStates, phi, phi_d);
      Q = {0, 0, 0, 1};
    end if;
    // Body does not have states
    // Dummies
    // Use Quaternions as states (with dynamic state selection)
    // Dummies
    // Use Cardan angles as states
    // Dummies
    // gravity acceleration at center of mass resolved in world frame
    g_0 = world.gravityAcceleration(frame_a.r_0 + Frames.resolve1(frame_a.R, r_CM));
    // translational kinematic differential equations
    v_0 = der(frame_a.r_0);
    a_0 = der(v_0);
    // rotational kinematic differential equations
    w_a = Frames.angularVelocity2(frame_a.R);
    z_a = der(w_a);
    /* Newton/Euler equations with respect to center of mass
                                    a_CM = a_a + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM));
                                    f_CM = m*(a_CM - g_a);
                                    t_CM = I*z_a + cross(w_a, I*w_a);
                               frame_a.f = f_CM
                               frame_a.t = t_CM + cross(r_CM, f_CM);
                            Inserting the first three equations in the last two results in:
                          */
    frame_a.f = m * (Frames.resolve2(frame_a.R, a_0 - g_0) + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM)));
    frame_a.t = I * z_a + cross(w_a, I * w_a) + cross(r_CM, frame_a.f);
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 30}, {-3, -31}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{150, -100}, {-150, -70}}, lineColor = {0, 0, 0}, textString = "m=%m"), Text(extent = {{-150, 110}, {150, 70}}, textString = "%name", lineColor = {0, 0, 255}), Ellipse(extent = {{-20, 60}, {100, -60}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.Sphere, fillColor = {0, 127, 255})}), Documentation(info = "<HTML>
       <p>
       <b>Rigid body</b> with mass and inertia tensor.
       All parameter vectors have to be resolved in frame_a.
       The <b>inertia tensor</b> has to be defined with respect to a
       coordinate system that is parallel to frame_a with the
       origin at the center of mass of the body.
       </p>
       <p>
       By default, this component is visualized by a <b>cylinder</b> located
       between frame_a and the center of mass and by a <b>sphere</b> that has
       its center at the center of mass. If the cylinder length is smaller as
       the radius of the sphere, e.g., since frame_a is located at the
       center of mass, the cylinder is not displayed. Note, that
       the animation may be switched off via parameter animation = <b>false</b>.
       </p>
       <p>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Body.png\" ALT=\"Parts.Body\">
       </p>
       
       <p>
       <b>States of Body Components</b>
       </p>
       <p>
       Every body has potential states. If possible a tool will select
       the states of joints and not the states of bodies because this is
       usually the most efficient choice. In this case the position, orientation,
       velocity and angular velocity of frame_a of the body will be computed
       by the component that is connected to frame_a. However, if a body is moving
       freely in space, variables of the body have to be used as states. The potential
       states of the body are:
       </p>
       <ul>
       <li> The <b>position vector</b> frame_a.r_0 from the origin of the
            world frame to the origin of frame_a of the body, resolved in
            the world frame and the <b>absolute velocity</b> v_0 of the origin of
            frame_a, resolved in the world frame (= der(frame_a.r_0)).
       </li>
       <li> If parameter <b>useQuaternions</b> in the \"Advanced\" menu
            is <b>true</b> (this is the default), then <b>4 quaternions</b>
            are potential states. Additionally, the coordinates of the
            absolute angular velocity vector of the
            body are 3 potential states.<br>
            If <b>useQuaternions</b> in the \"Advanced\" menu
            is <b>false</b>, then <b>3 angles</b> and the derivatives of
            these angles are potential states. The orientation of frame_a
            is computed by rotating the world frame along the axes defined
            in parameter vector \"sequence_angleStates\" (default = {1,2,3}, i.e.,
            the Cardan angle sequence) around the angles used as potential states.
            For example, the default is to rotate the x-axis of the world frame
            around angles[1], the new y-axis around angles[2] and the new z-axis
            around angles[3], arriving at frame_a.
        </li>
       </ul>
       <p>
       The quaternions have the slight disadvantage that there is a
       non-linear constraint equation between the 4 quaternions.
       Therefore, at least one non-linear equation has to be solved
       during simulation. A tool might, however, analytically solve this
       simple constraint equation. Using the 3 angles as states has the
       disadvantage that there is a singular configuration in which a
       division by zero will occur. If it is possible to determine in advance
       for an application class that this singular configuration is outside
       of the operating region, the 3 angles might be used as potential
       states by setting <b>useQuaternions</b> = <b>false</b>.
       </p>
       <p>
       In text books about 3-dimensional mechanics often 3 angles and the
       angular velocity are used as states. This is not the case here, since
       3 angles and their derivatives are used as potential states
       (if useQuaternions = false). The reason
       is that for real-time simulation the discretization formula of the
       integrator might be \"inlined\" and solved together with the body equations.
       By appropriate symbolic transformation the performance is
       drastically increased if angles and their
       derivatives are used as states, instead of angles and the angular
       velocity.
       </p>
       <p>
       Whether or not variables of the body are used as states is usually
       automatically selected by the Modelica translator. If parameter
       <b>enforceStates</b> is set to <b>true</b> in the \"Advanced\" menu,
       then body variables are forced to be used as states according
       to the setting of parameters \"useQuaternions\" and
       \"sequence_angleStates\".
       </p>
       </HTML>"));
  end Body;

  model RealFingerContact
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = fMuscle_max, maxMDistal = fMuscle_max, maxCDistal = fMuscle_max) annotation(Placement(visible = true, transformation(origin = {-103.678, 21.322}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrab.Components.RealFingerStructure fingerArray(phi_0_boneFDistal = initialRotations[1], phi_0_boneMDistal = initialRotations[2], phi_0_boneCDistal = initialRotations[3], fDistalClosed = fDistalClosed, mDistalClosed = mDistalClosed, cDistalRegularClosed = cDistalRegularClosed, cDistalSideClosed = cDistalSideClosed, dirTorque = false, phi_0_doubleJoint = phiSide0, diameterIboneFDistal = diameter, diameterIboneMDistal = diameter, diameterIboneCDistal = diameter, diameterOboneCDistal = diameter, diameterOboneFDistal = diameter, diameterOboneMDistal = diameter, r_IboneFDistal = {fingerLength[3] / 2, 0, 0}, r_OboneFDistal = {fingerLength[4], 0, 0}, r_IboneMDistal = {fingerLength[2] / 2, 0, 0}, r_OboneMDistal = {fingerLength[3] / 2, 0, 0}, r_IboneCDistal = {fingerLength[1], 0, 0}, r_OboneCDistal = {fingerLength[2] / 2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {17.255, 15}, extent = {{-47.745, -47.745}, {47.745, 47.745}}, rotation = 0)));
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = fMuscle_max, maxMDistal = fMuscle_max, maxCDistal = fMuscle_max) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, fingerArray.diameterOboneCDistal * 0.75, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Angle phiSide0 annotation(Dialog(group = "Initial values"));
    parameter Boolean fDistalClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
    parameter Boolean mDistalClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
    parameter Boolean cDistalRegularClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
    parameter Boolean cDistalSideClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
    parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
    Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, fingerArray.diameterOboneMDistal * 0.75, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, fingerArray.diameterOboneFDistal * 0.75, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection(boneLength = fingerLength[4], dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta, bufferEffect = bufferEffect, bufferRange = bufferRange, bufferDamping = bufferDamping, v0Mag = v0Mag, v2delta = v2delta) annotation(Placement(visible = true, transformation(origin = {-190, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection1(boneLength = fingerLength[3], dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta, bufferEffect = bufferEffect, bufferRange = bufferRange, bufferDamping = bufferDamping, v0Mag = v0Mag, v2delta = v2delta) annotation(Placement(visible = true, transformation(origin = {-190, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection2(boneLength = fingerLength[2], dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta, bufferEffect = bufferEffect, bufferRange = bufferRange, bufferDamping = bufferDamping, v0Mag = v0Mag, v2delta = v2delta) annotation(Placement(visible = true, transformation(origin = {-200, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection3(boneLength = fingerLength[1], dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta, bufferEffect = bufferEffect, bufferRange = bufferRange, bufferDamping = bufferDamping, v0Mag = v0Mag, v2delta = v2delta) annotation(Placement(visible = true, transformation(origin = {-125, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Real mu = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.Length delta = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.Velocity v0Mag = 1 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.Velocity v2delta = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.TranslationalSpringConstant bufferEffect = 25 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.Length bufferRange = 0.1 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.TranslationalDampingConstant bufferDamping = 15 annotation(Dialog(tab = "Friction", group = "Parameters"));
    parameter Modelica.SIunits.Length diameter = 0.02;
    parameter Modelica.SIunits.Force fMuscle_max = 50;
    parameter Modelica.SIunits.Angle initialRotations[3] = {0, 0, 0} "In the order of: far distal phalange, middle phalange, and proximal phalange" annotation(Dialog(group = "Initial values"));
  equation
    connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-187.848, -2.668}, points = {{-87.152, 15.616}, {27.152, 15.616}, {27.152, -15.616}, {32.848, -15.616}}, color = {0, 0, 127}));
    connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-187.546, 36.102}, points = {{-87.45399999999999, -23.154}, {26.85, -23.154}, {26.85, 23.154}, {33.755, 23.154}}, color = {0, 0, 127}));
    connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-187.848, 15.913}, points = {{-87.152, -2.965}, {27.152, -2.965}, {27.152, 2.965}, {32.848, 2.965}}, color = {0, 0, 127}));
    connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-74.054, -43.333}, points = {{-43.397, -6.667}, {21.698, -6.667}, {21.698, 13.333}}));
    connect(frame_a4, objectPrismDampConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -49.5}, points = {{-98.101, 0.5}, {30.899, 0.5}, {30.899, -0.5}, {36.303, -0.5}}));
    connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.453}}));
    connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.089}}));
    connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
    connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points = {{8.726000000000001, 0}, {-8.726000000000001, 0}}));
    connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points = {{40.024, 0}, {-40.024, 0}}));
    connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points = {{62.863, 1.655}, {-19.137, 1.655}, {-19.137, -1.656}, {-24.588, -1.656}}));
    connect(frame_a1, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-221.149, 89.5}, points = {{-29.851, -0.5}, {8.148999999999999, -0.5}, {8.148999999999999, 0.5}, {13.553, 0.5}}));
    connect(frame_a2, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-214.399, 115.5}, points = {{-39.601, 0.5}, {11.399, 0.5}, {11.399, -0.5}, {16.803, -0.5}}));
    connect(frame_a3, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-214.649, 137.5}, points = {{-40.351, 2.5}, {11.649, 2.5}, {11.649, -2.5}, {17.053, -2.5}}));
    connect(jointControl[4], fingerArray.sideTheta) annotation(Line(visible = true, origin = {-6.857, 94.131}, points = {{20.039, 68.387}, {20.039, 44.937}, {-26.654, 44.937}, {-26.654, -79.131}, {13.23, -79.131}}, color = {0, 0, 127}));
    connect(jointControl[3], fingerArray.thetaCDistal) annotation(Line(visible = true, origin = {1.92, 90.976}, points = {{11.263, 71.541}, {11.263, -22.847}, {-11.263, -22.847}, {-11.263, -25.847}}, color = {0, 0, 127}));
    connect(jointControl[2], fingerArray.thetaMDistal) annotation(Line(visible = true, origin = {13.23, 91.119}, points = {{-0.047, 71.399}, {-0.047, -22.8}, {0.047, -22.8}, {0.047, -25.8}}, color = {0, 0, 127}));
    connect(jointControl[1], fingerArray.thetaFDistal) annotation(Line(visible = true, origin = {25.166, 91.074}, points = {{-11.983, 71.443}, {-11.983, -22.814}, {11.983, -22.814}, {11.983, -25.814}}, color = {0, 0, 127}));
    connect(posteriorInput[4], fingerArray.sidePosterior) annotation(Line(visible = true, origin = {143.669, -10.727}, points = {{106.331, 22.593}, {82.881, 22.593}, {82.881, -25.913}, {-136.046, -25.913}, {-136.046, 6.639}}, color = {0, 0, 127}));
    connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points = {{-122.39, -25.866}, {-98.94, -25.866}, {-98.94, 27.826}, {160.135, 27.826}, {160.135, -3.92}}, color = {0, 0, 127}));
    connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-37.467, 17.422}, points = {{-14.889, 2.424}, {3.957, 2.424}, {3.957, -2.424}, {6.975, -2.424}}));
    connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points = {{42.121, 18.691}, {-12.121, 18.691}, {-12.121, -18.691}, {-17.879, -18.691}}, color = {0, 0, 127}));
    connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points = {{42.43, -20.97}, {-11.812, -20.97}, {-11.812, 20.97}, {-18.807, 20.97}}, color = {0, 0, 127}));
    connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points = {{42.121, -0.317}, {-12.121, -0.317}, {-12.121, 0.317}, {-17.879, 0.317}}, color = {0, 0, 127}));
    connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points = {{52.766, 34.156}, {52.766, -17.078}, {-105.532, -17.078}}));
    connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
    connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
    connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-41.338, -33.964}, points = {{-11.018, 3.964}, {-11.018, -2.676}, {11.018, -2.676}, {11.018, 1.388}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-37.439, -15.022}, points = {{-14.917, 1.699}, {3.929, 1.699}, {3.929, -1.699}, {7.059, -1.699}}));
    connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-37.464, 1.204}, points = {{-14.892, 2.11}, {3.954, 2.11}, {3.954, -2.11}, {6.984, -2.11}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points = {{13.56, -0.636}, {-3.44, -0.636}, {-3.44, 0.636}, {-6.679, 0.636}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points = {{13.518, -0.046}, {-3.482, -0.046}, {-3.482, 0.046}, {-6.554, 0.046}}));
    connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points = {{13.433, 0.623}, {-3.478, 0.623}, {-3.478, -0.623}, {-6.478, -0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points = {{13.439, 1.549}, {-3.48, 1.549}, {-3.48, -1.549}, {-6.48, -1.549}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-37.443, 33.77}, points = {{-14.913, 2.949}, {3.933, 2.949}, {3.933, -2.949}, {7.047, -2.949}}));
    connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-37.467, 50.242}, points = {{-14.889, 3.412}, {3.956, 3.412}, {3.956, -3.412}, {6.977, -3.412}}));
    connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points = {{-0.2, 6.009}, {-13.522, -0.313}, {-13.522, 1.545}, {21.782, 1.545}, {21.782, -2.466}}));
    annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end RealFingerContact;

  model RealFingerStructure
    PowerGrab.Components.RealBoneJoint boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = true, closedLoop = mDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {5.256, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RealBoneJoint boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, closedLoop = fDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin = {120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin = {120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin = {80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin = {40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin = {0, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin = {-40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin = {-80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin = {-120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin = {80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin = {40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin = {0, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin = {-40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin = {-80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin = {-120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaCDistal if cDistalRegularClosed annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaMDistal if mDistalClosed annotation(Placement(visible = true, transformation(origin = {25.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaFDistal if fDistalClosed annotation(Placement(visible = true, transformation(origin = {99.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-147.926, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    parameter Modelica.SIunits.Position r_IboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneFDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneFDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneFDistal;
    parameter Modelica.SIunits.Position r_IboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneMDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneMDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneMDistal;
    parameter Modelica.SIunits.Position r_IboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneCDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneCDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneCDistal;
    parameter Modelica.SIunits.Position baseAnterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position basePosterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Angle phi_0_doubleJoint;
    parameter Boolean fDistalClosed = true "If true, the far distal phalange will be in a constrained mode";
    parameter Boolean mDistalClosed = true "If true, the middle distal phalange will be in a constrained mode";
    parameter Boolean cDistalRegularClosed = true "If true, the close distal phalange's regular joint will be in a constrained mode";
    parameter Boolean cDistalSideClosed = true "If true, the close distal phalange's side joint will be in a constrained mode";
    Modelica.Blocks.Interfaces.RealInput loadForce if dirTorque annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
    PowerGrab.Components.FingerLoad fingerLoad(r2 = r_OboneMDistal[1], r3 = r_OboneCDistal[1], r1 = r_OboneFDistal[1] / 2) if dirTorque annotation(Placement(visible = true, transformation(origin = {-52.096, 71.024}, extent = {{-13.29, -13.29}, {13.29, 13.29}}, rotation = 0)));
    parameter Boolean dirTorque = true "True if direct torque upon joint is desired";
    Modelica.Blocks.Interfaces.RealInput sideTheta if cDistalSideClosed "secondary revolute joint - sideways swaying" annotation(Placement(visible = true, transformation(origin = {-20, -32.963}, extent = {{-12.963, -12.963}, {12.963, 12.963}}, rotation = 0), iconTransformation(origin = {-27.35, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    PowerGrab.Components.RealBoneDoubleJoint boneCDistal(phi_0_doubleJoint = phi_0_doubleJoint, closedDoubleJoint = cDistalSideClosed, closedRegularJoint = cDistalRegularClosed, torD = dirTorque, r_IFingerBone = r_IboneCDistal, r_shape_IFingerBone = r_shape_IboneCDistal, diameterIFingerBone = diameterIboneCDistal, r_OFingerBone = r_OboneCDistal, r_shape_OFingerBone = r_shape_OboneCDistal, diameterOFingerBone = diameterOboneCDistal, phi_0_regularJoint = phi_0_boneCDistal) annotation(Placement(visible = true, transformation(origin = {-86.959, -2.646}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin = {-123.296, 21.696}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin = {-123.175, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(sideTheta, boneCDistal.doubleJointControl) annotation(Line(visible = true, origin = {-53.457, -5.883}, points = {{33.457, -27.08}, {17.494, -27.08}, {17.494, 20.462}, {-34.223, 20.462}, {-34.223, 13.237}}, color = {0, 0, 127}));
    connect(sidePosterior, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.437, -1.291}, points = {{-25.738, -18.709}, {-4.288, -18.709}, {-4.288, 13.87}, {17.157, 13.87}, {17.157, 9.678000000000001}}, color = {0, 0, 127}));
    connect(sideAnterior, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.197, 17.302}, points = {{-26.098, 4.394}, {13.049, 4.394}, {13.049, -8.788}}, color = {0, 0, 127}));
    connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-56.449, -1.323}, points = {{51.705, 1.323}, {-15.717, 1.323}, {-15.717, -1.323}, {-20.271, -1.323}}));
    connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.186, -42.431}, points = {{-24.373, 30.785}, {12.186, 30.785}, {12.186, -61.569}}));
    connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.26, 38.903}, points = {{-24.519, -32.549}, {12.26, -32.549}, {12.26, 65.09699999999999}}));
    connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-58.959, 34.732}, points = {{18.616, 33.352}, {23.153, 33.352}, {23.153, -20.153}, {-32.461, -20.153}, {-32.461, -26.398}}, color = {0, 0, 127}));
    connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-84.545, 20.409}, points = {{20.827, 6.027}, {-10.414, 6.027}, {-10.414, -12.055}}, color = {0, 0, 127}));
    connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-91.992, -59.458}, points = {{-4.967, 47.812}, {-9.507999999999999, 47.812}, {-9.507999999999999, -25.542}, {11.992, -25.542}, {11.992, -44.542}}));
    connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-91.992, 57.342}, points = {{-4.967, -50.987}, {-9.507999999999999, -50.987}, {-9.507999999999999, 27.658}, {11.992, 27.658}, {11.992, 46.658}}, color = {95, 95, 95}));
    connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.477, -22.198}, points = {{-13.471, -19.552}, {2.977, -19.552}, {2.977, 19.552}, {7.518, 19.552}}));
    connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.46, 19.552}, points = {{-13.422, 22.198}, {2.96, 22.198}, {2.96, -22.198}, {7.501, -22.198}}));
    connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-111.971, -1.323}, points = {{-35.955, 1.323}, {10.471, 1.323}, {10.471, -1.323}, {15.012, -1.323}}));
    connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-10.011, 46.846}, points = {{-30.534, 25.923}, {15.267, 25.923}, {15.267, -51.846}}, color = {0, 0, 127}));
    connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {35.073, 36.21}, points = {{-75.69799999999999, 41.21}, {20.386, 41.21}, {20.386, -41.21}, {34.927, -41.21}}, color = {0, 0, 127}));
    connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-51.343, 28.568}, points = {{47.099, -34.568}, {-17.043, -34.568}, {-17.043, 34.568}, {-13.013, 34.568}}, color = {0, 0, 127}));
    connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-35.112, 32.959}, points = {{95.61199999999999, -38.959}, {-33.274, -38.959}, {-33.274, 38.959}, {-29.065, 38.959}}, color = {0, 0, 127}));
    connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points = {{-25.963, -7.71}, {7.251, -7.71}, {7.251, 7.71}, {11.46, 7.71}}, color = {0, 0, 127}));
    connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
    connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.628, 71}, points = {{2.628, -61}, {2.628, 14}, {-2.628, 14}, {-2.628, 33}}));
    connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.786, 40.381}, points = {{-16.429, -31.81}, {8.214, -31.81}, {8.214, 63.619}}));
    connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {75, 71}, points = {{-5, -61}, {-5, 14}, {5, 14}, {5, 33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {106.7, 40.381}, points = {{-26.599, -31.81}, {13.3, -31.81}, {13.3, 63.619}}));
    connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.628, -71}, points = {{2.628, 61}, {2.628, -14}, {-2.628, -14}, {-2.628, -33}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.752, -39.6}, points = {{-16.496, 32.2}, {8.247999999999999, 32.2}, {8.247999999999999, -64.40000000000001}}));
    connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {75, -71}, points = {{-5, 61}, {-5, -14}, {5, -14}, {5, -33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {106.667, -39.6}, points = {{-26.667, 32.2}, {13.333, 32.2}, {13.333, -64.40000000000001}}));
    connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {84.79600000000001, 14.736}, points = {{14.803, 11.736}, {-0.003, 11.736}, {-0.003, -11.736}, {-14.796, -11.736}}, color = {0, 0, 127}));
    connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {15.236, 13.27}, points = {{9.978999999999999, 12.784}, {9.978999999999999, -1.257}, {-9.978999999999999, -1.257}, {-9.978999999999999, -10.27}}, color = {0, 0, 127}));
    connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {46.569, 0.238}, points = {{-31.212, 0.238}, {8.890000000000001, 0.238}, {8.890000000000001, -0.238}, {13.431, -0.238}}));
    annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
  end RealFingerStructure;

  model RealBoneDoubleJoint
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true, r_0.fixed = false) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone, r_0.fixed = false, color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true, phi.fixed = false, phi.start = 1.5, cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {-10, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = phi_0_regularJoint, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true, stateSelect = true, c = 10000, d = 10000) annotation(Placement(visible = true, transformation(origin = {3.053, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    parameter Modelica.SIunits.Angle phi_0_regularJoint = 0;
    parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
    parameter Boolean closedDoubleJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
    parameter Boolean closedRegularJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
    Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -25}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-44.609, 109.799}, extent = {{15.391, -15.391}, {-15.391, 15.391}}, rotation = -270)));
    parameter Boolean torD = true "True if direct torque on joint is desired" annotation(Dialog(tab = "Advanced", group = "Parameters"));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.804, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {104, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {102.392, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position regularAngleControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {155, 42.881}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-80, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {157.74, -46.967}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {6.023, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -450)));
    PowerGrab.Components.RevoluteRestrained doubleJointRevolute(useAxisFlange = true, theta_1 = -0.87, theta_2 = 1, phi_0_restrained = phi_0_doubleJoint, axisRotation = {0, 1, 0}, c = 10000, d = 10000) annotation(Placement(visible = true, transformation(origin = {-25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.1}) annotation(Placement(visible = true, transformation(origin = {-85, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {-65, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {35, -96.736}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle annotation(Placement(visible = true, transformation(origin = {-43.039, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle1 annotation(Placement(visible = true, transformation(origin = {25, 75}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle2 annotation(Placement(visible = true, transformation(origin = {-35, -85}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    PowerGrab.Components.LineMuscle lineMuscle3 annotation(Placement(visible = true, transformation(origin = {25, -70}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    PowerGrab.Components.MagnitudeMuscle magnitudeMuscle(f_max = 20) annotation(Placement(visible = true, transformation(origin = {-110, -87.842}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.MagnitudeMuscle magnitudeMuscle1(f_max = 20) annotation(Placement(visible = true, transformation(origin = {-115, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.467, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {28.108, 111.603}, extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.053, -88.256}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
    Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-23.775, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {1.225, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0}, phi.fixed = false, phi.start = 1.5, useAxisFlange = true, cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {1.225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin = {-130, 175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-105, 126.351}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin = {-135, 136.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin = {-107.443, 153.649}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-32.821, -31.96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput doubleJointControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-148.342, 45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-7.405, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
    Modelica.Mechanics.Rotational.Sources.Position doubleJointAngleControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-117.677, 8.558999999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(doubleJointAngleControl.flange, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-72.40300000000001, 10.624}, points = {{-35.275, -2.064}, {-32.262, -2.064}, {-32.262, 2.376}, {49.9, 2.376}, {49.9, -0.624}}));
    connect(doubleJointControl, doubleJointAngleControl.phi_ref) annotation(Line(visible = true, origin = {-142.121, 20.706}, points = {{-6.221, 24.294}, {-6.222, -12.147}, {12.444, -12.147}}, color = {0, 0, 127}));
    connect(fixedTranslation9.frame_a, revolute3.frame_b) annotation(Line(visible = true, origin = {8.117000000000001, 26}, points = {{-3.117, -61}, {-6.117, -61}, {-6.117, -48}, {6.121, -48}, {6.121, 109}, {3.108, 109}}));
    connect(regularAngleControl.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {41.053, 13.333}, points = {{71.00700000000001, 1.667}, {-35.503, 1.667}, {-35.503, -3.333}}));
    connect(thetaControl, regularAngleControl.phi_ref) annotation(Line(visible = true, origin = {148.02, 24.294}, points = {{6.98, 18.587}, {6.98, -9.294}, {-13.96, -9.294}}, color = {0, 0, 127}));
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
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-105, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-50, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide"), Text(visible = true, origin = {-5.816, 146.068}, extent = {{-34.184, -6.068}, {34.184, 6.068}}, textString = "doubleJointControl"), Line(visible = true, origin = {-7.817, 134.041}, points = {{0, -5.959}, {0, 5.959}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end RealBoneDoubleJoint;

  model RealBoneJoint
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true, r_0.fixed = false) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone, r_0.start = {0, 0.08, 0}, r_0.fixed = false, color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true, phi.fixed = false, phi.start = 1.5, cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = phi_0_restrained, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true, stateSelect = stateSelect) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1}, phi.start = 1.5, useAxisFlange = true, phi.fixed = false, cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], -diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel.fixed = false) annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
    parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
    parameter Modelica.SIunits.Angle phi_0_restrained;
    Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -27.854}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {0, -50}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    parameter Boolean torD = true "True if direct torque on joint is desired";
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.01, 85.714}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.01, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 35}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-0, 30}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor1 annotation(Placement(visible = true, transformation(origin = {-77.78700000000001, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {-138.112, -33.337}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    parameter Boolean stateSelect = true;
    parameter Boolean closedLoop = true;
  equation
    connect(relAngleSensor1.phi_rel, y) annotation(Line(visible = true, origin = {-108.782, -36.135}, points = {{30.995, 0.135}, {30.995, -2.865}, {-16.33, -2.865}, {-16.33, 2.797}, {-29.33, 2.797}}, color = {0, 0, 127}));
    connect(relAngleSensor1.flange_b, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-42.474, -10.05}, points = {{-25.314, -14.95}, {-22.314, -14.95}, {-22.314, 10.967}, {34.971, 10.967}, {34.971, 7.967}}));
    connect(relAngleSensor1.flange_a, revoluteRestrained.flange_b) annotation(Line(visible = true, origin = {-58.775, -10.05}, points = {{-29.013, -14.95}, {-32.013, -14.95}, {-32.013, 10.967}, {46.519, 10.967}, {46.519, 7.967}}));
    connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
    connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
    connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 21.667}, points = {{6.98, 13.333}, {6.98, -6.667}, {-13.96, -6.667}}, color = {0, 0, 127}));
    connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {32.351, 9.305999999999999}, points = {{79.709, 5.694}, {-39.854, 5.694}, {-39.854, -11.389}}));
    connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-10.096, 61.667}, points = {{2.452, 43.333}, {2.452, -21.667}, {-4.904, -21.667}}, color = {95, 95, 95}));
    connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.485, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.485, 27.5}}));
    connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
    connect(frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {1.245, -74.027}, points = {{-1.245, -30.973}, {-1.245, -11.973}, {1.868, -11.973}, {1.868, 27.46}, {-1.245, 27.46}}, color = {95, 95, 95}));
    connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -23.927}, points = {{22.094, -3.927}, {-6.364, -3.927}, {-6.364, 3.927}, {-9.364000000000001, 3.927}}, color = {0, 0, 127}));
    connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
    connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
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
    connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
    connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
    connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
    connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
    connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
    connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end RealBoneJoint;

  model RealTestFinger
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 20, maxMDistal = 20, maxCDistal = 20) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrab.Components.RealFingerStructure fingerArray(phi_0_boneFDistal = 0.1, phi_0_boneMDistal = 0.1, phi_0_boneCDistal = 0.1, fDistalClosed = fDistalClosed, mDistalClosed = mDistalClosed, cDistalRegularClosed = cDistalRegularClosed, cDistalSideClosed = cDistalSideClosed, dirTorque = false, phi_0_doubleJoint = 0, diameterIboneFDistal = 0.02, diameterIboneMDistal = 0.02, diameterIboneCDistal = 0.02, diameterOboneCDistal = 0.02, diameterOboneFDistal = 0.02, diameterOboneMDistal = 0.02, r_IboneFDistal = {fingerLength[3] / 2, 0, 0}, r_OboneFDistal = {fingerLength[4], 0, 0}, r_IboneMDistal = {fingerLength[2] / 2, 0, 0}, r_OboneMDistal = {fingerLength[3] / 2, 0, 0}, r_IboneCDistal = {fingerLength[1], 0, 0}, r_OboneCDistal = {fingerLength[2] / 2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {17.255, 15}, extent = {{-47.745, -47.745}, {47.745, 47.745}}, rotation = 0)));
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 50, maxMDistal = 20, maxCDistal = 20) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
    parameter Boolean contact = true;
    parameter Boolean fDistalClosed = false;
    parameter Boolean mDistalClosed = false;
    parameter Boolean cDistalRegularClosed = false;
    parameter Boolean cDistalSideClosed = false;
    parameter Modelica.SIunits.Length fingerLength[4] = {0.07000000000000001, 0.064, 0.04, 0.03} "Length of bone from Palm, Proximal, Middle, and Distal";
    parameter Modelica.SIunits.Distance threshold = 0.0275 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 100 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection3(boneLength = fingerLength[1], dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta) if contact annotation(Placement(visible = true, transformation(origin = {-125, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Real mu = 0;
    parameter Modelica.SIunits.Length delta = 0.01;
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PrismDampingOC objectPrismDampConnection(boneLength = fingerLength[4], dampingCoefficient = dampingCoefficient, delta = delta, k = k, mu = mu, threshold = threshold) if contact annotation(Placement(visible = true, transformation(origin = {-190, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PrismDampingOC objectPrismDampConnection1(boneLength = fingerLength[3], dampingCoefficient = dampingCoefficient, delta = delta, k = k, mu = mu, threshold = threshold) if contact annotation(Placement(visible = true, transformation(origin = {-190, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PrismDampingOC objectPrismDampConnection2(boneLength = fingerLength[2], dampingCoefficient = dampingCoefficient, delta = delta, k = k, mu = mu, threshold = threshold) if contact annotation(Placement(visible = true, transformation(origin = {-200, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-157.539, -87.374}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-115, -87.381}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-65, 165}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid antF(rising = 5, width = 2, falling = 5, period = 14, amplitude = 0.2, startTime = 2) annotation(Placement(visible = true, transformation(origin = {-230, 53.077}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid antM(amplitude = 0.6, rising = 5, width = 2, falling = 5, period = 14, startTime = 1) annotation(Placement(visible = true, transformation(origin = {-227.525, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid antC(rising = 5, width = 2, falling = 5, period = 14) annotation(Placement(visible = true, transformation(origin = {-227.74, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid postF(rising = 5, width = 2, falling = 5, period = 14, startTime = 9, amplitude = 0.2) annotation(Placement(visible = true, transformation(origin = {221.6, 50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid postM(amplitude = 0.6, rising = 5, width = 2, falling = 5, period = 14, startTime = 8) annotation(Placement(visible = true, transformation(origin = {223.232, 12.461}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid postC(width = 2, falling = 5, period = 14, rising = 5, startTime = 7, amplitude = 1) annotation(Placement(visible = true, transformation(origin = {225, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r = {-0.04, 0.05, 0}) annotation(Placement(visible = true, transformation(origin = {-307.689, 112.602}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(objectPrismDampConnection3.frame_a, fixedRotation1.frame_b) annotation(Line(visible = true, origin = {-252.603, 33.801}, points = {{120.007, -78.801}, {-37.461, -78.801}, {-37.461, 78.801}, {-45.086, 78.801}}));
    connect(fixedRotation1.frame_b, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-232.821, 101.301}, points = {{-64.86799999999999, 11.301}, {19.821, 11.301}, {19.821, -11.301}, {25.225, -11.301}}));
    connect(fixedRotation1.frame_b, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-225.321, 113.801}, points = {{-72.36799999999999, -1.199}, {22.321, -1.199}, {22.321, 1.199}, {27.725, 1.199}}));
    connect(fixedRotation1.frame_b, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-225.321, 123.801}, points = {{-72.36799999999999, -11.199}, {22.321, -11.199}, {22.321, 11.199}, {27.725, 11.199}}));
    connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-232.576, -16.307}, points = {{85.038, -71.06699999999999}, {88.163, -71.06699999999999}, {88.163, -57.842}, {-88.125, -57.842}, {-88.125, 128.909}, {-85.113, 128.909}}));
    connect(antC.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-185.524, -24.803}, points = {{-31.215, -0.197}, {8.506, -0.197}, {8.506, 0.197}, {14.202, 0.197}}, color = {0, 0, 127}));
    connect(antM.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-185.471, 13.778}, points = {{-31.055, 1.222}, {8.452999999999999, 1.222}, {8.452999999999999, -1.222}, {14.149, -1.222}}, color = {0, 0, 127}));
    connect(antF.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-185.787, 53.006}, points = {{-33.213, 0.07099999999999999}, {8.769, 0.07099999999999999}, {8.769, -0.07099999999999999}, {15.675, -0.07099999999999999}}, color = {0, 0, 127}));
    connect(postC.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {198.879, -25.258}, points = {{15.121, 0.258}, {-3.121, 0.258}, {-3.121, -0.258}, {-8.879, -0.258}}, color = {0, 0, 127}));
    connect(postM.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {198.437, 12.481}, points = {{13.795, -0.019}, {-2.679, -0.019}, {-2.679, 0.019}, {-8.436999999999999, 0.019}}, color = {0, 0, 127}));
    connect(postF.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {197.72, 51.903}, points = {{12.88, -1.903}, {-1.962, -1.903}, {-1.962, 1.903}, {-8.957000000000001, 1.903}}, color = {0, 0, 127}));
    connect(one.y, fingerArray.sidePosterior) annotation(Line(visible = true, origin = {-28.151, 50.526}, points = {{-25.849, 114.474}, {-22.849, 114.474}, {-22.849, -87.167}, {35.774, -87.167}, {35.774, -54.614}}, color = {0, 0, 127}));
    connect(one.y, fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-12.983, 121.631}, points = {{-41.017, 43.369}, {20.508, 43.369}, {20.508, -86.738}}, color = {0, 0, 127}));
    connect(fixedRotation.frame_b, fingerArray.frame_a) annotation(Line(visible = true, origin = {-28.802, -67.843}, points = {{-76.19799999999999, -19.538}, {38.099, -19.538}, {38.099, 39.077}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-132.141, -87.378}, points = {{-15.398, 0.004}, {4.128, 0.004}, {4.128, -0.004}, {7.141, -0.004}}));
    connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points = {{62.863, 1.655}, {-19.137, 1.655}, {-19.137, -1.656}, {-24.588, -1.656}}));
    connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points = {{40.024, 0}, {-40.024, 0}}));
    connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points = {{8.726000000000001, 0}, {-8.725, 0}}));
    connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
    connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.09}}));
    connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.452}}));
    connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points = {{-16.258, -5.785}, {-16.258, 2.893}, {32.515, 2.893}}));
    connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points = {{-27.13, -0.737}, {8.037000000000001, -0.737}, {8.037000000000001, 0.737}, {11.056, 0.737}}));
    connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
    connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
    connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points = {{-19.179, 0.5629999999999999}, {-19.179, -2.437}, {19.179, -2.437}, {19.179, 4.31}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points = {{-27.158, -1.462}, {8.009, -1.462}, {8.009, 1.462}, {11.139, 1.462}}));
    connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points = {{-27.133, -1.051}, {8.034000000000001, -1.051}, {8.034000000000001, 1.051}, {11.065, 1.051}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points = {{13.56, -0.636}, {-3.44, -0.636}, {-3.44, 0.636}, {-6.679, 0.636}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points = {{13.518, -0.046}, {-3.482, -0.046}, {-3.482, 0.046}, {-6.554, 0.046}}));
    connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points = {{13.433, 0.623}, {-3.478, 0.623}, {-3.478, -0.623}, {-6.478, -0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points = {{13.439, 1.549}, {-3.48, 1.549}, {-3.48, -1.549}, {-6.48, -1.549}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points = {{-27.154, -0.212}, {8.013, -0.212}, {8.013, 0.212}, {11.128, 0.212}}));
    connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points = {{-27.131, 0.251}, {8.037000000000001, 0.251}, {8.037000000000001, -0.251}, {11.057, -0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points = {{-16.522, -0.313}, {-13.522, -0.313}, {-13.522, 1.545}, {21.782, 1.545}, {21.782, -2.466}}));
    annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end RealTestFinger;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Components;