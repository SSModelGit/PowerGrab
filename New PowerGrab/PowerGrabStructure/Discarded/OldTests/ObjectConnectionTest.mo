within PowerGrabStructure.Discarded.OldTests;
model ObjectConnectionTest
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}, r = {-0.1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-100, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OldComponents.ObjectLFConnection objectConnection annotation (Placement(
        visible=true, transformation(
        origin={-35,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0.01, 0}, m = 1,
    r_0(                                                                   start =     {0.1, 1, 0}, fixed =     true),angles_fixed = true) annotation(Placement(visible = true, transformation(origin = {65, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(objectConnection.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-66.298, -0}, points={{23.7023,
          0},{-23.702,0}},                                                                                                                                color = {95, 95, 95}));
  connect(objectConnection.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.774, 0}, points={{
          -41.2252,0},{41.226,0}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-115, -0}, points = {{-5, 0}, {5, -0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ObjectConnectionTest;
