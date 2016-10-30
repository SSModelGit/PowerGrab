within DiscardedPowerGrabModels.OldComponents;
model ObjectPrismConnection
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Modelica.SIunits.Length boneLength;
  parameter Modelica.SIunits.Distance threshold;
  parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
  Boolean contact;
  parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
  Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {12.261, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance deltaX annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldComponents.NonLinearSpringDamper nonLinearSpringDamper(
      s_unstretched=threshold) annotation (Placement(visible=true,
        transformation(
        origin={0,55},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s(
                                                          fixed =   false),useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {61.951, -1.936}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {43.416, -15.468}, points = {{-21.155, -19.532}, {5.31, -19.532}, {5.31, 19.532}, {10.535, 19.532}}, color = {0, 127, 0}));
  connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {19.596, 3.043}, points = {{-56.364, -3.043}, {-53.364, -3.043}, {-53.364, 8.021000000000001}, {55.368, 8.021000000000001}, {55.368, -4.979}, {52.355, -4.979}}));
  connect(nonLinearSpringDamper.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 26.532}, points = {{-29.851, 28.468}, {8.875, 28.468}, {8.875, -28.468}, {12.1, -28.468}}));
  connect(deltaX.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 14.032}, points = {{-29.851, 15.968}, {8.875, 15.968}, {8.875, -15.968}, {12.1, -15.968}}));
  connect(prismatic.frame_a, frame_b) annotation(Line(visible = true, origin = {92.563, -0.968}, points = {{-20.612, -0.968}, {0.537, -0.968}, {0.537, 0.968}, {19.537, 0.968}}));
  connect(relativePosition.frame_a, frame_a) annotation(Line(visible = true, origin = {-84.782, 0}, points = {{28.014, 0}, {-28.014, 0}}));
  connect(deltaX.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
  connect(nonLinearSpringDamper.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
  connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
  contact = deltaX.distance < threshold;
  nonLinearSpringDamper.k = smooth(1, noEvent(if contact then k else 0));
  nonLinearSpringDamper.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
  position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true,
            fillPattern =                                                                                                                                                                   FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {0.286, -0}, extent = {{-29.714, -7.55}, {29.714, 7.55}}, textString = "PRISM")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ObjectPrismConnection;
