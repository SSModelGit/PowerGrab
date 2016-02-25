within PowerGrab.Tests;

model RevoluteRestrainedTest
  PowerGrab.Components.RevoluteRestrained revoluteRestrained(theta_1 = -1, theta_2 = 1, phi_0_restrained = 1.57) annotation(Placement(visible = true, transformation(origin = {2.785, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-77.258, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0.5, 0, 0}, m = 1, r_0.start = {0, 0.5, 0}, r_0.fixed = false) annotation(Placement(visible = true, transformation(origin = {45, 1.852}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body1(r_0.fixed = false, r_CM = {0.5, 0, 0}, m = 1) annotation(Placement(visible = true, transformation(origin = {50, -36.784}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(phi.start = phi_0, phi.fixed = false) annotation(Placement(visible = true, transformation(origin = {-5, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Angle phi_0;
  parameter Boolean setAngle;
initial equation
  if setAngle then
    phi_0 = 1;
  else
    phi_0 = 0;
  end if;
equation
  connect(revolute.frame_b, body1.frame_a) annotation(Line(visible = true, origin = {29.744, -40.892}, points = {{-24.744, -4.108}, {7.244, -4.108}, {7.244, 4.108}, {10.256, 4.108}}));
  connect(world.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-29.571, -25}, points = {{-37.687, 20}, {11.558, 20}, {11.558, -20}, {14.571, -20}}));
  connect(world.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-23.125, -2.5}, points = {{-44.133, -2.5}, {12.91, -2.5}, {12.91, 2.5}, {18.314, 2.5}}));
  connect(revoluteRestrained.frame_b, body.frame_a) annotation(Line(visible = true, origin = {27.327, 0.926}, points = {{-16.993, -0.926}, {4.66, -0.926}, {4.66, 0.926}, {7.673, 0.926}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RevoluteRestrainedTest;