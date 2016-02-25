within PowerGrab.Components.OldComponents;

model NonLinearRotationalSpring
  extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliant(phi_rel.start = 0.5, phi_rel.fixed = false);
  Modelica.SIunits.RotationalSpringConstant c(final min = 0, start = 100000.0) "Spring constant";
  parameter Modelica.SIunits.Angle phi_rel0 = 0 "Unstretched spring angle";
  parameter Modelica.SIunits.Angle brake_left = 0;
  parameter Modelica.SIunits.Angle brake_right = 5;
equation
  tau = c * (phi_rel - phi_rel0);
  if phi_rel - brake_left < 1e-06 then
    c = 10000;
  elseif brake_right - phi_rel < 1e-06 then
    c = 10000;
  else
    c = 0;
  end if annotation(Documentation(info = "<html>
         <p>
         A <b>non-linear 1D rotational spring</b>. The component can be connected either
         between two inertias/gears to describe the shaft elasticity, or between
         a inertia/gear and the housing (component Fixed), to describe
         a coupling of the element with the housing via a spring.
         </p>
         
         </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, 80}, {150, 40}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-150, -40}, {150, -80}}, lineColor = {0, 0, 0}, textString = "c=%c"), Line(points = {{-100, 0}, {-58, 0}, {-43, -30}, {-13, 30}, {17, -30}, {47, 30}, {62, 0}, {100, 0}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-68, 0}, {-68, 65}}, color = {128, 128, 128}), Line(points = {{72, 0}, {72, 65}}, color = {128, 128, 128}), Line(points = {{-68, 60}, {72, 60}}, color = {128, 128, 128}), Polygon(points = {{62, 63}, {72, 60}, {62, 57}, {62, 63}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-22, 62}, {18, 87}}, lineColor = {0, 0, 255}, textString = "phi_rel"), Line(points = {{-96, 0}, {-60, 0}, {-42, -32}, {-12, 30}, {18, -30}, {48, 28}, {62, 0}, {96, 0}}, color = {0, 0, 255})}));
end NonLinearRotationalSpring;