within DiscardedPowerGrabModels.OldTests;
model TestPrismaticRestrictedOneDirectionalNegativeStop
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
    s(                                                                          fixed =   false),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-2.469, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
    r_0(                                                                start =     {0, 1, 0}, fixed =     true))
                                                                                                                 annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-45, 27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-116.946, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {-1.587, 18.256}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = -5) annotation(Placement(visible = true, transformation(origin = {-120, 67.20399999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const1.y, force.force[2]) annotation(Line(visible = true, origin = {-70.333, 57.975}, points = {{-38.667, 9.228999999999999}, {19.333, 9.228999999999999}, {19.333, -18.458}}, color = {0, 0, 127}));
  connect(elastoGap.flange_b, prismatic.axis) annotation(Line(visible = true, origin = {7.452, 10.085}, points = {{0.96, 8.170999999999999}, {0.96, -4.085}, {-1.921, -4.085}}, color = {0, 127, 0}));
  connect(elastoGap.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-9.881, 10.085}, points = {{-1.706, 8.170999999999999}, {-1.706, -4.085}, {3.412, -4.085}}, color = {0, 127, 0}));
  connect(const.y, force.force[3]) annotation(Line(visible = true, origin = {-79.236, 27.258}, points = {{-26.709, -12.258}, {-0.764, -12.258}, {-0.764, 12.258}, {28.236, 12.258}}, color = {0, 0, 127}));
  connect(const.y, force.force[1]) annotation(Line(visible = true, origin = {-82.767, 30.91}, points = {{-23.178, -15.91}, {-20.178, -15.91}, {-20.178, 11.607}, {31.767, 11.607}, {31.767, 8.606999999999999}}, color = {0, 0, 127}));
  connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-35.858, -22.5}, points = {{-64.142, -22.5}, {20.376, -22.5}, {20.376, 22.5}, {23.389, 22.5}}));
  connect(world.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-67.75, -8.742000000000001}, points = {{-32.25, -36.258}, {9.75, -36.258}, {9.75, 36.258}, {12.75, 36.258}}));
  connect(force.frame_b, body.frame_a) annotation(Line(visible = true, origin = {4.744, 13.758}, points = {{-39.744, 13.758}, {12.244, 13.758}, {12.244, -13.758}, {15.256, -13.758}}));
  connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.765, 0}, points = {{-6.234, 0}, {6.235, 0}}));
  annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestPrismaticRestrictedOneDirectionalNegativeStop;
