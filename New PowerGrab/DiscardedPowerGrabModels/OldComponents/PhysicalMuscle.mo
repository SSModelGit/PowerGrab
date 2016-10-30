within DiscardedPowerGrabModels.OldComponents;
model PhysicalMuscle
  Modelica.Blocks.Interfaces.RealInput kNominal "Nominal k, as determined through the muscle activation signal (from the brain)" annotation(Placement(visible = true, transformation(origin = {-127.523, 6.815}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(tableOnFile = false, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 0.1, 0; 0.2, 0; 0.5, 0; 0.7, 0; 0.9, 0; 1, 0; 1.5, 0.4; 1.67, 0.83; 2, 1; 2.25, 1; 2.5, 0.77; 2.7, 0.65; 3.15, 0.5; 3.3, 0.58; 3.5, 1]) annotation(Placement(visible = true, transformation(origin = {-67.998, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel1(c = c_posterior, d = d_posterior, s_unstretched = freeLength_posterior) annotation(Placement(visible = true, transformation(origin = {0, -88.236}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a_P "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {-140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-88.22799999999999, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b_p "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-140, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-90, 74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {140, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Blocks.Math.Product product annotation(Placement(visible = true, transformation(origin = {-28.222, 12.347}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  NonLinearSpringDamper nonLinearSpringDamper(d = d_front) annotation(Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.TranslationalDampingConstant d_front;
  parameter Modelica.SIunits.TranslationalSpringConstant c_posterior;
  parameter Modelica.SIunits.TranslationalDampingConstant d_posterior;
  parameter Modelica.SIunits.Distance freeLength_posterior;
  Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {-66.675, -25}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
equation
  connect(combiTable1D.y[1], product.u1) annotation(Line(visible = true, origin = {-45.916, 39.174}, points = {{-11.082, 20.826}, {2.694, 20.826}, {2.694, -20.827}, {5.694, -20.827}}, color = {0, 0, 127}));
  connect(distance.frame_b, frame_b1) annotation(Line(visible = true, origin = {81.331, -32.5}, points = {{-138.006, 7.5}, {39.669, 7.5}, {39.669, -7.5}, {58.669, -7.5}}));
  connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-114.669, -32.5}, points = {{37.994, 7.5}, {-6.331, 7.5}, {-6.331, -7.5}, {-25.331, -7.5}}));
  connect(distance.distance, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-75.869, 16.8}, points = {{9.194000000000001, -30.8}, {9.194000000000001, -27.8}, {-7.129, -27.8}, {-7.129, 43.2}, {-4.129, 43.2}}, color = {0, 0, 127}));
  connect(nonLinearSpringDamper.frame_b, frame_b1) annotation(Line(visible = true, origin = {75, -40}, points = {{-65, 0}, {65, 0}}));
  connect(frame_a1, nonLinearSpringDamper.frame_a) annotation(Line(visible = true, origin = {-75, -40}, points = {{-65, 0}, {65, 0}}));
  connect(product.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-5.741, -5.685}, points = {{-11.481, 18.032}, {5.741, 18.032}, {5.741, -36.064}}, color = {0, 0, 127}));
  connect(kNominal, product.u2) annotation(Line(visible = true, origin = {-63.547, 6.581}, points = {{-63.976, 0.234}, {20.325, 0.234}, {20.325, -0.234}, {23.325, -0.234}}, color = {0, 0, 127}));
  connect(springDamperParallel1.frame_b, frame_b_p) annotation(Line(visible = true, origin = {98, -89.11799999999999}, points = {{-88, 0.882}, {23, 0.882}, {23, -0.882}, {42, -0.882}}));
  connect(frame_a_P, springDamperParallel1.frame_a) annotation(Line(visible = true, origin = {-45.506, -89.11799999999999}, points = {{-94.494, -0.882}, {29.494, -0.882}, {29.494, 0.882}, {35.506, 0.882}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PhysicalMuscle;
