within PowerGrab.FullModels.FingerTrials;

model TrialMultipleFingerArray
  PowerGrab.Components.WholeFingerArray wholeFingerArray annotation(Placement(visible = true, transformation(origin = {-87.553, 0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  PowerGrab.Components.WholeFingerArray wholeFingerArray1 annotation(Placement(visible = true, transformation(origin = {-51.955, 0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  PowerGrab.Components.WholeFingerArray wholeFingerArray2 annotation(Placement(visible = true, transformation(origin = {-22.129, 0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  PowerGrab.Components.WholeFingerArray wholeFingerArray3 annotation(Placement(visible = true, transformation(origin = {12.027, 0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-127.706, -37.394}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 0, -0.15}) annotation(Placement(visible = true, transformation(origin = {-70, -38.133}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-100, -37.747}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0, 0.15}) annotation(Placement(visible = true, transformation(origin = {-70, -52.883}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, 0, -0.4}) annotation(Placement(visible = true, transformation(origin = {-70, -68.339}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixedTranslation2.frame_b, wholeFingerArray3.frame_a) annotation(Line(visible = true, origin = {-13.425, -49.288}, points = {{-46.575, -19.051}, {23.288, -19.051}, {23.288, 38.103}}));
  connect(fixedTranslation1.frame_b, wholeFingerArray.frame_a) annotation(Line(visible = true, origin = {-70.642, -29.59}, points = {{10.642, -23.293}, {13.754, -23.293}, {13.754, 14.09}, {-19.075, 14.09}, {-19.075, 18.405}}));
  connect(fixedTranslation.frame_b, wholeFingerArray2.frame_a) annotation(Line(visible = true, origin = {-36.195, -29.151}, points = {{-23.805, -8.983000000000001}, {11.903, -8.983000000000001}, {11.903, 17.966}}));
  connect(fixedRotation.frame_b, wholeFingerArray1.frame_a) annotation(Line(visible = true, origin = {-72.59699999999999, -25.336}, points = {{-17.403, -12.411}, {-9.778, -12.411}, {-9.778, 5.336}, {18.479, 5.336}, {18.479, 14.151}}));
  connect(fixedRotation.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-83, -37.94}, points = {{-7, 0.193}, {2, 0.193}, {2, -0.193}, {3, -0.193}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-113.433, -37.571}, points = {{-4.273, 0.176}, {0.42, 0.176}, {0.42, -0.176}, {3.433, -0.176}}));
  annotation(experiment(StopTime = 0.05, Algorithm = "dassl"), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TrialMultipleFingerArray;