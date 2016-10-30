within DiscardedPowerGrabModels.OldTests;
model MuscleTissueTest
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 0.5) annotation(Placement(visible = true, transformation(origin = {-90, 62.037}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.MuscleTissue2 muscleTissue2(K_m = 1, muscleLengthNom = 0.5) annotation(Placement(visible = true, transformation(origin = {12.306, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-88.361, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const.y, muscleTissue2.u1) annotation(Line(visible = true, origin = {-18.772, -3.373}, points = {{-58.589, -6.627}, {18.078, -6.627}, {18.078, 6.627}, {22.434, 6.627}}, color = {0, 0, 127}));
  connect(ramp.y, muscleTissue2.u) annotation(Line(visible = true, origin = {-19.209, 39.728}, points = {{-59.791, 22.309}, {18.515, 22.309}, {18.515, -22.309}, {22.761, -22.309}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 15.0));
end MuscleTissueTest;
