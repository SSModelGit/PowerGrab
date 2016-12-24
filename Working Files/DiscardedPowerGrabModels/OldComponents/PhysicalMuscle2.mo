within DiscardedPowerGrabModels.OldComponents;
model PhysicalMuscle2
  Modelica.Blocks.Interfaces.RealInput kNominal "Nominal k, as determined through the muscle activation signal (from the brain)" annotation(Placement(visible = true, transformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a_P "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {-140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-88.22799999999999, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b_p "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-139, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-90, 74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {141, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  PowerGrabStructure.ContactObject.NonLinearSpringDamper nonLinearSpringDamper(
      d=d_front, s_unstretched=freeLength_anterior) annotation (Placement(
        visible=true, transformation(
        origin={-55,20},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  parameter Modelica.SIunits.TranslationalDampingConstant d_front;
  parameter Modelica.SIunits.TranslationalSpringConstant c_posterior;
  parameter Modelica.SIunits.TranslationalDampingConstant d_posterior;
  parameter Modelica.SIunits.Distance freeLength_posterior;
  parameter Modelica.SIunits.Distance freeLength_anterior;
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {0, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -92.39400000000001}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance distance1 annotation(Placement(visible = true, transformation(origin = {75, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance distance3 annotation(Placement(visible = true, transformation(origin = {-55, -90}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {0, 87.86199999999999}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, 83.678}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(Placement(visible = true, transformation(origin = {55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {100, 66.895}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.ContactObject.NonLinearSpringDamper nonLinearSpringDamper1
    (d=d_posterior) annotation (Placement(visible=true, transformation(
        origin={45,-70},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant const(k = c_posterior) annotation(Placement(visible = true, transformation(origin = {120, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {-81.871, -65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {100, 87.489}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {-81.84399999999999, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 0.5, 0.4; 0.67, 0.83; 1, 1; 1.25, 1; 1.5, 0.77; 1.7, 0.65; 2.15, 0.5; 2.3, 0.58; 2.5, 1], tableOnFile = false) annotation(Placement(visible = true, transformation(origin = {-81.86, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product annotation(Placement(visible = true, transformation(origin = {-48.266, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(kNominal, product.u2) annotation(Line(visible = true, origin = {-76.7, 57}, points = {{-43.3, 3}, {13.434, 3}, {13.434, -3}, {16.434, -3}}, color = {0, 0, 127}));
  connect(product.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-43.16, 40.85}, points = {{5.894, 19.15}, {8.894, 19.15}, {8.894, -7.85}, {-11.84, -7.85}, {-11.84, -22.599}}, color = {0, 0, 127}));
  connect(combiTable1D.y[1], product.u1) annotation(Line(visible = true, origin = {-64.414, 73}, points = {{-6.446, 7}, {1.148, 7}, {1.148, -7}, {4.148, -7}}, color = {0, 0, 127}));
  connect(add.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-35.516, 24.2}, points = {{90.51600000000001, -35.2}, {90.51600000000001, -38.2}, {-61.344, -38.2}, {-61.344, 55.8}, {-58.344, 55.8}}, color = {0, 0, 127}));
  connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {108.667, 80.426}, points = {{1.333, 7.063}, {1.333, -3.531}, {-2.667, -3.531}}, color = {0, 127, 0}));
  connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {91.333, 80.426}, points = {{-1.333, 7.063}, {-1.333, -3.531}, {2.667, -3.531}}, color = {0, 127, 0}));
  connect(nonLinearSpringDamper.springForce, force2.f) annotation(Line(visible = true, origin = {56.838, 59.744}, points = {{-103.486, -31.744}, {30.162, -31.744}, {30.162, 31.744}, {43.162, 31.744}}, color = {0, 0, 127}));
  connect(nonLinearSpringDamper1.springForce, force2_1.f) annotation(Line(visible = true, origin = {-45.721, -51.5}, points = {{82.37, -10.5}, {-23.123, -10.5}, {-23.123, 10.5}, {-36.123, 10.5}}, color = {0, 0, 127}));
  connect(force2_1.flange_b, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-73.187, -51.667}, points = {{1.342, 6.667}, {1.342, -3.333}, {-2.684, -3.333}}, color = {0, 127, 0}));
  connect(force2_1.flange_a, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {-90.52, -51.667}, points = {{-1.324, 6.667}, {-1.324, -3.333}, {2.649, -3.333}}, color = {0, 127, 0}));
  connect(lineForceWithMass1.frame_a, frame_b) annotation(Line(visible = true, origin = {-27.468, -78}, points = {{-44.403, 13}, {8.468, 13}, {8.468, -13}, {27.468, -13}}));
  connect(lineForceWithMass1.frame_b, frame_a_P) annotation(Line(visible = true, origin = {-118.468, -77.5}, points = {{26.597, 12.5}, {-2.532, 12.5}, {-2.532, -12.5}, {-21.532, -12.5}}));
  connect(const.y, nonLinearSpringDamper1.k) annotation(Line(visible = true, origin = {69.006, -55.875}, points = {{39.994, 15.875}, {-7.994, 15.875}, {-7.994, -15.875}, {-24.006, -15.875}}, color = {0, 0, 127}));
  connect(nonLinearSpringDamper1.frame_a, frame_b_p) annotation(Line(visible = true, origin = {109.25, -80}, points = {{-54.25, 10}, {11.75, 10}, {11.75, -10}, {30.75, -10}}));
  connect(nonLinearSpringDamper1.frame_b, frame_b) annotation(Line(visible = true, origin = {18.25, -80.5}, points = {{16.75, 10.5}, {0.75, 10.5}, {0.75, -10.5}, {-18.25, -10.5}}));
  connect(distance3.distance, nonLinearSpringDamper1.s2) annotation(Line(visible = true, origin = {13.005, -63.4}, points = {{-68.005, -15.6}, {-68.005, 6.4}, {48.008, 6.4}, {48.008, 1.4}, {39.995, 1.4}}, color = {0, 0, 127}));
  connect(distance3.frame_b, frame_a_P) annotation(Line(visible = true, origin = {-102.5, -90}, points = {{37.5, 0}, {-37.5, 0}}));
  connect(lineForceWithMass.frame_b, frame_b1) annotation(Line(visible = true, origin = {130.667, 51.263}, points = {{-20.667, 15.632}, {10.333, 15.632}, {10.333, -31.263}}));
  connect(lineForceWithMass.frame_a, frame_b2) annotation(Line(visible = true, origin = {32, 77.378}, points = {{58, -10.484}, {-13, -10.484}, {-13, 10.484}, {-32, 10.484}}));
  connect(nonLinearSpringDamper.frame_b, frame_b2) annotation(Line(visible = true, origin = {-15, 42.621}, points = {{-30, -22.621}, {15, -22.621}, {15, 45.241}}, color = {95, 95, 95}));
  connect(distance1.distance, nonLinearSpringDamper.s2) annotation(Line(visible = true, origin = {24.558, 29.167}, points = {{50.442, -0.167}, {50.442, -3.167}, {37.117, -3.167}, {37.117, 3.833}, {-87.55800000000001, 3.833}, {-87.55800000000001, -1.167}}, color = {0, 0, 127}));
  connect(distance.distance, add.u2) annotation(Line(visible = true, origin = {39.5, 17.75}, points = {{-9.5, 11.25}, {-9.5, -2.75}, {9.5, -2.75}, {9.5, -5.75}}, color = {0, 0, 127}));
  connect(distance1.distance, add.u1) annotation(Line(visible = true, origin = {68, 17.75}, points = {{7, 11.25}, {7, -2.75}, {-7, -2.75}, {-7, -5.75}}, color = {0, 0, 127}));
  connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-89.75, 30}, points = {{109.75, 10}, {-30.25, 10}, {-30.25, -10}, {-49.25, -10}}));
  connect(frame_b2, distance.frame_b) annotation(Line(visible = true, origin = {25.29, 61.117}, points = {{-25.29, 26.745}, {-25.29, 7.745}, {17.935, 7.745}, {17.935, -21.117}, {14.71, -21.117}}));
  connect(frame_b2, distance1.frame_a) annotation(Line(visible = true, origin = {47.087, 63.931}, points = {{-47.087, 23.931}, {14.587, 23.931}, {14.587, -23.931}, {17.913, -23.931}}));
  connect(distance3.frame_a, frame_b) annotation(Line(visible = true, origin = {-20.75, -90.5}, points = {{-24.25, 0.5}, {1.75, 0.5}, {1.75, -0.5}, {20.75, -0.5}}));
  connect(distance1.frame_b, frame_b1) annotation(Line(visible = true, origin = {117.5, 30}, points = {{-32.5, 10}, {4.5, 10}, {4.5, -10}, {23.5, -10}}));
  connect(frame_a1, nonLinearSpringDamper.frame_a) annotation(Line(visible = true, origin = {-102, 20}, points = {{-37, -0}, {37, 0}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PhysicalMuscle2;
