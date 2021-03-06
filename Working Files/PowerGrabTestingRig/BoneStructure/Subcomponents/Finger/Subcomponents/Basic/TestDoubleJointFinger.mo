within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic;
model TestDoubleJointFinger
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0.12, 0}) annotation(Placement(visible = true, transformation(origin = {-37.829, 27.639}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, -0.12, 0}) annotation(Placement(visible = true, transformation(origin = {-36.131, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents.TestDoubleJointComponent
    boneCDistal(
    phi_0_doubleJoint=0,
    closedLoop=false,
    phi_0_restrained=0.5) annotation (Placement(visible=true, transformation(
        origin={3.447,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-132.171, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-103.949, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid loadControl(offset = 0, amplitude = 0, period = 10) annotation(Placement(visible = true, transformation(origin = {-16.581, 76.90600000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid anteriorPercent(amplitude = 0, period = 10, offset = 1) annotation(Placement(visible = true, transformation(origin = {32.333, 76.553}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid posteriorPercent(amplitude = 0, period = 10, offset = 0) annotation(Placement(visible = true, transformation(origin = {43.392, -14.111}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
    magnitudeMuscle(f_max=200) annotation (Placement(visible=true,
        transformation(
        origin={-105.306,80},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
    magnitudeMuscle1(f_max=2000) annotation (Placement(visible=true,
        transformation(
        origin={-120,-65.414},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle
    annotation (Placement(visible=true, transformation(
        origin={-66.322,81.84399999999999},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle1
    annotation (Placement(visible=true, transformation(
        origin={70,81.84399999999999},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle2
    annotation (Placement(visible=true, transformation(
        origin={53.225,-68.43899999999999},
        extent={{10,10},{-10,-10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle3
    annotation (Placement(visible=true, transformation(
        origin={118.978,-68.43899999999999},
        extent={{-10,10},{10,-10}},
        rotation=0)));
  Modelica.Blocks.Sources.Trapezoid anteriorRegular(amplitude = 0, period = 10, offset = 0) annotation(Placement(visible = true, transformation(origin = {-160, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid posteriorRegular(amplitude = 0, period = 10, offset = 0) annotation(Placement(visible = true, transformation(origin = {-158.187, -66.98999999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(posteriorBase.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-78.182, -10}, points = {{32.051, -10}, {-8.141999999999999, -10}, {-8.141999999999999, 10}, {-15.767, 10}}));
  connect(fixedRotation.frame_b, anteriorBase.frame_a) annotation(Line(visible = true, origin = {-60.859, 13.819}, points={{-33.09,
          -13.819},{10.03,-13.819},{10.03,13.82},{13.03,13.82}}));
  connect(posteriorRegular.y, magnitudeMuscle1.forcePValue) annotation(Line(visible = true, origin = {-135.579, -66.486}, points={{-11.608,
          -0.504},{2.354,-0.504},{2.354,0.5035},{6.8983,0.5035}},                                                                                                                                        color = {0, 0, 127}));
  connect(anteriorRegular.y, magnitudeMuscle.forcePValue) annotation(Line(visible = true, origin = {-125.012, 79.71599999999999}, points={{-23.988,
          0.284},{6.481,0.284},{6.481,-0.2845},{11.0253,-0.2845}},                                                                                                                                                color = {0, 0, 127}));
  connect(lineMuscle2.frame_b, posteriorBase.frame_b) annotation(Line(visible = true, origin = {-7.236, -44.019}, points={{50.461,
          -24.02},{-15.783,-24.02},{-15.783,24.019},{-18.895,24.019}}));
  connect(magnitudeMuscle1.fMagnitude, lineMuscle3.muscleMagnitude) annotation(Line(visible = true, origin = {-16.798, -74.58499999999999}, points={{-92.517,
          8.5802},{-89.517,8.5802},{-89.517,-6.854},{135.776,-6.854},{135.776,
          -3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(lineMuscle3.frame_b, boneCDistal.frame_b1) annotation(Line(visible = true, origin = {101.808, -38.519}, points={{27.17,
          -29.52},{30.395,-29.52},{30.395,29.519},{-87.961,29.519}}));
  connect(lineMuscle3.frame_a, boneCDistal.frame_resolve1) annotation(Line(visible = true, origin = {20.059, -38.519}, points={{88.919,
          -29.52},{-31.153,-29.52},{-31.153,29.519},{-26.612,29.519}}));
  connect(magnitudeMuscle1.fMagnitude, lineMuscle2.muscleMagnitude) annotation(Line(visible = true, origin = {-43.099, -74.58499999999999}, points={{-66.216,
          8.5802},{-63.216,8.5802},{-63.216,-6.854},{96.324,-6.854},{96.324,
          -3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(lineMuscle2.frame_a, boneCDistal.frame_resolve1) annotation(Line(visible = true, origin = {27.897, -44.159}, points = {{35.328, -23.88}, {38.553, -23.88}, {38.553, -11.28}, {-38.991, -11.28}, {-38.991, 35.159}, {-34.45, 35.159}}));
  connect(lineMuscle1.frame_b, boneCDistal.frame_b) annotation(Line(visible = true, origin = {65.01900000000001, 45.222}, points={{14.981,
          36.222},{18.206,36.222},{18.206,-36.222},{-51.3916,-36.222}}));
  connect(lineMuscle1.frame_a, boneCDistal.frame_resolve) annotation(Line(visible = true, origin = {7.815, 45.222}, points = {{52.185, 36.222}, {-18.909, 36.222}, {-18.909, -36.222}, {-14.368, -36.222}}));
  connect(lineMuscle.frame_b, boneCDistal.frame_resolve) annotation(Line(visible = true, origin = {-21.266, 45.222}, points = {{-35.056, 36.222}, {10.172, 36.222}, {10.172, -36.222}, {14.713, -36.222}}));
  connect(lineMuscle.frame_a, anteriorBase.frame_b) annotation(Line(visible = true, origin = {-52.113, 59.309}, points = {{-24.209, 22.135}, {-27.434, 22.135}, {-27.434, 9.535}, {27.396, 9.535}, {27.396, -31.67}, {24.284, -31.67}}));
  connect(magnitudeMuscle.fMagnitude, lineMuscle1.muscleMagnitude) annotation(Line(visible = true, origin = {-27.572, 87.98999999999999}, points={{-67.049,
          -8.5808},{-64.048,-8.5808},{-64.048,6.854},{97.572,6.854},{97.572,
          3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(magnitudeMuscle.fMagnitude, lineMuscle.muscleMagnitude) annotation(Line(visible = true, origin = {-82.101, 87.98999999999999}, points={{-12.52,
          -8.5808},{-9.519,-8.5808},{-9.519,6.854},{15.779,6.854},{15.779,
          3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(posteriorPercent.y, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {22.286, 2.176}, points={{10.106,
          -16.287},{7.106,-16.287},{7.106,11.858},{-12.1598,11.858},{-12.1598,
          8.8574}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(anteriorPercent.y, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {11.283, 54.755}, points={{10.05,
          21.798},{-5.0252,21.798},{-5.0252,-43.5947}},                                                                                                                                         color = {0, 0, 127}));
  connect(loadControl.y, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-2.536, 54.931}, points={{-3.045,
          21.975},{1.5221,21.975},{1.5221,-43.9511}},                                                                                                                       color = {0, 0, 127}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-118.06, 0}, points = {{-4.111, 0}, {4.111, -0}}));
  connect(fixedRotation.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-50.251, 0}, points = {{-43.698, 0}, {43.698, 0}}));
  annotation(experiment(StopTime = 60.0), Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
end TestDoubleJointFinger;
