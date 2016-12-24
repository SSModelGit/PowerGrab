within DiscardedPowerGrabModels.OldComponents;
model ObjectLFConnection
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Modelica.SIunits.Distance threshold;
  parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
  Boolean contact;
  Modelica.Mechanics.MultiBody.Sensors.Distance deltaX annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.ContactObject.NonLinearSpringDamper nonLinearSpringDamper(
      s_unstretched=threshold) annotation (Placement(visible=true,
        transformation(
        origin={0,55},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(shapeType = "sphere", length = 2 * threshold, width = 2 * threshold, height = 2 * threshold, r_shape = {-threshold, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(nonLinearSpringDamper.frame_b, frame_b) annotation(Line(visible = true, origin = {77.075, 27.5}, points = {{-67.075, 27.5}, {16.025, 27.5}, {16.025, -27.5}, {35.025, -27.5}}));
  connect(deltaX.frame_b, frame_b) annotation(Line(visible = true, origin = {77.075, 15}, points = {{-67.075, 15}, {16.025, 15}, {16.025, -15}, {35.025, -15}}));
  connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
  connect(nonLinearSpringDamper.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
  connect(deltaX.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
  contact = deltaX.distance < threshold;
  nonLinearSpringDamper.k = smooth(1, noEvent(if contact then k else 0));
  nonLinearSpringDamper.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true,
            fillPattern =                                                                                                                                                                   FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {3.683, 1.181}, extent = {{-13.683, -8.819000000000001}, {13.683, 8.819000000000001}}, textString = "LF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ObjectLFConnection;
