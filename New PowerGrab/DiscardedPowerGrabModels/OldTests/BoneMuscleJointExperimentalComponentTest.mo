within DiscardedPowerGrabModels.OldTests;
model BoneMuscleJointExperimentalComponentTest
  "Testing the experimental fundamental unit component for validity"
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents.BoneMuscleJointExperimentalComponent
    boneMuscleJointComponent annotation (Placement(visible=true, transformation(
        origin={0,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0.1) annotation(Placement(visible = true, transformation(origin = {-120, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 3) annotation(Placement(visible = true, transformation(origin = {10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 1) annotation(Placement(visible = true, transformation(origin = {-117.593, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(height = 0, duration = 0.0, offset = 1.1) annotation(Placement(visible = true, transformation(origin = {2.352, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ramp.y, boneMuscleJointComponent.F_A) annotation(Line(visible = true, origin = {-35.398, 26.305}, points={{-71.195,
          18.695},{22.398,18.695},{22.398,-18.6951},{26.398,-18.6951}},                                                                                                                           color = {0, 0, 127}));
  connect(const.y, boneMuscleJointComponent.F_P) annotation(Line(visible = true, origin = {-36, -31.153}, points={{-73,
          -23.847},{23,-23.847},{23,23.8474},{27,23.8474}},                                                                                                                     color = {0, 0, 127}));
  connect(boneMuscleJointComponent.LoadTorque, const1.y) annotation(Line(visible = true, origin = {19.881, -28.704}, points={{-9.3581,
          21.2957},{4.119,21.2957},{4.119,-21.296},{1.119,-21.296}},                                                                                                                                               color = {0, 0, 127}));
  connect(ramp1.y, boneMuscleJointComponent.RevoluteJointTheta) annotation(Line(visible = true, origin = {14.014, 26.5}, points = {{-0.662, 18.5}, {2.338, 18.5}, {2.338, -18.5}, {-4.014, -18.5}}, color = {0, 0, 127}));
  connect(world.frame_b, boneMuscleJointComponent.frame_a) annotation(Line(visible = true, origin = {-60, 0}, points = {{-50, 0}, {50, 0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end BoneMuscleJointExperimentalComponentTest;
