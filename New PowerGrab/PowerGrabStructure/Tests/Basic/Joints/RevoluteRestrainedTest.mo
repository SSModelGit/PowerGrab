within PowerGrabStructure.Tests.Basic.Joints;
model RevoluteRestrainedTest
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    sideRevolute(
    theta_1=-0.87,
    theta_2=0.87,
    phi_0_restrained=0.05,
    useAxisFlange=true,
    axisRotation={0,1,0}) annotation (Placement(visible=true, transformation(
        origin={-50,-0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(density = 800, r = {0.5, 0, 0},
    r_0(                                                                                       fixed =     false))
                                                                                                                  annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-110, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-70, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, period = 10, offset = 9.81) annotation(Placement(visible = true, transformation(origin = {-130, 42.784}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
    normalRevolute(
    phi_0_restrained=0.05,
    theta_1=-0.1,
    theta_2=1.47,
    useAxisFlange=true) annotation (Placement(visible=true, transformation(
        origin={-20,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 0, offset = -9.81, period = 10) annotation(Placement(visible = true, transformation(origin = {-62.491, 77.78400000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque1 annotation(Placement(visible = true, transformation(origin = {-2.491, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(torque1.flange, sideRevolute.flange_a) annotation(Line(visible = true, origin = {-13.296, 39.2}, points={{20.805,
          40.8},{23.805,40.8},{23.805,-26.2},{-34.2069,-26.2},{-34.2069,-29.2}}));
  connect(trapezoid1.y, torque1.tau) annotation(Line(visible = true, origin = {-25.241, 78.892}, points = {{-26.25, -1.108}, {7.75, -1.108}, {7.75, 1.108}, {10.75, 1.108}}, color = {0, 0, 127}));
  connect(torque.flange, normalRevolute.flange_a) annotation(Line(visible = true, origin = {-31.669, 33.333}, points={{-28.331,
          11.667},{14.1661,11.667},{14.1661,-23.333}}));
  connect(normalRevolute.frame_b, bodyCylinder.frame_a) annotation(Line(visible = true, origin = {1.274, 0}, points={{
          -13.7252,0},{13.726,0}}));
  connect(sideRevolute.frame_b, normalRevolute.frame_a) annotation(Line(visible = true, origin = {-35.023, -0}, points={{-7.4282,
          0},{7.4273,0}}));
  connect(trapezoid.y, torque.tau) annotation(Line(visible = true, origin = {-92.75, 43.892}, points = {{-26.25, -1.108}, {7.75, -1.108}, {7.75, 1.108}, {10.75, 1.108}}, color = {0, 0, 127}));
  connect(fixedRotation.frame_b, sideRevolute.frame_a) annotation(Line(visible = true, origin = {-78.798, -0}, points={{-21.202,
          0},{21.2023,0}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-125, -0}, points = {{-5, 0}, {5, -0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RevoluteRestrainedTest;
