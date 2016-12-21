within PowerGrabStructure.BoneStructure.Finger.Basic.Examples;
model RealBoneJoint
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true,
  r_0(                                                                                                                                                                                 fixed =     false))
                                                                                                                                                                                                      "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
  r_0(                                                                                                               start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
  phi(                                                                                                           fixed =     false, start =     1.5),cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.BoneStructure.Finger.Basic.Joints.Examples.RevoluteRestrained
    revoluteRestrained(
    phi_0_restrained=phi_0_restrained,
    theta_1=-0.1,
    theta_2=1.6,
    useAxisFlange=true,
    stateSelect=stateSelect) annotation (Placement(visible=true, transformation(
        origin={-10,-12.083},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
  phi(                                                                                     start =     1.5,                       fixed =     false),
                                                                                                            useAxisFlange = true,                    cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], -diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealBoneJoint;
