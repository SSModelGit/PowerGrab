within PowerGrabStructure.Finger.Muscle.Subcomponents.Examples;
model MagnitudeMuscle
  extends
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.MagnitudeMuscle;
  parameter Modelica.SIunits.Force f_max "Maximum value for anterior muscle force";
equation
  fMagnitude = forcePValue * f_max;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MagnitudeMuscle;
