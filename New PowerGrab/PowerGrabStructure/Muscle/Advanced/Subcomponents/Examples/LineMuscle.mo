within PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples;
model LineMuscle
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LineMuscle(lineShapeColor = muscleColor, lineShapeWidth = 0.001, lineShapeHeight = 0.001) annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force forceMagnitude(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-80, -17.356}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput muscleMagnitude "Percent value of total anterior force" annotation(Placement(visible = true, transformation(origin = {-145, -17.63}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 95.98699999999999}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  parameter Integer muscleColor[3] = {155, 0, 0};
equation
  connect(forceMagnitude.flange, LineMuscle.flange_a) annotation(Line(visible = true, origin = {-27.333, -4.904}, points = {{-42.667, -12.452}, {21.333, -12.452}, {21.333, 24.904}}, color = {0, 127, 0}));
  connect(muscleMagnitude, forceMagnitude.f) annotation(Line(visible = true, origin = {-106.75, -17.493}, points = {{-38.25, -0.137}, {11.75, -0.137}, {11.75, 0.137}, {14.75, 0.137}}, color = {0, 0, 127}));
  connect(LineMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 43.395}, points = {{-89.479, -13.395}, {23.493, -13.395}, {23.493, 13.395}, {42.493, 13.395}}));
  connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
  connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.418}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
  connect(frame_a, LineMuscle.frame_a) annotation(Line(visible = true, origin = {-44.256, 43.717}, points = {{-90.744, 13.717}, {28.244, 13.717}, {28.244, -13.717}, {34.256, -13.717}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {128, 0, 0},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end LineMuscle;
