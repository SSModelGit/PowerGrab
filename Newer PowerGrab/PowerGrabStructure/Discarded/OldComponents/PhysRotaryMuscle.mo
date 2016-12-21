within PowerGrabStructure.Discarded.OldComponents;
model PhysRotaryMuscle
  Modelica.Blocks.Interfaces.RealInput kNominal "Nominal k, as determined through the muscle activation signal (from the brain)" annotation(Placement(visible = true, transformation(origin = {-135, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -3.528}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(tableOnFile = false, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 0.1, 0; 0.2, 0; 0.5, 0; 0.7, 0; 0.9, 0; 1, 0; 1.5, 0.4; 1.67, 0.83; 2, 1; 2.25, 1; 2.5, 0.77; 2.7, 0.65; 3.15, 0.5; 3.3, 0.58; 3.5, 1]) annotation(Placement(visible = true, transformation(origin = {-95, 73.229}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-141, 19}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-86, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {-11, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {86, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Blocks.Math.Product kActual annotation(Placement(visible = true, transformation(origin = {-67.90900000000001, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.NonLinearSpringDamper nonLinearSpringDamper(d = 0) annotation(Placement(visible = true, transformation(origin = {-40, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {-95, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque2 torque2 annotation(Placement(visible = true, transformation(origin = {-20, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {-128.323, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-48.489, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(Placement(visible = true, transformation(origin = {65, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length palmBone;
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-65, 26.811}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-49.333, 11.104}, points = {{-4.667, 15.707}, {-4.667, -7.854}, {9.333, -7.854}}, color = {0, 0, 127}));
  connect(torque2.flange_b, flange_b) annotation(Line(visible = true, origin = {27.5, -30}, points = {{-37.5, 0}, {37.5, 0}}));
  connect(flange_a, torque2.flange_a) annotation(Line(visible = true, origin = {-79.161, -30}, points = {{-49.162, 0}, {49.161, 0}}));
  connect(nonLinearSpringDamper.frame_b, frame_b1) annotation(Line(visible = true, origin = {-17.333, 28.667}, points = {{-12.667, -23.667}, {6.333, -23.667}, {6.333, 47.333}}));
  connect(nonLinearSpringDamper.frame_a, frame_a1) annotation(Line(visible = true, origin = {-108.75, 12}, points = {{58.75, -7}, {-13.25, -7}, {-13.25, 7}, {-32.25, 7}}, color = {95, 95, 95}));
  connect(combiTable1D.y[1], kActual.u1) annotation(Line(visible = true, origin = {-81.432, 67.114}, points = {{-2.568, 6.115}, {0.523, 6.115}, {0.523, -6.114}, {1.523, -6.114}}, color = {0, 0, 127}));
  connect(distance.frame_b, frame_b1) annotation(Line(visible = true, origin = {-39, 53}, points = {{-46, -23}, {9, -23}, {9, 23}, {28, 23}}));
  connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-122.5, 24.5}, points = {{17.5, 5.5}, {0.5, 5.5}, {0.5, -5.5}, {-18.5, -5.5}}));
  connect(distance.distance, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-103.4, 55.092}, points = {{8.4, -14.092}, {8.4, -11.092}, {-6.6, -11.092}, {-6.6, 18.137}, {-3.6, 18.137}}, color = {0, 0, 127}));
  connect(kNominal, kActual.u2) annotation(Line(visible = true, origin = {-95.182, 49.5}, points = {{-39.818, 0.5}, {12.273, 0.5}, {12.273, -0.5}, {15.273, -0.5}}, color = {0, 0, 127}));
  kActual.y * (nonLinearSpringDamper.s + palmBone) = torque2.tau;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PhysRotaryMuscle;
