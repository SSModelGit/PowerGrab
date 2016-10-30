within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Joints;
model NewRevoluteTest
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-77.821, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    revoluteRestrained(
    theta_1=-0.1,
    theta_2=1.47,
    phi_0_restrained=0.05,
    useAxisFlange=true) annotation (Placement(visible=true, transformation(
        origin={-23.081,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(density = 800, r = {0.5, 0, 0},
  r_0(                                                                                         fixed =     false))
                                                                                                                  annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-70, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, period = 10, offset = -9.81) annotation(Placement(visible = true, transformation(origin = {-130, 42.784}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(trapezoid.y, torque.tau) annotation(Line(visible = true, origin = {-92.75, 43.892}, points = {{-26.25, -1.108}, {7.75, -1.108}, {7.75, 1.108}, {10.75, 1.108}}, color = {0, 0, 127}));
  connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-33.723, 33.333}, points={{-26.277,
        11.667},{13.1391,11.667},{13.1391,-23.333}}));
  connect(fixedRotation.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-35.338, 0}, points={{-4.662,
        0},{4.6613,0}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-63.91, 0}, points={{-3.911,
        0},{3.91,0}}));
  connect(revoluteRestrained.frame_b, bodyCylinder.frame_a) annotation(Line(visible = true, origin = {-0.266, 0}, points={{
        -15.2662,0},{15.266,0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end NewRevoluteTest;
