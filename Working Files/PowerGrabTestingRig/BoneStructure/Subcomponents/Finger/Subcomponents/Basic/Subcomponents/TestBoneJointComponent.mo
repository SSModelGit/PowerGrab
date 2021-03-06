within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents;
model TestBoneJointComponent
  BoneJointComponent boneJointComponent(phi_0_restrained=0, r_OFingerBone={0.25,
        0,0}) annotation (Placement(visible=true, transformation(
        origin={0,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.TestMuscleComponents.NeuralMuscle
    neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=true,
        transformation(
        origin={0,42.333},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 3) annotation(Placement(visible = true, transformation(origin = {-7.644, -42.333}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  BoneJointComponent boneJointComponent1(phi_0_restrained=0.65, r_IFingerBone={
        0.25,0,0}) annotation (Placement(visible=true, transformation(
        origin={63.5,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.TestMuscleComponents.NeuralMuscle
    neuralMuscle1(f_max_a=200, f_max_p=200) annotation (Placement(visible=true,
        transformation(
        origin={65,42.921},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant const2(k = 0) annotation(Placement(visible = true, transformation(origin = {-55, 53.021}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const3(k = 0) annotation(Placement(visible = true, transformation(origin = {-55, 22.279}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const4(k = 0.11) annotation(Placement(visible = true, transformation(origin = {95, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const5(k = 0.57581) annotation(Placement(visible = true, transformation(origin = {65, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-95, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0.2, rising = 4, falling = 4, width = 2, period = 12, offset = 0) annotation(Placement(visible = true, transformation(origin = {-17.699, 73.23099999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(offset = 0.65, width = 1, falling = 5, rising = 5, period = 12, amplitude = 0.3) annotation(Placement(visible = true, transformation(origin = {103.002, -2.196}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(trapezoid.y, boneJointComponent.thetaControl) annotation(Line(visible = true, origin = {-1.868, 49.821}, points={{-4.831,
          23.41},{1.868,23.41},{1.868,-46.821}},                                                                                                                                 color = {0, 0, 127}));
  connect(trapezoid1.y, boneJointComponent1.thetaControl) annotation(Line(visible = true, origin = {94.175, 3.873}, points={{19.827,
          -6.069},{22.826,-6.069},{22.826,6.943},{-17.675,6.943},{-17.675,
          -0.873},{-30.675,-0.873}},                                                                                                                                                                                                      color = {0, 0, 127}));
  connect(fixedRotation.frame_b, boneJointComponent.frame_a) annotation(Line(visible = true, origin = {-47.5, 0}, points = {{-37.5, 0}, {37.5, 0}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-112.5, 0}, points = {{-7.5, 0}, {7.5, 0}}, color = {95, 95, 95}));
  connect(const3.y, neuralMuscle.forcePValue_p) annotation(Line(visible = true, origin = {-20.678, 30.566}, points={{-23.322,
          -8.287},{5.666,-8.287},{5.666,8.2862},{11.9893,8.2862}},                                                                                                                                                                         color = {0, 0, 127}));
  connect(const2.y, neuralMuscle.forcePValue_a) annotation(Line(visible = true, origin = {-20.676, 49.566}, points={{-23.324,
          3.455},{5.664,3.455},{5.664,-3.4548},{11.9953,-3.4548}},                                                                                                                          color = {0, 0, 127}));
  connect(const4.y, neuralMuscle1.forcePValue_p) annotation(Line(visible = true, origin = {80.048, 62.143}, points={{25.952,
          17.857},{28.952,17.857},{28.952,4.845},{-30.06,4.845},{-30.06,
          -22.7028},{-23.7367,-22.7028}},                                                                                                                                                                                           color = {0, 0, 127}));
  connect(const5.y, neuralMuscle1.forcePValue_a) annotation(Line(visible = true, origin = {65.04900000000001, 64.562}, points={{10.951,
          15.438},{13.951,15.438},{13.951,2.425},{-15.062,2.425},{-15.062,
          -17.8628},{-8.7297,-17.8628}},                                                                                                                                                                                                       color = {0, 0, 127}));
  connect(const.y, boneJointComponent1.LoadTorque) annotation(Line(visible = true, origin = {41.964, -23.667}, points={{-38.608,
          -18.666},{8.536,-18.666},{8.536,18.667},{21.536,18.667}},                                                                                                                                color = {0, 0, 127}));
  connect(boneJointComponent1.frame_b1, neuralMuscle1.frame_b1) annotation(Line(visible = true, origin = {76.998, 12.761}, points={{-3.498,
          -20.161},{2.748,-20.161},{2.748,20.16},{-1.998,20.16}}));
  connect(boneJointComponent1.frame_resolve1, neuralMuscle1.frame_resolve1) annotation(Line(visible = true, origin = {68.333, 8.897}, points={{-4.833,
          -18.897},{-4.833,-21.897},{8.167,-21.897},{8.167,19.333},{-3.333,
          19.333},{-3.333,24.024}},                                                                                                                                                                                                        color = {95, 95, 95}));
  connect(boneJointComponent1.frame_resolve, neuralMuscle1.frame_resolve) annotation(Line(visible = true, origin = {59.496, 33.976}, points = {{4.004, -23.976}, {4.004, -20.976}, {-9.507999999999999, -20.976}, {-9.507999999999999, 23.491}, {5.504, 23.491}, {5.504, 18.945}}));
  connect(boneJointComponent1.frame_b, neuralMuscle1.frame_b) annotation(Line(visible = true, origin = {76.61799999999999, 37.048}, points={{-3.017,
          -28.4766},{3.127,-28.4766},{3.127,20.419},{-1.618,20.419},{-1.618,
          16.1171}}));
  connect(neuralMuscle1.frame_a1, boneJointComponent1.frame_a2) annotation(Line(visible = true, origin = {52.998, 14.828}, points = {{2.196, 18.093}, {2.196, 13.401}, {-2.498, 13.401}, {-2.498, -22.447}, {0.604, -22.447}}));
  connect(boneJointComponent1.frame_a1, neuralMuscle1.frame_a) annotation(Line(visible = true, origin = {52.699, 37}, points = {{0.823, -28.428}, {-2.712, -28.428}, {-2.712, 20.467}, {2.301, 20.467}, {2.301, 15.922}}));
  connect(boneJointComponent.frame_b2, boneJointComponent1.frame_a) annotation(Line(visible = true, origin = {41.15, 0.238}, points={{-31.049,
          0.2382},{9.35,0.2382},{9.35,-0.238},{12.35,-0.238}}));
  connect(const.y, boneJointComponent.LoadTorque) annotation(Line(visible = true, origin = {3.214, -23.133}, points={{0.142,
          -19.2},{3.143,-19.2},{3.143,10.133},{-3.214,10.133},{-3.214,18.133}},                                                                                                                              color = {0, 0, 127}));
  connect(neuralMuscle.frame_b1, boneJointComponent.frame_b1) annotation(Line(visible = true, origin = {12.367, 12.357}, points={{-2.367,
          19.976},{2.378,19.976},{2.378,-19.757},{-2.367,-19.757}},                                                                                                                                         color = {95, 95, 95}));
  connect(boneJointComponent.frame_b, neuralMuscle.frame_b) annotation(Line(visible = true, origin = {11.918, 36.696}, points={{-1.817,
          -28.1246},{2.827,-28.1246},{2.827,20.183},{-1.918,20.183},{-1.918,
          15.8811}}));
  connect(neuralMuscle.frame_resolve1, boneJointComponent.frame_resolve1) annotation(Line(visible = true, origin = {-4.333, 8.603}, points={{4.333,
          23.73},{4.333,19.039},{-8.667,19.039},{-8.667,-21.603},{4.333,-21.603},
          {4.333,-18.603}}));
  connect(neuralMuscle.frame_a1, boneJointComponent.frame_a2) annotation(Line(visible = true, origin = {-11.102, 14.476}, points = {{1.296, 17.858}, {1.296, 13.166}, {-1.898, 13.166}, {-1.898, -22.095}, {1.204, -22.095}}));
  connect(neuralMuscle.frame_a, boneJointComponent.frame_a1) annotation(Line(visible = true, origin = {-12.501, 30.452}, points = {{2.501, 21.881}, {-2.512, 21.881}, {-2.512, -21.881}, {2.523, -21.881}}));
  connect(neuralMuscle.frame_resolve, boneJointComponent.frame_resolve) annotation(Line(visible = true, origin = {-5.176, 33.682}, points={{5.176,
          18.651},{5.176,23.197},{-9.837,23.197},{-9.837,-20.682},{5.176,
          -20.682},{5.176,-23.682}}));
  annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestBoneJointComponent;
