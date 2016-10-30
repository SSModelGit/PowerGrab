within PowerGrabStructure.Discarded.OldTests;
model TestPrismaticRestrictedComponent
  PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
    r_0(                                                                start =     {0, 0.5, 0}, fixed =     true))
                                                                                                                   annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
  connect(prismaticRestricted.frame_b, body.frame_a) annotation(Line(visible = true, origin = {15.346, -0.33}, points = {{-7.938, -0.33}, {1.642, -0.33}, {1.642, 0.33}, {4.654, 0.33}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestPrismaticRestrictedComponent;
