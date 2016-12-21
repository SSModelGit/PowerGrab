within PowerGrabTestingRig.ContactObject;
model TestOCPrismDamp
  import PowerGrabStructure;
  PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscleArray(
    maxFDistal=200,
    maxMDistal=200,
    maxCDistal=200) annotation (Placement(visible=true, transformation(
        origin={-120,15},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.FingerMultipleRevoluteArray
    fingerBoneStructureArray(
    r_OboneFDistal={0.25,0,0},
    r_IboneFDistal={0.1,0,0},
    r_IboneMDistal={0.1,0,0},
    r_IboneCDistal={0.1,0,0},
    phi_0_boneFDistal=0.1,
    phi_0_boneMDistal=0.1,
    phi_0_boneCDistal=0.1,
    r_OboneMDistal={0.35,0,0},
    fDistalClosed=false,
    cDistalRegularClosed=false,
    mDistalClosed=false,
    phi_0_doubleJoint=0,
    cDistalSideClosed=false,
    dirTorque=false) annotation (Placement(visible=true, transformation(
        origin={12.255,15},
        extent={{-47.745,-47.745},{47.745,47.745}},
        rotation=0)));
  PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray posteriorMuscleArray(
    maxFDistal=200,
    maxMDistal=200,
    maxCDistal=200) annotation (Placement(visible=true, transformation(
        origin={137.5,15},
        extent={{52.5,-52.5},{-52.5,52.5}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant const3(k = 0) annotation(Placement(visible = true, transformation(origin = {230, -22.26}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const4(k = 0) annotation(Placement(visible = true, transformation(origin = {220, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const8(k = 10) annotation(Placement(visible = true, transformation(origin = {55, -92.056}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-123.227, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-88.194, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, offset = 0, height = 0) annotation(Placement(visible = true, transformation(origin = {-70, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const5(k = 0) annotation(Placement(visible = true, transformation(origin = {225, 55}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(duration = 10, height = 0, offset = 0) annotation(Placement(visible = true, transformation(origin = {-225, 13.407}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp2(duration = 10, height = 0, offset = 1) annotation(Placement(visible = true, transformation(origin = {-225, -26.822}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabStructure.ContactObject.Examples.PrismDampingOC prismDampingOC(
    dampingCoefficient=5000,
    k=5000,
    threshold=0.25,
    boneLength=0.25,
    mu=0.5,
    delta=0.01) annotation (Placement(visible=true, transformation(
        origin={-193.09,92.32299999999999},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.125, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-157.061, 92.32299999999999}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.2, 1.2, 0.1}) annotation(Placement(visible = true, transformation(origin = {-280, 92.968}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 1, d = 10000) annotation(Placement(visible = true, transformation(origin = {-250, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0.01, 0, 0}, r_CM = {0, 0, 0}, m = 1,
  r_0(                                                                                              fixed =     false, start =     {-1.2, 0.2, 0.1}))
                                                                                                                                                     annotation(Placement(visible = true, transformation(origin = {-220, 108.415}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(bodyShape.frame_b, prismDampingOC.frame_a) annotation(Line(visible = true, origin = {-205.716, 100.369}, points={{-4.284,
        8.046},{-0.374,8.046},{-0.374,-8.046},{5.0303,-8.046}}));
  connect(springDamperParallel.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-234.006, 109.207}, points={{-5.994,
        0.793},{0.994,0.793},{0.994,-0.792},{4.006,-0.792}}));
  connect(fixedTranslation1.frame_b, springDamperParallel.frame_a) annotation(Line(visible = true, origin = {-265.506, 101.484}, points = {{-4.494, -8.516}, {-0.506, -8.516}, {-0.506, 8.516}, {5.506, 8.516}}));
  connect(fixedTranslation.frame_b, prismDampingOC.frame_b) annotation(Line(visible = true, origin = {-176.301, 92.32299999999999}, points={{9.24,0},
        {-9.2402,0}}));
  connect(fingerBoneStructureArray.frame_1A, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-72.60299999999999, 82.425}, points={{37.2288,
        -19.7958},{37.2288,9.898},{-74.458,9.898}}));
  connect(fixedTranslation1.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-182.555, 32.646}, points={{
        -107.445,60.322},{-110.445,60.322},{-110.445,47.323},{111.986,47.323},
        {111.986,-107.646},{104.361,-107.646}}));
  connect(ramp1.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-184.537, 33.171}, points={{-29.463,
        -19.764},{7.519,-19.764},{7.519,19.7637},{14.4247,19.7637}},                                                                                                                                color = {0, 0, 127}));
  connect(ramp.y, fingerBoneStructureArray.sideAnterior) annotation(Line(visible = true, origin = {-17.983, 98.298}, points={{-41.017,
        31.702},{20.5084,31.702},{20.5084,-63.4043}},                                                                                                                                   color = {0, 0, 127}));
  connect(ramp.y, fingerBoneStructureArray.sideTheta) annotation(Line(visible = true, origin = {-33.662, 72.5}, points={{-25.338,
        57.5},{-4.849,57.5},{-4.849,-57.5},{35.0351,-57.5}},                                                                                                                                  color = {0, 0, 127}));
  connect(ramp.y, fingerBoneStructureArray.sidePosterior) annotation(Line(visible = true, origin = {-33.151, 36.526}, points={{-25.849,
        93.474},{-22.849,93.474},{-22.849,-73.167},{35.7738,-73.167},{35.7738,
        -40.6137}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(ramp2.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-184.839, -25.714}, points={{-29.161,
        -1.108},{7.822,-1.108},{7.822,1.10779},{13.517,1.10779}},                                                                                                                                color = {0, 0, 127}));
  connect(ramp1.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-184.839, 12.982}, points={{-29.161,
        0.425},{7.822,0.425},{7.822,-0.425954},{13.517,-0.425954}},                                                                                                                             color = {0, 0, 127}));
  connect(const5.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {198.57, 54.403}, points={{15.43,
        0.597},{-2.812,0.597},{-2.812,-0.597625},{-9.80742,-0.597625}},                                                                                                                         color = {0, 0, 127}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-105.711, -75}, points = {{-7.516, 0}, {7.517, 0}}));
  connect(fixedRotation.frame_b, fingerBoneStructureArray.frame_a) annotation(Line(visible = true, origin = {-23.2, -59.589}, points={{-54.994,
        -15.411},{27.4975,-15.411},{27.4975,30.8227}}));
  connect(const8.y, fingerBoneStructureArray.loadForce) annotation(Line(visible = true, origin = {39.089, -46.945}, points={{15.911,
        -34.111},{15.911,10.305},{-15.9107,10.305},{-15.9107,13.5001}},                                                                                                                                   color = {0, 0, 127}));
  connect(posteriorMuscleArray.frame_7, fingerBoneStructureArray.frame_7P) annotation(Line(visible = true, origin = {72.417, -37.811}, points={{12.583,
        0.311},{12.583,-2.689},{-12.5833,-2.689},{-12.5833,5.066}}));
  connect(posteriorMuscleArray.frame_6, fingerBoneStructureArray.frame_6P) annotation(Line(visible = true, origin = {67.75, -18.709}, points={{17.25,
        -1.73113},{-4.75,-1.73113},{-4.75,1.73179},{-7.75,1.73179}}));
  connect(posteriorMuscleArray.frame_5, fingerBoneStructureArray.frame_5P) annotation(Line(visible = true, origin = {67.73699999999999, -2.194}, points={{17.263,
        -1.22772},{-4.737,-1.22772},{-4.737,1.22688},{-7.78912,1.22688}}));
  connect(anteriorMuscleArray.frame_7, fingerBoneStructureArray.frame_7A) annotation(Line(visible = true, origin = {-51.999, -36.885}, points={{-16.679,
        0.563},{-16.679,-2.437},{16.6781,-2.437},{16.6781,4.3091}},                                                                                                                                                                   color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_6, fingerBoneStructureArray.frame_6A) annotation(Line(visible = true, origin = {-45.27, -18.183}, points={{-23.408,
        -1.46192},{6.759,-1.46192},{6.759,1.46242},{9.88942,1.46242}}));
  connect(anteriorMuscleArray.frame_5, fingerBoneStructureArray.frame_5A) annotation(Line(visible = true, origin = {-45.295, -1.957}, points={{-23.383,
        -1.05138},{6.784,-1.05138},{6.784,1.05155},{9.81455,1.05155}},                                                                                                                                               color = {95, 95, 95}));
  connect(debug7A.frame_b, fingerBoneStructureArray.frame_5A) annotation(Line(visible = true, origin = {-37.713, -33.877}, points={{-2.287,
        -22.986},{0.825,-22.986},{0.825,-9.986},{-0.798,-9.986},{-0.798,
        32.9715},{2.23255,32.9715}}));
  connect(debug7P.frame_a, fingerBoneStructureArray.frame_5P) annotation(Line(visible = true, origin = {68.98699999999999, -30.484}, points={{21.013,
        -29.516},{-5.987,-29.516},{-5.987,29.5169},{-9.03912,29.5169}}));
  connect(debug6P.frame_a, fingerBoneStructureArray.frame_6P) annotation(Line(visible = true, origin = {66.5, 37.373}, points={{13.5,
        54.35},{-3.5,54.35},{-3.5,-54.3502},{-6.5,-54.3502}}));
  connect(debug6A.frame_b, fingerBoneStructureArray.frame_6A) annotation(Line(visible = true, origin = {-51.471, 39.14}, points={{-42.01,
        55.86},{12.96,55.86},{12.96,-55.8606},{16.0904,-55.8606}}));
  connect(posteriorMuscleArray.frame_4, fingerBoneStructureArray.frame_4P) annotation(Line(visible = true, origin = {67.69, 14.126}, points={{17.31,
        -0.635375},{-4.69,-0.635375},{-4.69,0.635673},{-7.92833,0.635673}},                                                                                                                                        color = {95, 95, 95}));
  connect(posteriorMuscleArray.frame_3, fingerBoneStructureArray.frame_3P) annotation(Line(visible = true, origin = {67.732, 30.796}, points={{17.268,
        -0.046},{-4.732,-0.046},{-4.732,0.0469846},{-7.80402,0.0469846}}));
  connect(posteriorMuscleArray.frame_2, fingerBoneStructureArray.frame_2P) annotation(Line(visible = true, origin = {67.81699999999999, 47.453}, points={{17.183,
        0.622},{-4.728,0.622},{-4.728,-0.623},{-7.72827,-0.623}}));
  connect(posteriorMuscleArray.frame_1, fingerBoneStructureArray.frame_1P) annotation(Line(visible = true, origin = {67.81100000000001, 64.376}, points={{17.189,
        1.549},{-4.73,1.549},{-4.73,-1.54944},{-7.72944,-1.54944}},                                                                                                                                                            color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_4, fingerBoneStructureArray.frame_4A) annotation(Line(visible = true, origin = {-45.298, 14.261}, points={{-23.38,
        -0.736507},{6.787,-0.736507},{6.787,0.736613},{9.80561,0.736613}}));
  connect(anteriorMuscleArray.frame_3, fingerBoneStructureArray.frame_3A) annotation(Line(visible = true, origin = {-45.274, 30.609}, points={{-23.404,
        -0.2124},{6.763,-0.2124},{6.763,0.212101},{9.8779,0.212101}}));
  connect(anteriorMuscleArray.frame_2, fingerBoneStructureArray.frame_2A) annotation(Line(visible = true, origin = {-45.297, 47.081}, points={{-23.381,
        0.25186},{6.787,0.25186},{6.787,-0.251},{9.807,-0.251}}));
  connect(anteriorMuscleArray.frame_1, fingerBoneStructureArray.frame_1A) annotation(Line(visible = true, origin = {-54.156, 65.095}, points={{-14.522,
        -0.31266},{-11.522,-0.31266},{-11.522,1.545},{18.7818,1.545},{18.7818,
        -2.46578}}));
  connect(const3.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {200.129, -23.888}, points={{18.871,
        1.628},{-4.371,1.628},{-4.371,-1.6273},{-10.129,-1.6273}},                                                                                                                                  color = {0, 0, 127}));
  connect(const4.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {197.629, 13.75}, points={{11.371,
        1.25},{-1.871,1.25},{-1.871,-1.25005},{-7.629,-1.25005}},                                                                                                                            color = {0, 0, 127}));
  annotation(experiment(StopTime = 10.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestOCPrismDamp;
