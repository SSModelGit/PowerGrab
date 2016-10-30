within PowerGrabStructure.Tests.Finger;
model TestFingerRevoluteModel
  Muscle.Advanced.Examples.FingerMuscleLineArray anteriorMuscleArray(
    maxFDistal=200,
    maxMDistal=200,
    maxCDistal=200) annotation (Placement(visible=true, transformation(
        origin={-120,15},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  Muscle.Advanced.Examples.FingerMuscleLineArray posteriorMuscleArray(
    maxFDistal=200,
    maxMDistal=200,
    maxCDistal=200) annotation (Placement(visible=true, transformation(
        origin={137.5,15},
        extent={{52.5,-52.5},{-52.5,52.5}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant const8(k = 0) annotation(Placement(visible = true, transformation(origin = {55, -92.056}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-123.227, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-88.194, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldTests.TestFingerMultipleRevolute
    fingerMultipleRevoluteArray(
    phi_0_boneFDistal=0,
    phi_0_boneCDistal=0,
    phi_0_boneMDistal=0,
    phi_0_doubleJoint=0.0,
    baseAnterior={0.12,0,0},
    basePosterior={0.12,0,0}) annotation (Placement(visible=true,
        transformation(
        origin={10.007,13.287},
        extent={{-55.007,-55.007},{55.007,55.007}},
        rotation=0)));
  Modelica.Blocks.Sources.Trapezoid doubleAnteriorControl(amplitude = 1, falling = 0.1, offset = 0, period = 500, rising = 0.1, width = 245, startTime = 1000) annotation(Placement(visible = true, transformation(origin = {-172.105, 103.355}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid doublePosteriorControl(amplitude = 1, falling = 0.1, offset = 0, period = 500, rising = 0.1, width = 245, startTime = 1250) annotation(Placement(visible = true, transformation(origin = {-215, 105}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid anteriorMuscleF(amplitude = 0, falling = 0.1, offset = 0, period = 500, rising = 0.1, startTime = 750, width = 245) annotation(Placement(visible = true, transformation(origin = {-255, 65}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid anteriorMuscleF1(amplitude = 0, falling = 0.1, offset = 0, period = 500, rising = 0.1, startTime = 750, width = 245) annotation(Placement(visible = true, transformation(origin = {-255, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid anteriorMuscleF2(amplitude = 1, falling = 0.1, offset = 0, period = 1000, rising = 0.1, startTime = 0, width = 490) annotation(Placement(visible = true, transformation(origin = {-255, -12.682}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid posteriorMuscleF3(amplitude = 0, falling = 0.1, offset = 0, period = 500, rising = 0.1, startTime = 750, width = 245) annotation(Placement(visible = true, transformation(origin = {253.449, 65}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid posteriorMuscleF4(amplitude = 0, falling = 0.1, offset = 0, period = 500, rising = 0.1, startTime = 750, width = 245) annotation(Placement(visible = true, transformation(origin = {255, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Trapezoid posteriorMuscleF5(amplitude = 1, falling = 0.1, offset = 0, period = 1000, rising = 0.1, startTime = 500, width = 490) annotation(Placement(visible = true, transformation(origin = {255, -18.17}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(posteriorMuscleF5.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {218.303, -28.908}, points={{36.697,
        -0.262},{36.697,-3.262},{-22.545,-3.262},{-22.545,3.3927},{-28.303,
        3.3927}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(posteriorMuscleF4.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {218.303, 12.2}, points={{36.697,
        1.8},{36.697,-1.2},{-22.545,-1.2},{-22.545,0.29995},{-28.303,0.29995}},                                                                                                                                      color = {0, 0, 127}));
  connect(posteriorMuscleF3.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {217.435, 52.722}, points={{36.014,
        1.278},{36.014,-1.722},{-21.677,-1.722},{-21.677,1.08338},{-28.6724,
        1.08338}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(anteriorMuscleF2.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-198.072, -25.252}, points={{-56.928,
        1.57},{-56.928,-1.43},{36.054,-1.43},{36.054,0.645786},{26.75,
        0.645786}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(anteriorMuscleF1.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-198.072, 12.222}, points={{-56.928,
        1.778},{-56.928,-1.222},{36.054,-1.222},{36.054,0.334046},{26.75,
        0.334046}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(anteriorMuscleF.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-197.83, 52.374}, points={{-57.17,
        1.626},{-57.17,-1.374},{35.812,-1.374},{35.812,0.560656},{27.7177,
        0.560656}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(doublePosteriorControl.y, fingerMultipleRevoluteArray.posteriorSideP) annotation(Line(visible = true, origin = {-144.04, 35.13}, points={{-70.96,
        58.87},{-70.96,-29.4349},{141.921,-29.4349}},                                                                                                                                                                                 color = {0, 0, 127}));
  connect(doubleAnteriorControl.y, fingerMultipleRevoluteArray.anteriorSideP) annotation(Line(visible = true, origin = {-87.023, 68.303}, points={{-85.082,
        24.052},{-85.082,4.022},{85.0825,4.022},{85.0825,-32.0964}},                                                                                                                                                                                                      color = {0, 0, 127}));
  connect(fixedRotation.frame_b, fingerMultipleRevoluteArray.frame_a) annotation(Line(visible = true, origin = {-25.505, -62.379}, points={{-52.689,
        -12.621},{26.3442,-12.621},{26.3442,25.2429}}));
  connect(const8.y, fingerMultipleRevoluteArray.loadForce) annotation(Line(visible = true, origin = {38.796, -53.771}, points={{16.204,
        -27.285},{16.204,8.02},{-16.2043,8.02},{-16.2043,11.2447}},                                                                                                                                      color = {0, 0, 127}));
  connect(debug6P.frame_a, fingerMultipleRevoluteArray.frame_6P) annotation(Line(visible = true, origin = {70.261, 34.085}, points={{9.739,
        57.638},{-2.246,57.638},{-2.246,-57.6389},{-5.247,-57.6389}}));
  connect(debug7P.frame_a, fingerMultipleRevoluteArray.frame_7P) annotation(Line(visible = true, origin = {73.215, -53.907}, points={{16.785,
        -6.093},{-8.39261,-6.093},{-8.39261,12.187}}));
  connect(debug7A.frame_a, fingerMultipleRevoluteArray.frame_7A) annotation(Line(visible = true, origin = {-54.327, -48.551}, points={{-5.673,
        -8.312},{-6.685,-8.312},{-6.685,4.799},{9.52182,4.799},{9.52182,
        7.02582}}));
  connect(debug6A.frame_b, fingerMultipleRevoluteArray.frame_6A) annotation(Line(visible = true, origin = {-58.601, 35.871}, points={{-34.88,
        59.129},{10.577,59.129},{10.577,-59.1293},{13.7271,-59.1293}}));
  connect(posteriorMuscleArray.frame_1, fingerMultipleRevoluteArray.frame_1P) annotation(Line(visible = true, origin = {71.581, 67.157}, points={{13.419,
        -1.232},{-3.473,-1.232},{-3.473,1.23097},{-6.47303,1.23097}}));
  connect(posteriorMuscleArray.frame_2, fingerMultipleRevoluteArray.frame_2P) annotation(Line(visible = true, origin = {71.587, 49.017}, points={{13.413,
        -0.942},{-3.471,-0.942},{-3.471,0.941333},{-6.47078,0.941333}},                                                                                                                                                                                                       color = {95, 95, 95}));
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
        -0.5594},{4.381,-0.5594},{4.381,0.558486},{7.51218,0.558486}},                                                                                                                                                                                                      color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_2, fingerMultipleRevoluteArray.frame_2A) annotation(Line(visible = true, origin = {-52.431, 48.646}, points={{-16.247,
        -1.31314},{4.408,-1.31314},{4.408,1.31233},{7.431,1.31233}},                                                                                                                                                    color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_1, fingerMultipleRevoluteArray.frame_1A) annotation(Line(visible = true, origin = {-57.953, 68.47499999999999}, points={{-10.725,
        -3.69266},{-7.725,-3.69266},{-7.725,3.85},{13.0864,3.85},{13.0864,
        -0.314392}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-105.711, -75}, points = {{-7.516, 0}, {7.517, 0}}));
  annotation(experiment(StopTime = 2000.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestFingerRevoluteModel;
