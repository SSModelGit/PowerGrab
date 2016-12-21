within DiscardedPowerGrabModels.OldComponents;
model MuscleComponent
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-116.974, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.77, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {120, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {80.80800000000001, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {0, 32.456}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-8.114000000000001, 65}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {1.188, 61.905}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(u, force2.f) annotation(Line(visible = true, origin = {-4.057, 47.092}, points = {{-4.057, 17.908}, {-4.057, -3.636}, {4.057, -3.636}, {4.057, -10.636}}, color = {0, 0, 127}));
  connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {9.6, 20.312}, points = {{0.4, 12.143}, {3.4, 12.143}, {3.4, -6.987}, {-3.6, -6.987}, {-3.6, -10.312}}, color = {0, 127, 0}));
  connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-9.6, 20.312}, points = {{-0.4, 12.143}, {-3.4, 12.143}, {-3.4, -6.987}, {3.6, -6.987}, {3.6, -10.312}}, color = {0, 127, 0}));
  connect(lineForceWithMass.frame_b, frame_b) annotation(Line(visible = true, origin = {65, 0}, points = {{-55, 0}, {55, 0}}));
  connect(frame_a, lineForceWithMass.frame_a) annotation(Line(visible = true, origin = {-63.487, 0}, points = {{-53.487, 0}, {53.487, 0}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MuscleComponent;
