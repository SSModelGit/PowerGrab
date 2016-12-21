within DiscardedPowerGrabModels.OldComponents;
model HingeMuscleJoint
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {101, -0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {73.05, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0}, r_CM = {0, 0.005, 0}, m = m,
    r_0(                                                                                                start =     {x_0, y_0, z_0}, fixed =     true))
                                                                                                                                                       annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldComponents.PrismaticRestricted prismaticRestricted(
    l_stop=l_stop,
    c_upper=2000,
    d_upper=200,
    c_bottom=2000,
    d_bottom=200) annotation (Placement(visible=true, transformation(
        origin={1.567,-46.594},
        extent={{-10,-10},{10,10}},
        rotation=-630)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-80.80800000000001, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {0, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -76.19}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Modelica.SIunits.Mass m;
  parameter Modelica.SIunits.Position x_0;
  parameter Modelica.SIunits.Position y_0;
  parameter Modelica.SIunits.Position z_0;
  parameter Modelica.SIunits.Distance l_stop;
equation
  connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {-47.629, 4.333}, points = {{-72.371, -4.333}, {-53.371, -4.333}, {-53.371, 8.667}, {60.742, 8.667}, {60.742, -4.333}, {57.629, -4.333}}));
  connect(bodyShape.frame_b, frame_b) annotation(Line(visible = true, origin = {55.5, 0}, points = {{-45.5, 0}, {45.5, 0}}));
  connect(prismaticRestricted.frame_a, frame_resolve) annotation(Line(visible = true, origin = {0.06900000000000001, -64.169}, points = {{0.06900000000000001, 9.494}, {0.06900000000000001, 3.169}, {-0.06900000000000001, 3.169}, {-0.06900000000000001, -15.831}}));
  connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-7.15, -21.275}, points = {{7.288, -17.912}, {7.288, -12.319}, {-5.863, -12.319}, {-5.863, 21.275}, {-2.85, 21.275}}, color = {95, 95, 95}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true, origin = {0, -7.182}, fillColor = {255, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-96.006, -90.336}, {96.006, 90.336}}), Ellipse(visible = true, origin = {0, -9.449},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-57.452, -52.539}, {57.452, 52.539}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end HingeMuscleJoint;
