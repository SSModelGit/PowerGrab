within PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces;
partial model MagnitudeMuscle

  Modelica.Blocks.Interfaces.RealInput forcePValue "Percent value of total force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.807, -5.685}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput fMagnitude annotation(Placement(visible = true, transformation(origin = {31.75, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106.85, -5.908}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MagnitudeMuscle;
