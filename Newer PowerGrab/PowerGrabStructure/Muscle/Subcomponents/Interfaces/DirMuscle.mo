within PowerGrabStructure.Muscle.Subcomponents.Interfaces;
partial model DirMuscle

  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput muscleMagnitude "Percent value of total anterior force" annotation(Placement(visible = true, transformation(origin = {-145, -17.63}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 95.98699999999999}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {128, 0, 0},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end DirMuscle;
