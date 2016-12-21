within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Sources;
model FingerLoad
  Modelica.Blocks.Interfaces.RealInput force annotation(Placement(visible = true, transformation(origin = {-135, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 66.667}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput theta1 annotation(Placement(visible = true, transformation(origin = {-135, 7.056}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 6.72}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput theta2 annotation(Placement(visible = true, transformation(origin = {-136.995, -62.324}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-92.253, -59.356}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput tau1 annotation(Placement(visible = true, transformation(origin = {125, 82.616}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.31399999999999, 48.132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput tau2 annotation(Placement(visible = true, transformation(origin = {125, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.91200000000001, 13.127}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput tau3 annotation(Placement(visible = true, transformation(origin = {125, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88.438, -22.119}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length r1 "Length of the moment arm about the furthest phalange joint";
  parameter Modelica.SIunits.Length r2 "Length of the moment arm about the middle phalange joint";
  parameter Modelica.SIunits.Length r3 "Length of the moment arm about the closest phalange joint";
equation
  tau1 = force * r1;
  tau2 = force * r2 * Modelica.Math.cos(theta1);
  tau3 = force * r3 * Modelica.Math.cos(theta1 + theta2);
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.315, 1.218}, fillColor = {128, 0, 128},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-86.62, -88.782}, {86.62, 88.782}}), Text(visible = true, origin = {-94.494, 97.32899999999999}, extent = {{-29.608, -10.394}, {29.608, 10.394}}, textString = "force"), Text(visible = true, origin = {-96.104, 36.853}, extent = {{-33.896, -9.763999999999999}, {33.896, 9.763999999999999}}, textString = "theta1"), Text(visible = true, origin = {-95.828, -30}, extent = {{-24.172, -10}, {24.172, 10}}, textString = "theta2"), Text(visible = true, origin = {81.813, 64.608}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau1"), Text(visible = true, origin = {81.813, 30}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau2"), Text(visible = true, origin = {81.813, -2.718}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau3")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end FingerLoad;
