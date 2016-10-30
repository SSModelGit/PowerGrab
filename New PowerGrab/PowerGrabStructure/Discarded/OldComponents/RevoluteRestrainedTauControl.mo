within PowerGrabStructure.Discarded.OldComponents;
model RevoluteRestrainedTauControl
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true, phi(
                                                                              start =     0.19, fixed =     true))
                                                                                                                  annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque2 torque2 annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-96.57299999999999, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0.1, 0}, m = 1,
    r_0(                                                                  start =     {0, 0.5, 0}, fixed =     true))
                                                                                                                     annotation(Placement(visible = true, transformation(origin = {53.181, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {-65, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.SIunits.Angle phi_rel;
  Modelica.SIunits.Angle y;
  parameter Modelica.SIunits.Angle phi_0 = 1;
  parameter Modelica.SIunits.Torque k0 = 5;
  parameter Real a = 5;
equation
  connect(fixedTranslation.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-32.5, 0}, points = {{-22.5, 0}, {22.5, 0}}, color = {95, 95, 95}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-80.786, 0}, points = {{-5.786, 0}, {5.786, 0}}));
  connect(revolute.frame_b, body.frame_a) annotation(Line(visible = true, origin = {26.591, 0}, points = {{-16.591, 0}, {16.591, 0}}));
  phi_rel = revolute.axis.phi - revolute.support.phi;
  connect(torque2.flange_b, revolute.axis) annotation(Line(visible = true, origin = {7.2, 19.29}, points = {{2.8, 10.71}, {5.8, 10.71}, {5.8, -6.065}, {-7.2, -6.065}, {-7.2, -9.289999999999999}}));
  connect(torque2.flange_a, revolute.support) annotation(Line(visible = true, origin = {-9.6, 19.29}, points = {{-0.4, 10.71}, {-3.4, 10.71}, {-3.4, -6.065}, {3.6, -6.065}, {3.6, -9.289999999999999}}));
  y = (phi_rel / phi_0) ^ 7;
  torque2.tau = -k0 * y / (y + a);
  annotation(experiment(StopTime = 10), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RevoluteRestrainedTauControl;
