within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents;
model BoneMuscleJointExperimentalComponent

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
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.OneDegreeJoint
    revoluteRestrained(
    phi_0_restrained=phi_0_restrained,
    theta_1=-0.1,
    theta_2=1.6,
    useAxisFlange=true) annotation (Placement(visible=true, transformation(
        origin={-10,-12.083},
        extent={{-10,-10},{10,10}},
        rotation=0)));
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
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-111.581, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
  parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
  parameter Modelica.SIunits.Angle phi_0_restrained;
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.TestMuscleComponents.NeuralMuscle
    neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=true,
        transformation(
        origin={-10,75},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.Rotational.Sources.Position position2 annotation(Placement(visible = true, transformation(origin = {112.3, 16.825}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput F_A "activation value for the anterior muscle" annotation(Placement(visible = true, transformation(origin = {-148.269, 85}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90, 76.099}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput F_P "activation value for the posterior muscle" annotation(Placement(visible = true, transformation(origin = {-148.114, 45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90, -73.056}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -30}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput RevoluteJointTheta "Value for the controlled theta of the revolute joint angle" annotation(Placement(visible = true, transformation(origin = {150, 15}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {100, 80}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput LoadTorque "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -22.225}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {105.229, -74.083}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
equation
  connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.365, -21.112}, points={{22.093,
          -1.113},{-6.365,-1.113},{-6.365,1.112},{-9.365,1.112}},                                                                                                               color = {0, 0, 127}));
  connect(RevoluteJointTheta, position2.phi_ref) annotation(Line(visible = true, origin = {131.225, 15.913}, points = {{18.775, -0.913}, {-5.925, -0.913}, {-5.925, 0.912}, {-6.925, 0.912}}, color = {0, 0, 127}));
  connect(frame_a, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-133.291, -30}, points = {{-11.709, 0}, {11.71, 0}}));
  connect(F_P, neuralMuscle.forcePValue_p) annotation(Line(visible = true, origin = {-54.207, 58.26}, points={{-93.907,
          -13.26},{29.194,-13.26},{29.194,13.2592},{35.5183,13.2592}},                                                                                                                  color = {0, 0, 127}));
  connect(F_A, neuralMuscle.forcePValue_a) annotation(Line(visible = true, origin = {-54.244, 81.889}, points={{-94.025,
          3.111},{29.231,3.111},{29.231,-3.1108},{35.5633,-3.1108}},                                                                                                                     color = {0, 0, 127}));
  connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {29.098, 10.522}, points = {{73.202, 6.303}, {-36.601, 6.303}, {-36.601, -12.605}}));
  connect(neuralMuscle.frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 18.496}, points = {{-7.245, 46.504}, {-7.245, 41.812}, {5.868, 41.812}, {5.868, -65.063}, {2.755, -65.063}}, color = {95, 95, 95}));
  connect(neuralMuscle.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {28.444, 20}, points = {{-28.444, 45}, {8.444000000000001, 45}, {8.444000000000001, -45}, {11.556, -45}}, color = {95, 95, 95}));
  connect(neuralMuscle.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-58.933, 27.123}, points={{39.1268,
          37.877},{39.1268,33.185},{-27.122,33.185},{-27.122,-52.123},{-24.009,-52.123}}));
  connect(neuralMuscle.frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-15.543, 66.387}, points = {{5.543, 18.613}, {5.543, 23.159}, {-9.470000000000001, 23.159}, {-9.470000000000001, -6.079}, {3.655, -6.079}, {3.655, -26.387}, {0.543, -26.387}}, color = {95, 95, 95}));
  connect(neuralMuscle.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {18.086, 62.2}, points={{-18.086,
          23.0441},{-18.086,27.346},{11.02,27.346},{11.02,-38.869},{14.132,-38.869}}));
  connect(neuralMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-58.759, 60.131}, points = {{38.759, 24.869}, {38.759, 29.414}, {-26.877, 29.414}, {-26.877, -41.848}, {-23.764, -41.848}}, color = {95, 95, 95}));
  connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
  connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
  connect(fixedRotation.frame_b, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-75.651, -15}, points = {{-25.93, -15}, {7.639, -15}, {7.639, 15}, {10.651, 15}}));
  connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
  connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
  connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
  connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points={{-8.085,
          25},{3.695,25},{3.695,-25},{0.696,-25}},                                                                                                                         color = {0, 0, 127}));
  connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points={{-9.016,
          -9.5},{2.006,-9.5},{2.006,9.5},{5.006,9.5}},                                                                                                                  color = {0, 0, 127}));
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
  connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points={{16.643,
          -6.041},{-5.345,-6.041},{-5.345,6.042},{-8.357,6.042}}));
  connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points={{14.113,
          6.042},{-2.887,6.042},{-2.887,-6.041},{-5.887,-6.041}}));
  connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points={{2.555,
          11.666},{3.555,11.666},{3.555,-11.665},{-9.663,-11.665}}));
  connect(fixedTranslation.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
  connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {-102.597, -100}, extent = {{-22.597, -7.56}, {22.597, 7.56}}, textString = "F_P"), Text(visible = true, origin = {-97.956, 50}, extent = {{-17.956, -6.974}, {17.956, 6.974}}, textString = "F_A"), Text(visible = true, origin = {100.831, 52.121}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {97.16800000000001, -100}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque")}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end BoneMuscleJointExperimentalComponent;
