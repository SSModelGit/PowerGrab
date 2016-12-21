within DiscardedPowerGrabModels.OldTrials;
model TrialFingerRevoluteModel
  PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscleArray(
    maxFDistal=200,
    maxMDistal=200,
    maxCDistal=200) annotation (Placement(visible=true, transformation(
        origin={-120,15},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray posteriorMuscleArray(
    maxFDistal=200,
    maxMDistal=200,
    maxCDistal=200) annotation (Placement(visible=true, transformation(
        origin={137.5,15},
        extent={{52.5,-52.5},{-52.5,52.5}},
        rotation=0)));
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
  DiscardedPowerGrabModels.OldComponents.FingerMultipleRevoluteArray
    fingerMultipleRevoluteArray(
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
