within DiscardedPowerGrabModels.OldTests;
model TableUseTest
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(tableOnFile = false, table = [0, 1; 1, 1], smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(height = 150, duration = 90) annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ramp.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-75.5, 0}, points = {{-23.5, 0}, {23.5, 0}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TableUseTest;
