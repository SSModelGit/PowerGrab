within DiscardedPowerGrabModels.OldTests;
model TestOneJointFingerModel
  PowerGrab.Components.OpenLoopComponent openLoopComponent(K_m = 1100, muscleLengthNom = 0.5013879999999999, r_IFingerBone = {0.5, 0, 0}, r_OFingerBone = {0.5, 0, 0}) annotation(Placement(visible = true, transformation(origin = {0, -1.936}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-66.675, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixedRotation.frame_b, openLoopComponent.frame_a) annotation(Line(visible = true, origin = {-23.032, -15.968}, points = {{-33.643, -14.032}, {10.019, -14.032}, {10.019, 14.032}, {13.604, 14.032}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-88.33799999999999, -30}, points = {{-11.662, 0}, {11.663, 0}}));
  connect(const.y, openLoopComponent.u) annotation(Line(visible = true, origin = {-23.361, 7.493}, points = {{-35.639, 2.507}, {10.348, 2.507}, {10.348, -2.507}, {14.943, -2.507}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestOneJointFingerModel;
