within PowerGrabStructure.Discarded.OldComponents;
model MuscleTissue
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(table = [0, 0; 0.5, 0.4; 0.67, 0.83; 1, 1; 1.25, 1; 1.5, 0.77; 1.7, 0.65; 2.15, 0.5; 2.3, 0.58; 2.5, 1]) annotation(Placement(visible = true, transformation(origin = {-8.329000000000001, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-145, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-87.542, 74.19499999999999}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 2.5) annotation(Placement(visible = true, transformation(origin = {-42.55, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {30, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant kMuscle(k = K_m) annotation(Placement(visible = true, transformation(origin = {-55, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.TranslationalSpringConstant K_m;
  Modelica.Blocks.Math.Product product2 annotation(Placement(visible = true, transformation(origin = {70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-145, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-92.05500000000001, -76.19}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {150, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {82.334, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length muscleLengthNom;
  Modelica.Blocks.Math.Division division annotation(Placement(visible = true, transformation(origin = {-77.751, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = muscleLengthNom) annotation(Placement(visible = true, transformation(origin = {-130, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(gain.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-25.94, 40}, points = {{-5.611, 0}, {5.611, 0}}, color = {0, 0, 127}));
  connect(product2.y, y) annotation(Line(visible = true, origin = {126.138, -15}, points = {{-45.138, -15}, {10.638, -15}, {10.638, 15}, {23.862, 15}}, color = {0, 0, 127}));
  connect(const.y, division.u2) annotation(Line(visible = true, origin = {-98.563, 29.5}, points = {{-20.437, -4.5}, {5.812, -4.5}, {5.812, 4.5}, {8.811999999999999, 4.5}}, color = {0, 0, 127}));
  connect(u, division.u1) annotation(Line(visible = true, origin = {-105.063, 68}, points = {{-39.937, 22}, {12.312, 22}, {12.312, -22}, {15.312, -22}}, color = {0, 0, 127}));
  connect(division.y, gain.u) annotation(Line(visible = true, origin = {-60.651, 40}, points = {{-6.1, 0}, {6.1, 0}}, color = {0, 0, 127}));
  connect(u1, product2.u2) annotation(Line(visible = true, origin = {5.75, -58}, points = {{-150.75, -22}, {49.25, -22}, {49.25, 22}, {52.25, 22}}, color = {0, 0, 127}));
  connect(product1.y, product2.u1) annotation(Line(visible = true, origin = {52.25, -9.5}, points = {{-11.25, 14.5}, {2.75, 14.5}, {2.75, -14.5}, {5.75, -14.5}}, color = {0, 0, 127}));
  connect(kMuscle.y, product1.u2) annotation(Line(visible = true, origin = {1, -8}, points = {{-45, -7}, {14, -7}, {14, 7}, {17, 7}}, color = {0, 0, 127}));
  connect(combiTable1D.y[2], product1.u1) annotation(Line(visible = true, origin = {12.668, 25.5}, points = {{-9.997, 14.5}, {2.332, 14.5}, {2.332, -14.5}, {5.332, -14.5}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Line(visible = true, origin = {-66.92400000000001, -3.425}, points = {{0, 76.575}, {0, -76.575}}, pattern = LinePattern.Dash), Line(visible = true, origin = {-19.022, -1.729}, points = {{-48.42, -76.608}, {96.84099999999999, 1.729}, {-48.42, 74.879}}, pattern = LinePattern.Dot), Polygon(visible = true, origin = {-19.541, -1.914}, fillColor = {128, 128, 128},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-45.827, 71.914}, {91.65300000000001, 1.914}, {-45.827, -73.82899999999999}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MuscleTissue;
