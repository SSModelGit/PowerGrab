within PowerGrabStructure.Discarded.OldComponents;
model MuscleTissue2
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(table = [0, 0; 0.5, 0.4; 0.67, 0.83; 1, 1; 1.25, 1; 1.5, 0.77; 1.7, 0.65; 2.15, 0.5; 2.3, 0.58; 2.5, 1; 2.6, 1; 2.7, 1], smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(visible = true, transformation(origin = {-8.329000000000001, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-147.886, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-87.542, 74.19499999999999}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-148.28, -61.852}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.44, -67.467}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Modelica.SIunits.TranslationalSpringConstant K_m;
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {150, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {82.334, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length muscleLengthNom;
  Modelica.Blocks.Sources.Constant const(k = muscleLengthNom) annotation(Placement(visible = true, transformation(origin = {-127.318, 33.347}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Division division annotation(Placement(visible = true, transformation(origin = {-80, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 2.5) annotation(Placement(visible = true, transformation(origin = {-40, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product annotation(Placement(visible = true, transformation(origin = {46.663, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = K_m) annotation(Placement(visible = true, transformation(origin = {-45, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {100, -27.42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(u1, product1.u2) annotation(Line(visible = true, origin = {27.43, -47.636}, points = {{-175.71, -14.216}, {57.57, -14.216}, {57.57, 14.216}, {60.57, 14.216}}, color = {0, 0, 127}));
  connect(product1.y, y) annotation(Line(visible = true, origin = {133.637, -13.71}, points = {{-22.637, -13.71}, {3.138, -13.71}, {3.138, 13.71}, {16.363, 13.71}}, color = {0, 0, 127}));
  connect(product.y, product1.u1) annotation(Line(visible = true, origin = {78.916, -3.21}, points = {{-21.253, 18.21}, {6.084, 18.21}, {6.084, -18.21}, {9.084, -18.21}}, color = {0, 0, 127}));
  connect(const1.y, product.u2) annotation(Line(visible = true, origin = {15.997, -0.5}, points = {{-49.997, -9.5}, {15.666, -9.5}, {15.666, 9.5}, {18.666, 9.5}}, color = {0, 0, 127}));
  connect(combiTable1D.y[1], product.u1) annotation(Line(visible = true, origin = {25.165, 30.5}, points = {{-22.494, 9.5}, {6.498, 9.5}, {6.498, -9.5}, {9.497999999999999, -9.5}}, color = {0, 0, 127}));
  connect(u, division.u1) annotation(Line(visible = true, origin = {-107.472, 63}, points = {{-40.415, 17}, {12.472, 17}, {12.472, -17}, {15.472, -17}}, color = {0, 0, 127}));
  connect(division.y, gain.u) annotation(Line(visible = true, origin = {-60.5, 40}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
  connect(const.y, division.u2) annotation(Line(visible = true, origin = {-99.58, 33.673}, points = {{-16.739, -0.327}, {4.58, -0.327}, {4.58, 0.327}, {7.58, 0.327}}, color = {0, 0, 127}));
  connect(gain.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-24.665, 40}, points = {{-4.335, 0}, {4.335, 0}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Line(visible = true, origin = {-66.92400000000001, -3.425}, points = {{0, 76.575}, {0, -76.575}}, pattern = LinePattern.Dash), Line(visible = true, origin = {-19.022, -1.729}, points = {{-48.42, -76.608}, {96.84099999999999, 1.729}, {-48.42, 74.879}}, pattern = LinePattern.Dot), Polygon(visible = true, origin = {-19.541, -1.914}, fillColor = {128, 128, 128},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-45.827, 71.914}, {91.65300000000001, 1.914}, {-45.827, -73.82899999999999}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MuscleTissue2;
