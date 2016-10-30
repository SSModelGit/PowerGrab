within PowerGrabStructure.Discarded.OldComponents;
model NonLinearSpringDamper
  import Modelica.Mechanics.MultiBody.Types;
  parameter Boolean animation = true "= true, if animation shall be enabled";
  input Modelica.SIunits.Distance width = world.defaultForceWidth "Width of spring" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  input Modelica.SIunits.Distance coilWidth = width / 10 "Width of spring coil" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  parameter Integer numberOfWindings = 5 "Number of spring windings" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor "Color of spring" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
  input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
  extends
    Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort(      final T = 293.15);
  Modelica.Blocks.Interfaces.RealInput k "Non-linear stiffness of the spring" annotation(Placement(visible = true, transformation(origin = {-100, -70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -57.521}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
  Modelica.Blocks.Interfaces.RealInput d annotation(Placement(visible = true, transformation(origin = {-100, 74.52500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
  parameter Modelica.SIunits.Length s_unstretched = 0 "Unstretched spring length";
  Modelica.Blocks.Interfaces.RealOutput y if fMagDesired annotation(Placement(visible = true, transformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Boolean fMagDesired = false;
protected
  Modelica.SIunits.Force f_d "Damping force";
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape shape(shapeType = "spring", color = color, length = s, width = width, height = coilWidth * 2, lengthDirection = e_a, widthDirection = {0, 1, 0}, extra = numberOfWindings, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
equation
  f_d = d * der(s);
  f = k * (s - s_unstretched) + f_d;
  lossPower = f_d * der(s);
  y = abs(f);
  annotation(Documentation(info = "<HTML>
                   <p>
                   <b>Linear spring</b> and <b>linear damper</b>
                   in parallel acting as line force between frame_a and frame_b.
                   A <b>force f</b> is exerted on the origin of frame_b and with opposite sign
                   on the origin of frame_a along the line from the origin of frame_a to the origin
                   of frame_b according to the equation:
                   </p>
                   <pre>
                      f = c*(s - s_unstretched) + d*<b>der</b>(s);
                   </pre>
                   <p>
                   where \"c\", \"s_unstretched\" and \"d\" are parameters, \"s\" is the
                   distance between the origin of frame_a and the origin of frame_b
                   and der(s) is the time derivative of s.
                   </p>
                   </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, fillColor = {192, 192, 192},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-52, -100}, {38, -40}}), Text(visible = true, textColor = {0, 0, 255}, extent = {{-150, -150}, {150, -110}}, textString = "%name"), Line(visible = true, points = {{-80, 40}, {-60, 40}, {-45, 10}, {-15, 70}, {15, 10}, {45, 70}, {60, 40}, {80, 40}}), Line(visible = true, points = {{-80, 40}, {-80, -70}}), Line(visible = true, points = {{-80, -70}, {-52, -70}}), Line(visible = true, points = {{-52, -40}, {68, -40}}), Line(visible = true, points = {{-52, -100}, {68, -100}}), Line(visible = true, points = {{38, -70}, {80, -70}}), Line(visible = true, points = {{80, 40}, {80, -70}}), Line(visible = true, points = {{-100, 0}, {-80, 0}}), Line(visible = true, points = {{80, 0}, {100, 0}}), Line(visible = useHeatPort, points = {{-100, -101}, {-100, -80}, {-6, -80}}, color = {191, 0, 0}, pattern = LinePattern.Dot), Text(visible = true, origin = {-70, 65.92100000000001}, extent = {{-8.948, -11.511}, {8.948, 11.511}}, textString = "d"), Text(visible = true, origin = {-110, -60}, extent = {{-13.378, -9.118}, {13.378, 9.118}}, textString = "k")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 32}, {-58, 32}, {-43, 2}, {-13, 62}, {17, 2}, {47, 62}, {62, 32}, {80, 32}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-68, 32}, {-68, 97}}, color = {128, 128, 128}), Line(points = {{72, 32}, {72, 97}}, color = {128, 128, 128}), Line(points = {{-68, 92}, {72, 92}}, color = {128, 128, 128}), Polygon(points = {{62, 95}, {72, 92}, {62, 89}, {62, 95}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-20, 72}, {20, 97}}, lineColor = {0, 0, 255}, textString = "s"), Rectangle(extent = {{-52, -20}, {38, -80}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-52, -80}, {68, -80}}, color = {0, 0, 0}), Line(points = {{-52, -20}, {68, -20}}, color = {0, 0, 0}), Line(points = {{38, -50}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-80, -50}, {-52, -50}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-80, -50}}, color = {0, 0, 0}), Line(points = {{80, 32}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-100, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{100, 0}, {80, 0}}, color = {0, 0, 0})}));
end NonLinearSpringDamper;
