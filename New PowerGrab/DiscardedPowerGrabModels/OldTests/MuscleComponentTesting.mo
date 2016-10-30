within DiscardedPowerGrabModels.OldTests;
model MuscleComponentTesting
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-128.385, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(r = {0, 0, 0}, angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-95, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.5, 0.8, 0}) annotation(Placement(visible = true, transformation(origin = {-16.744, -17.273}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = 1, r_CM = {0.001, 0, 0},
    r_0(                                                                    fixed =     false))
                                                                                               annotation(Placement(visible = true, transformation(origin = {135, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.5, -0.8, 0}) annotation(Placement(visible = true, transformation(origin = {-16.771, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.PhysicalMuscle physicalMuscle(d_front = 20, c_posterior = 50, d_posterior = 100, freeLength_posterior = 0) annotation(Placement(visible = true, transformation(origin = {35, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(height = 500, duration = 90) annotation(Placement(visible = true, transformation(origin = {-60, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ramp.y, physicalMuscle.kNominal) annotation(Line(visible = true, origin = {5.5, 17.5}, points = {{-54.5, 17.5}, {16.5, 17.5}, {16.5, -17.5}, {21.5, -17.5}}, color = {0, 0, 127}));
  connect(physicalMuscle.frame_a_P, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {3.043, -12.436}, points = {{23.135, 4.836}, {-6.674, 4.836}, {-6.674, -4.837}, {-9.787000000000001, -4.837}}));
  connect(physicalMuscle.frame_b_p, body.frame_a) annotation(Line(visible = true, origin = {103.244, -4}, points = {{-59.244, -4}, {18.744, -4}, {18.744, 4}, {21.756, 4}}));
  connect(physicalMuscle.frame_b1, body.frame_a) annotation(Line(visible = true, origin = {103.244, 3.8}, points = {{-59.244, 3.8}, {18.744, 3.8}, {18.744, -3.8}, {21.756, -3.8}}));
  connect(fixedTranslation1.frame_b, physicalMuscle.frame_a1) annotation(Line(visible = true, origin = {15.807, 11.2}, points = {{-22.578, 3.8}, {6.193, 3.8}, {6.193, -3.8}, {10.193, -3.8}}));
  connect(fixedRotation.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {-42.828, 7.5}, points = {{-42.172, -7.5}, {13.057, -7.5}, {13.057, 7.5}, {16.057, 7.5}}, smooth = Smooth.Bezier, color = {95, 95, 95}));
  connect(fixedRotation.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-42.808, -8.635999999999999}, points = {{-42.192, 8.635999999999999}, {13.064, 8.635999999999999}, {13.064, -8.635999999999999}, {16.064, -8.635999999999999}}, smooth = Smooth.Bezier, color = {95, 95, 95}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-111.693, 0}, points = {{-6.693, 0}, {6.693, 0}}, color = {95, 95, 95}));
  annotation(experiment(StopTime = 200.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MuscleComponentTesting;
