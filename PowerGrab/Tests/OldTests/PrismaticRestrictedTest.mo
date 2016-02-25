within PowerGrab.Tests.OldTests;

model PrismaticRestrictedTest
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-115, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(phi.start = 1.57, phi.fixed = true) annotation(Placement(visible = true, transformation(origin = {-80, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(density = 1100, r_shape = {0.5, 0, 0}, r = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-50, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Spring spring(c = 50) annotation(Placement(visible = true, transformation(origin = {-61.736, 13.053}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {-20, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 0.5, c_upper = 2000, d_upper = 1000, c_bottom = 2000, d_bottom = 1000) annotation(Placement(visible = true, transformation(origin = {7.056, -27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(m = 1, r_CM = {0, 0.005, 0}, r = {0, 0.01, 0}, r_0.fixed = false) annotation(Placement(visible = true, transformation(origin = {12.7, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(bodyShape.frame_b, spring.frame_b) annotation(Line(visible = true, origin = {-35.121, 4.026}, points = {{37.821, -9.026}, {-10.603, -9.026}, {-10.603, 9.026}, {-16.615, 9.026}}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {21.147, -15.544}, points = {{-6.684, -10.544}, {2.566, -10.544}, {2.566, 10.544}, {1.553, 10.544}}));
  connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-5.729, -25.544}, points = {{-4.271, 0.544}, {-0.216, 0.544}, {-0.216, -0.544}, {4.703, -0.544}}));
  connect(bodyBox.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-35, -25}, points = {{-5, 0}, {5, 0}}));
  connect(fixedTranslation.frame_b, spring.frame_a) annotation(Line(visible = true, origin = {-73.91200000000001, 18.702}, points = {{-1.088, 11.298}, {-1.088, -5.649}, {2.176, -5.649}}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-99, 15}, points = {{-6, -15}, {1, -15}, {1, 15}, {4, 15}}));
  connect(revolute.frame_b, bodyBox.frame_a) annotation(Line(visible = true, origin = {-65, -25}, points = {{-5, 0}, {5, 0}}));
  connect(world.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-95.256, -12.5}, points = {{-9.744, 12.5}, {2.244, 12.5}, {2.244, -12.5}, {5.256, -12.5}}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PrismaticRestrictedTest;