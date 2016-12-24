within PowerGrabTestingRig.BoneStructure;
package Finger "Finger"

  model TrialFingerArrayModel
    PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscleArray(
      maxFDistal=200,
      maxMDistal=200,
      maxCDistal=200) annotation (Placement(visible=true, transformation(
          origin={-120,15},
          extent={{-51.322,-51.322},{51.322,51.322}},
          rotation=0)));
    Subcomponents.FingerBoneStructureArray fingerBoneStructureArray(
      r_OboneFDistal={0.25,0,0},
      r_IboneFDistal={0.1,0,0},
      r_IboneMDistal={0.1,0,0},
      r_IboneCDistal={0.1,0,0},
      phi_0_boneFDistal=0,
      phi_0_boneMDistal=0,
      phi_0_boneCDistal=0,
      r_OboneMDistal={0.35,0,0}) annotation (Placement(visible=true,
          transformation(
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
    Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0.15, rising = 3, width = 3, falling = 3, period = 12, offset = 0) annotation(Placement(visible = true, transformation(origin = {-15, 105}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Trapezoid trapezoid1(period = 12, rising = 3.5, width = 2.5, falling = 3.5, amplitude = 1.1, offset = 0) annotation(Placement(visible = true, transformation(origin = {7.511, 133.054}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Trapezoid trapezoid2(amplitude = 0.4, rising = 4, width = 2, falling = 4, period = 12, offset = 0) annotation(Placement(visible = true, transformation(origin = {40, 130}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-123.227, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-88.194, -75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 1) annotation(Placement(visible = true, transformation(origin = {-223.076, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const5(k = 0.21) annotation(Placement(visible = true, transformation(origin = {225, 55}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp1(duration = 10, height = 0) annotation(Placement(visible = true, transformation(origin = {-225, 13.407}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp2(duration = 10, height = 0, offset = 0) annotation(Placement(visible = true, transformation(origin = {-225, -26.822}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(ramp2.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-184.839, -25.714}, points={{-29.161,
            -1.108},{7.822,-1.108},{7.822,1.10779},{13.517,1.10779}},                                                                                                                              color = {0, 0, 127}));
    connect(ramp1.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-184.839, 12.981}, points={{-29.161,
            0.426},{7.822,0.426},{7.822,-0.424954},{13.517,-0.424954}},                                                                                                                           color = {0, 0, 127}));
    connect(const5.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {198.57, 54.403}, points={{15.43,
            0.597},{-2.812,0.597},{-2.812,-0.597625},{-9.80742,-0.597625}},                                                                                                                       color = {0, 0, 127}));
    connect(ramp.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-184.056, 53.967}, points={{-28.02,
            1.033},{7.038,1.033},{7.038,-1.03234},{13.9437,-1.03234}},                                                                                                                          color = {0, 0, 127}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-105.711, -75}, points = {{-7.516, 0}, {7.517, 0}}));
    connect(fixedRotation.frame_b, fingerBoneStructureArray.frame_a) annotation(Line(visible = true, origin = {-23.2, -59.589}, points={{-54.994,
            -15.411},{27.4975,-15.411},{27.4975,30.8227}}));
    connect(const8.y, fingerBoneStructureArray.loadForce) annotation(Line(visible = true, origin = {39.089, -46.945}, points={{15.911,
            -34.111},{15.911,10.305},{-15.9107,10.305},{-15.9107,13.5001}},                                                                                                                                 color = {0, 0, 127}));
    connect(posteriorMuscleArray.frame_7, fingerBoneStructureArray.frame_7P) annotation(Line(visible = true, origin = {72.417, -37.811}, points={{12.583,
            0.311},{12.583,-2.689},{-12.5833,-2.689},{-12.5833,5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerBoneStructureArray.frame_6P) annotation(Line(visible = true, origin = {67.75, -18.709}, points={{17.25,
            -1.73113},{-4.75,-1.73113},{-4.75,1.73179},{-7.75,1.73179}}));
    connect(posteriorMuscleArray.frame_5, fingerBoneStructureArray.frame_5P) annotation(Line(visible = true, origin = {67.73699999999999, -2.194}, points={{17.263,
            -1.22772},{-4.737,-1.22772},{-4.737,1.22688},{-7.78912,1.22688}}));
    connect(anteriorMuscleArray.frame_7, fingerBoneStructureArray.frame_7A) annotation(Line(visible = true, origin = {-51.999, -36.885}, points={{-16.679,
            0.563},{-16.679,-2.437},{16.6781,-2.437},{16.6781,4.3091}},                                                                                                                                                                 color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerBoneStructureArray.frame_6A) annotation(Line(visible = true, origin = {-45.27, -18.183}, points={{-23.408,
            -1.46192},{6.759,-1.46192},{6.759,1.46242},{9.88942,1.46242}}));
    connect(anteriorMuscleArray.frame_5, fingerBoneStructureArray.frame_5A) annotation(Line(visible = true, origin = {-45.295, -1.957}, points={{-23.383,
            -1.05138},{6.784,-1.05138},{6.784,1.05155},{9.81455,1.05155}},                                                                                                                                             color = {95, 95, 95}));
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
            -0.635375},{-4.69,-0.635375},{-4.69,0.635673},{-7.92833,0.635673}},                                                                                                                                      color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerBoneStructureArray.frame_3P) annotation(Line(visible = true, origin = {67.732, 30.796}, points={{17.268,
            -0.046},{-4.732,-0.046},{-4.732,0.0469846},{-7.80402,0.0469846}}));
    connect(posteriorMuscleArray.frame_2, fingerBoneStructureArray.frame_2P) annotation(Line(visible = true, origin = {67.81699999999999, 47.453}, points={{17.183,
            0.622},{-4.728,0.622},{-4.728,-0.623},{-7.72827,-0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerBoneStructureArray.frame_1P) annotation(Line(visible = true, origin = {67.81100000000001, 64.376}, points={{17.189,
            1.549},{-4.73,1.549},{-4.73,-1.54944},{-7.72944,-1.54944}},                                                                                                                                                          color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_4, fingerBoneStructureArray.frame_4A) annotation(Line(visible = true, origin = {-45.298, 14.261}, points={{-23.38,
            -0.736507},{6.787,-0.736507},{6.787,0.736613},{9.80561,0.736613}}));
    connect(anteriorMuscleArray.frame_3, fingerBoneStructureArray.frame_3A) annotation(Line(visible = true, origin = {-45.274, 30.609}, points={{-23.404,
            -0.2124},{6.763,-0.2124},{6.763,0.212101},{9.8779,0.212101}}));
    connect(anteriorMuscleArray.frame_2, fingerBoneStructureArray.frame_2A) annotation(Line(visible = true, origin = {-45.297, 47.081}, points={{-23.381,
            0.25186},{6.787,0.25186},{6.787,-0.251},{9.807,-0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerBoneStructureArray.frame_1A) annotation(Line(visible = true, origin = {-54.156, 65.095}, points={{-14.522,
            -0.31266},{-11.522,-0.31266},{-11.522,1.545},{18.7818,1.545},{18.7818,
            -2.46578}}));
    connect(trapezoid2.y, fingerBoneStructureArray.thetaFDistal) annotation(Line(visible = true, origin = {36.074, 80.19499999999999}, points={{3.926,
            38.805},{3.926,-11.935},{-3.92525,-11.935},{-3.92525,-14.935}},                                                                                                                                                color = {0, 0, 127}));
    connect(trapezoid1.y, fingerBoneStructureArray.thetaMDistal) annotation(Line(visible = true, origin = {7.893, 81.003}, points={{-0.382,
            41.051},{-0.382,-12.683},{0.38325,-12.683},{0.38325,-15.6834}},                                                                                                                                   color = {0, 0, 127}));
    connect(trapezoid.y, fingerBoneStructureArray.thetaCDistal) annotation(Line(visible = true, origin = {-14.672, 73.84699999999999}, points={{-0.328,
            20.153},{-0.328,-5.718},{0.329056,-5.718},{0.329056,-8.71793}},                                                                                                                                             color = {0, 0, 127}));
    connect(const3.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {200.129, -23.888}, points={{18.871,
            1.628},{-4.371,1.628},{-4.371,-1.6273},{-10.129,-1.6273}},                                                                                                                                color = {0, 0, 127}));
    connect(const4.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {197.629, 13.75}, points={{11.371,
            1.25},{-1.871,1.25},{-1.871,-1.25005},{-7.629,-1.25005}},                                                                                                                          color = {0, 0, 127}));
    annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TrialFingerArrayModel;

  model RealTestFinger
    PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscleArray(
      maxFDistal=20,
      maxMDistal=20,
      maxCDistal=20) annotation (Placement(visible=true, transformation(
          origin={-120,15},
          extent={{-51.322,-51.322},{51.322,51.322}},
          rotation=0)));
    PowerGrabStructure.BoneStructure.Finger.Examples.RealFingerStructure
      fingerArray(
      phi_0_boneFDistal=0.1,
      phi_0_boneMDistal=0.1,
      phi_0_boneCDistal=0.1,
      fDistalClosed=fDistalClosed,
      mDistalClosed=mDistalClosed,
      cDistalRegularClosed=cDistalRegularClosed,
      cDistalSideClosed=cDistalSideClosed,
      dirTorque=false,
      phi_0_doubleJoint=0,
      diameterIboneFDistal=0.02,
      diameterIboneMDistal=0.02,
      diameterIboneCDistal=0.02,
      diameterOboneCDistal=0.02,
      diameterOboneFDistal=0.02,
      diameterOboneMDistal=0.02,
      r_IboneFDistal={fingerLength[3]/2,0,0},
      r_OboneFDistal={fingerLength[4],0,0},
      r_IboneMDistal={fingerLength[2]/2,0,0},
      r_OboneMDistal={fingerLength[3]/2,0,0},
      r_IboneCDistal={fingerLength[1],0,0},
      r_OboneCDistal={fingerLength[2]/2,0,0}) annotation (Placement(visible=
            true, transformation(
          origin={17.255,15},
          extent={{-47.745,-47.745},{47.745,47.745}},
          rotation=0)));
    PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray posteriorMuscleArray(
      maxFDistal=50,
      maxMDistal=20,
      maxCDistal=20) annotation (Placement(visible=true, transformation(
          origin={137.5,15},
          extent={{52.5,-52.5},{-52.5,52.5}},
          rotation=0)));
    parameter Boolean contact = true;
    parameter Boolean fDistalClosed = false;
    parameter Boolean mDistalClosed = false;
    parameter Boolean cDistalRegularClosed = false;
    parameter Boolean cDistalSideClosed = false;
    parameter Modelica.SIunits.Length fingerLength[4] = {0.07000000000000001, 0.064, 0.04, 0.03} "Length of bone from Palm, Proximal, Middle, and Distal";
    parameter Modelica.SIunits.Distance threshold = 0.0275 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 100 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection3(
      boneLength=fingerLength[1],
      dampingCoefficient=dampingCoefficient,
      k=k,
      threshold=threshold,
      mu=mu,
      delta=delta) if contact annotation (Placement(visible=true, transformation(
          origin={-125,-45},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    parameter Real mu = 0;
    parameter Modelica.SIunits.Length delta = 0.01;
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection(
      boneLength=fingerLength[4],
      dampingCoefficient=dampingCoefficient,
      delta=delta,
      k=k,
      mu=mu,
      threshold=threshold) if contact annotation (Placement(visible=true,
          transformation(
          origin={-190,135},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection1(
      boneLength=fingerLength[3],
      dampingCoefficient=dampingCoefficient,
      delta=delta,
      k=k,
      mu=mu,
      threshold=threshold) if contact annotation (Placement(visible=true,
          transformation(
          origin={-190,115},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection2(
      boneLength=fingerLength[2],
      dampingCoefficient=dampingCoefficient,
      delta=delta,
      k=k,
      mu=mu,
      threshold=threshold) if contact annotation (Placement(visible=true,
          transformation(
          origin={-200,90},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-157.539, -87.374}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-115, -87.381}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-65, 165}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid antF(rising = 5, width = 2, falling = 5, period = 14, amplitude = 0.2, startTime = 2) annotation(Placement(visible = true, transformation(origin = {-230, 53.077}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid antM(amplitude = 0.6, rising = 5, width = 2, falling = 5, period = 14, startTime = 1) annotation(Placement(visible = true, transformation(origin = {-227.525, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid antC(rising = 5, width = 2, falling = 5, period = 14) annotation(Placement(visible = true, transformation(origin = {-227.74, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid postF(rising = 5, width = 2, falling = 5, period = 14, startTime = 9, amplitude = 0.2) annotation(Placement(visible = true, transformation(origin = {221.6, 50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid postM(amplitude = 0.6, rising = 5, width = 2, falling = 5, period = 14, startTime = 8) annotation(Placement(visible = true, transformation(origin = {223.232, 12.461}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid postC(width = 2, falling = 5, period = 14, rising = 5, startTime = 7, amplitude = 1) annotation(Placement(visible = true, transformation(origin = {225, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r = {-0.04, 0.05, 0}) annotation(Placement(visible = true, transformation(origin = {-307.689, 112.602}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(objectPrismDampConnection3.frame_a, fixedRotation1.frame_b) annotation(Line(visible = true, origin = {-252.603, 33.801}, points={{120.007,
            -78.801},{-37.461,-78.801},{-37.461,78.801},{-45.086,78.801}}));
    connect(fixedRotation1.frame_b, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-232.821, 101.301}, points={{-64.868,
            11.301},{19.821,11.301},{19.821,-11.301},{25.2253,-11.301}}));
    connect(fixedRotation1.frame_b, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-225.321, 113.801}, points={{-72.368,
            -1.199},{22.321,-1.199},{22.321,1.199},{27.7253,1.199}}));
    connect(fixedRotation1.frame_b, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-225.321, 123.801}, points={{-72.368,
            -11.199},{22.321,-11.199},{22.321,11.199},{27.7253,11.199}}));
    connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-232.576, -16.307}, points={{85.037,
            -71.067},{88.163,-71.067},{88.163,-57.842},{-88.125,-57.842},{-88.125,
            128.909},{-85.113,128.909}}));
    connect(antC.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-185.524, -24.803}, points={{-31.216,
            -0.197},{8.506,-0.197},{8.506,0.196786},{14.202,0.196786}},                                                                                                                           color = {0, 0, 127}));
    connect(antM.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-185.471, 13.778}, points={{-31.054,
            1.222},{8.453,1.222},{8.453,-1.22195},{14.149,-1.22195}},                                                                                                                                                    color = {0, 0, 127}));
    connect(antF.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-185.787, 53.006}, points={{-33.213,
            0.071},{8.769,0.071},{8.769,-0.0713437},{15.6747,-0.0713437}},                                                                                                                                                                               color = {0, 0, 127}));
    connect(postC.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {198.879, -25.258}, points={{15.121,
            0.258},{-3.121,0.258},{-3.121,-0.2573},{-8.879,-0.2573}},                                                                                                                               color = {0, 0, 127}));
    connect(postM.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {198.437, 12.481}, points={{13.795,
            -0.02},{-2.679,-0.02},{-2.679,0.01895},{-8.437,0.01895}},                                                                                                                                          color = {0, 0, 127}));
    connect(postF.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {197.72, 51.903}, points={{12.88,
            -1.903},{-1.962,-1.903},{-1.962,1.90238},{-8.95743,1.90238}},                                                                                                                                    color = {0, 0, 127}));
    connect(one.y, fingerArray.sidePosterior) annotation(Line(visible = true, origin = {-28.151, 50.526}, points={{-25.849,
            114.474},{-22.849,114.474},{-22.849,-87.167},{35.7738,-87.167},{
            35.7738,-54.6137}},                                                                                                                                                                                        color = {0, 0, 127}));
    connect(one.y, fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-12.983, 121.631}, points={{-41.017,
            43.369},{20.5084,43.369},{20.5084,-86.7373}},                                                                                                                    color = {0, 0, 127}));
    connect(fixedRotation.frame_b, fingerArray.frame_a) annotation(Line(visible = true, origin = {-28.802, -67.843}, points={{-76.198,
            -19.538},{38.0995,-19.538},{38.0995,39.0768}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-132.141, -87.378}, points={{-15.398,
            0.004},{4.128,0.004},{4.128,-0.003},{7.141,-0.003}}));
    connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points={{62.863,
            1.655},{-19.137,1.655},{-19.137,-1.656},{-24.5882,-1.656}}));
    connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points={{40.024,
            0},{-40.0232,0}}));
    connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points={{8.726,0},
            {-8.7252,0}}));
    connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points={{-31.901,
            37.841},{9.588,37.841},{9.588,-37.8408},{12.7248,-37.8408}}));
    connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points={{-37.449,
            42.089},{11.445,42.089},{11.445,-42.0899},{14.5589,-42.0899}}));
    connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points={{-91.875,
            45.453},{29.615,45.453},{29.615,-45.4525},{32.6445,-45.4525}}));
    connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points={{
            -16.2582,-5.785},{-16.2582,2.893},{32.515,2.893}}));
    connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points={{-27.13,
            -0.736507},{8.037,-0.736507},{8.037,0.736613},{11.0556,0.736613}}));
    connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points={{10.083,
            0.311},{10.083,-2.689},{-10.0833,-2.689},{-10.0833,5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points={{13.5,
            -1.73113},{-3.5,-1.73113},{-3.5,1.73179},{-6.5,1.73179}}));
    connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points={{13.513,
            -1.22772},{-3.487,-1.22772},{-3.487,1.22688},{-6.53912,1.22688}}));
    connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points={{-19.179,
            0.563},{-19.179,-2.437},{19.1781,-2.437},{19.1781,4.3091}},                                                                                                                                                    color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points={{-27.158,
            -1.46192},{8.009,-1.46192},{8.009,1.46242},{11.1394,1.46242}}));
    connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points={{-27.133,
            -1.05138},{8.034,-1.05138},{8.034,1.05155},{11.0645,1.05155}},                                                                                                                                                         color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points={{13.56,
            -0.635375},{-3.44,-0.635375},{-3.44,0.635673},{-6.67833,0.635673}},                                                                                                                         color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points={{13.518,
            -0.046},{-3.482,-0.046},{-3.482,0.0469846},{-6.55402,0.0469846}}));
    connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points={{13.433,
            0.622},{-3.478,0.622},{-3.478,-0.623},{-6.47827,-0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points={{13.439,
            1.549},{-3.48,1.549},{-3.48,-1.54944},{-6.47944,-1.54944}},                                                                                                                                             color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points={{-27.154,
            -0.2124},{8.013,-0.2124},{8.013,0.212101},{11.1279,0.212101}}));
    connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points={{-27.131,
            0.25186},{8.037,0.25186},{8.037,-0.251},{11.057,-0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points={{-16.522,
            -0.31266},{-13.522,-0.31266},{-13.522,1.545},{21.7818,1.545},{21.7818,
            -2.46578}}));
    annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end RealTestFinger;

  model FingerContactArray
    import PowerGrabStructure;
    PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscleArray(
      maxFDistal=500,
      maxMDistal=500,
      maxCDistal=500) annotation (Placement(visible=true, transformation(
          origin={-120,15},
          extent={{-51.322,-51.322},{51.322,51.322}},
          rotation=0)));
    DiscardedPowerGrabModels.OldComponents.FingerMultipleRevoluteArray
      fingerArray(
      phi_0_boneFDistal=0.1,
      phi_0_boneMDistal=0.1,
      phi_0_boneCDistal=0.1,
      fDistalClosed=fDistalClosed,
      mDistalClosed=mDistalClosed,
      cDistalRegularClosed=cDistalRegularClosed,
      cDistalSideClosed=cDistalSideClosed,
      dirTorque=false,
      phi_0_doubleJoint=0,
      diameterIboneFDistal=0.2,
      diameterIboneMDistal=0.2,
      diameterIboneCDistal=0.2,
      diameterOboneCDistal=0.2,
      diameterOboneFDistal=0.2,
      diameterOboneMDistal=0.2,
      r_IboneFDistal={fingerLength[4],0,0},
      r_OboneFDistal={fingerLength[3]/2,0,0},
      r_IboneMDistal={fingerLength[3]/2,0,0},
      r_OboneMDistal={fingerLength[2]/2,0,0},
      r_IboneCDistal={fingerLength[2]/2,0,0},
      r_OboneCDistal={fingerLength[1],0,0}) annotation (Placement(visible=true,
          transformation(
          origin={17.255,15},
          extent={{-47.745,-47.745},{47.745,47.745}},
          rotation=0)));
    PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray posteriorMuscleArray(
      maxFDistal=500,
      maxMDistal=500,
      maxCDistal=500) annotation (Placement(visible=true, transformation(
          origin={137.5,15},
          extent={{52.5,-52.5},{-52.5,52.5}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Boolean fDistalClosed = true;
    parameter Boolean mDistalClosed = true;
    parameter Boolean cDistalRegularClosed = true;
    parameter Boolean cDistalSideClosed = true;
    parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
    Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection(
      threshold=threshold,
      k=k,
      dampingCoefficient=dampingCoefficient,
      boneLength=1,
      mu=mu,
      delta=delta) annotation (Placement(visible=true, transformation(
          origin={-190,135},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection1(
      k=k,
      dampingCoefficient=dampingCoefficient,
      threshold=threshold,
      boneLength=1,
      mu=mu,
      delta=delta) annotation (Placement(visible=true, transformation(
          origin={-190,115},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection2(
      k=k,
      dampingCoefficient=dampingCoefficient,
      threshold=threshold,
      boneLength=1,
      mu=mu,
      delta=delta) annotation (Placement(visible=true, transformation(
          origin={-200,90},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    PowerGrabStructure.ContactObject.Examples.PrismDampingOC
      objectPrismDampConnection3(
      boneLength=1,
      dampingCoefficient=dampingCoefficient,
      k=k,
      threshold=threshold,
      mu=mu,
      delta=delta) annotation (Placement(visible=true, transformation(
          origin={-125,-45},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Real mu;
    parameter Modelica.SIunits.Length delta;
  equation
    connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points={{
          -16.2582,-5.785},{-16.2582,2.893},{32.515,2.893}}));
    connect(frame_a4, objectPrismDampConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -47}, points={{-98.101,
          -2},{30.899,-2},{30.899,2},{36.3033,2}}));
    connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points={{-91.875,
            45.453},{29.615,45.453},{29.615,-45.4525},{32.6445,-45.4525}}));
    connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points={{-37.449,
            42.089},{11.445,42.089},{11.445,-42.0899},{14.5589,-42.0899}}));
    connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points={{-31.901,
            37.841},{9.588,37.841},{9.588,-37.8408},{12.7248,-37.8408}}));
    connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points={{8.726,0},
          {-8.7252,0}}));
    connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points={{40.024,
          0},{-40.0232,0}}));
    connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points={{62.863,
          1.655},{-19.137,1.655},{-19.137,-1.656},{-24.5882,-1.656}}));
    connect(frame_a1, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-221.149, 89.5}, points={{-29.851,
          -0.5},{8.149,-0.5},{8.149,0.5},{13.5533,0.5}}));
    connect(frame_a2, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-214.399, 115.5}, points={{-39.601,
          0.5},{11.399,0.5},{11.399,-0.5},{16.8033,-0.5}}));
    connect(frame_a3, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-214.649, 137.5}, points={{-40.351,
          2.5},{11.649,2.5},{11.649,-2.5},{17.0533,-2.5}}));
    connect(jointControl[4], fingerArray.sideTheta) annotation(Line(visible = true, origin = {-6.857, 94.131}, points={{20.04,
            53.387},{20.04,44.937},{-26.654,44.937},{-26.654,-79.131},{13.2301,
            -79.131}},                                                                                                                                                                                                 color = {0, 0, 127}));
    connect(jointControl[3], fingerArray.thetaCDistal) annotation(Line(visible = true, origin = {1.92, 90.976}, points={{11.263,
            66.542},{11.263,-22.847},{-11.2629,-22.847},{-11.2629,-25.8469}},                                                                                                                           color = {0, 0, 127}));
    connect(jointControl[2], fingerArray.thetaMDistal) annotation(Line(visible = true, origin = {13.23, 91.119}, points={{-0.047,
            76.399},{-0.047,-22.8},{0.04625,-22.8},{0.04625,-25.7994}},                                                                                                                        color = {0, 0, 127}));
    connect(jointControl[1], fingerArray.thetaFDistal) annotation(Line(visible = true, origin = {25.166, 91.074}, points={{-11.983,
            86.444},{-11.983,-22.814},{11.9827,-22.814},{11.9827,-25.814}},                                                                                                                               color = {0, 0, 127}));
    connect(posteriorInput[4], fingerArray.sidePosterior) annotation(Line(visible = true, origin = {143.669, -10.727}, points={{106.331,
            37.593},{82.881,37.593},{82.881,-25.913},{-136.046,-25.913},{-136.046,
            6.63934}},                                                                                                                                                                                                      color = {0, 0, 127}));
    connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points={{-122.39,
            -10.866},{-98.94,-10.866},{-98.94,27.826},{160.135,27.826},{160.135,
            -3.92025}},                                                                                                                                                                                                      color = {0, 0, 127}));
    connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points={{-27.13,
            -0.736507},{8.037,-0.736507},{8.037,0.736613},{11.0556,0.736613}}));
    connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points={{42.121,
          23.691},{-12.121,23.691},{-12.121,-18.6903},{-17.879,-18.6903}},                                                                                                                                          color = {0, 0, 127}));
    connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points={{42.43,
            -35.97},{-11.812,-35.97},{-11.812,20.9694},{-18.8074,20.9694}},                                                                                                                                   color = {0, 0, 127}));
    connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points={{42.121,
          -5.317},{-12.121,-5.317},{-12.121,0.31695},{-17.879,0.31695}},                                                                                                                                        color = {0, 0, 127}));
    connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-200.089, -5.829}, points={{-74.911,
            23.777},{23.072,23.777},{23.072,-18.7772},{28.767,-18.7772}},                                                                                                                                        color = {0, 0, 127}));
    connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-200.089, 12.752}, points={{-74.911,
            -4.804},{23.072,-4.804},{23.072,-0.195954},{28.767,-0.195954}},                                                                                                                                  color = {0, 0, 127}));
    connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-199.787, 32.941}, points={{-75.213,
            -34.993},{22.769,-34.993},{22.769,19.9937},{29.6747,19.9937}},                                                                                                                                                  color = {0, 0, 127}));
    connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points={{52.7655,
            34.1557},{52.7655,-17.078},{-105.532,-17.078}}));
    connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points={{10.083,
            0.311},{10.083,-2.689},{-10.0833,-2.689},{-10.0833,5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points={{13.5,
            -1.73113},{-3.5,-1.73113},{-3.5,1.73179},{-6.5,1.73179}}));
    connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points={{13.513,
            -1.22772},{-3.487,-1.22772},{-3.487,1.22688},{-6.53912,1.22688}}));
    connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points={{-19.179,
            0.563},{-19.179,-2.437},{19.1781,-2.437},{19.1781,4.3091}},                                                                                                                                                    color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points={{-27.158,
            -1.46192},{8.009,-1.46192},{8.009,1.46242},{11.1394,1.46242}}));
    connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points={{-27.133,
            -1.05138},{8.034,-1.05138},{8.034,1.05155},{11.0645,1.05155}},                                                                                                                                                         color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points={{13.56,
            -0.635375},{-3.44,-0.635375},{-3.44,0.635673},{-6.67833,0.635673}},                                                                                                                         color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points={{13.518,
            -0.046},{-3.482,-0.046},{-3.482,0.0469846},{-6.55402,0.0469846}}));
    connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points={{13.433,
            0.622},{-3.478,0.622},{-3.478,-0.623},{-6.47827,-0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points={{13.439,
            1.549},{-3.48,1.549},{-3.48,-1.54944},{-6.47944,-1.54944}},                                                                                                                                             color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points={{-27.154,
            -0.2124},{8.013,-0.2124},{8.013,0.212101},{11.1279,0.212101}}));
    connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points={{-27.131,
          0.25186},{8.037,0.25186},{8.037,-0.251},{11.057,-0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points={{-16.522,
            -0.31266},{-13.522,-0.31266},{-13.522,1.545},{21.7818,1.545},{21.7818,
            -2.46578}}));
    annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end FingerContactArray;

  package Basic

    package TestMuscleComponents "Muscle Components specific for testing"

      model NeuralMuscle
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-135, -75}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-98.062, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 102.441}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {140, -75}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {0, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance anteriorMuscleLowerExtension annotation(Placement(visible = true, transformation(origin = {-81.956, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance anteriorMuscleUpperExtension annotation(Placement(visible = true, transformation(origin = {85, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance posteriorMuscleLowerExtension annotation(Placement(visible = true, transformation(origin = {-85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance posteriorMuscleUpperExtension annotation(Placement(visible = true, transformation(origin = {85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput forcePValue_a "Percent value of total anterior force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.807, 37.782}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LowerAnteriorMuscle annotation(Placement(visible = true, transformation(origin = {-82.46899999999999, 22.761}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass UpperAnteriorMuscle annotation(Placement(visible = true, transformation(origin = {86.783, 23.283}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LowerPosteriorMuscle annotation(Placement(visible = true, transformation(origin = {-85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass UpperPosteriorMuscle annotation(Placement(visible = true, transformation(origin = {85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force anteriorMuscleLowerForce annotation(Placement(visible = true, transformation(origin = {-55, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force anteriorMuscleUpperForce annotation(Placement(visible = true, transformation(origin = {65, 7.408}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force posteriorMuscleLowerForce annotation(Placement(visible = true, transformation(origin = {-55, -45}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force posteriorMuscleUpperForce annotation(Placement(visible = true, transformation(origin = {61.764, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Modelica.SIunits.Force f_max_a "Maximum value for anterior muscle force";
        parameter Modelica.SIunits.Force f_max_p "Maximum value for posterior muscle force";
        Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.Damper damper1(animation = false, d = 100) annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput forcePValue_p "Percent value of total posterior force" annotation(Placement(visible = true, transformation(origin = {-142.039, -13.094}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.887, -34.808}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        connect(posteriorMuscleUpperForce.flange, UpperPosteriorMuscle.flange_a) annotation(Line(visible = true, origin = {74.176, -48.333}, points = {{-2.412, 3.333}, {-2.412, -1.667}, {4.824, -1.667}}, color = {0, 127, 0}));
        connect(posteriorMuscleLowerForce.flange, LowerPosteriorMuscle.flange_a) annotation(Line(visible = true, origin = {-82.333, -46.667}, points = {{17.333, 1.667}, {-8.667, 1.667}, {-8.667, -3.333}}, color = {0, 127, 0}));
        connect(anteriorMuscleUpperForce.flange, UpperAnteriorMuscle.flange_a) annotation(Line(visible = true, origin = {76.928, 11.325}, points = {{-1.928, -3.917}, {-1.928, 1.958}, {3.855, 1.958}}, color = {0, 127, 0}));
        connect(anteriorMuscleLowerForce.flange, LowerAnteriorMuscle.flange_a) annotation(Line(visible = true, origin = {-80.646, 10.92}, points = {{15.646, -0.92}, {-7.823, -0.92}, {-7.823, 1.841}}, color = {0, 127, 0}));
        connect(damper1.frame_b, frame_b1) annotation(Line(visible = true, origin = {98, -62.5}, points = {{-88, 12.5}, {23, 12.5}, {23, -12.5}, {42, -12.5}}));
        connect(damper1.frame_a, frame_a1) annotation(Line(visible = true, origin = {-94.25, -62.5}, points = {{84.25, 12.5}, {-21.75, 12.5}, {-21.75, -12.5}, {-40.75, -12.5}}));
        connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
        connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.419}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
        connect(UpperPosteriorMuscle.frame_b, frame_b1) annotation(Line(visible = true, origin = {119.25, -67.5}, points = {{-24.25, 7.5}, {1.75, 7.5}, {1.75, -7.5}, {20.75, -7.5}}));
        connect(UpperPosteriorMuscle.frame_a, frame_resolve1) annotation(Line(visible = true, origin = {28.25, -74.5}, points = {{46.75, 14.5}, {-9.25, 14.5}, {-9.25, -14.5}, {-28.25, -14.5}}));
        connect(LowerPosteriorMuscle.frame_a, frame_a1) annotation(Line(visible = true, origin = {-115.5, -67.5}, points = {{20.5, 7.5}, {-0.5, 7.5}, {-0.5, -7.5}, {-19.5, -7.5}}));
        connect(LowerPosteriorMuscle.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-28.25, -74.5}, points = {{-46.75, 14.5}, {9.25, 14.5}, {9.25, -14.5}, {28.25, -14.5}}));
        connect(UpperAnteriorMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {121.175, 40.036}, points = {{-24.392, -16.753}, {1.797, -16.753}, {1.797, 16.753}, {20.797, 16.753}}));
        connect(UpperAnteriorMuscle.frame_a, frame_resolve) annotation(Line(visible = true, origin = {28.696, 56.142}, points = {{48.087, -32.858}, {-9.696, -32.858}, {-9.696, 32.858}, {-28.696, 32.858}}));
        connect(LowerAnteriorMuscle.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-27.617, 55.88}, points = {{-44.852, -33.12}, {8.617000000000001, -33.12}, {8.617000000000001, 33.12}, {27.617, 33.12}}));
        connect(frame_a, LowerAnteriorMuscle.frame_a) annotation(Line(visible = true, origin = {-106.108, 40.098}, points = {{-28.892, 17.336}, {7.626, 17.336}, {7.626, -17.336}, {13.639, -17.337}}));
        connect(posteriorMuscleUpperExtension.frame_b, frame_b1) annotation(Line(visible = true, origin = {119.25, -77.5}, points = {{-24.25, -2.5}, {1.75, -2.5}, {1.75, 2.5}, {20.75, 2.5}}));
        connect(posteriorMuscleUpperExtension.frame_a, frame_resolve1) annotation(Line(visible = true, origin = {28.25, -84.5}, points = {{46.75, 4.5}, {-9.25, 4.5}, {-9.25, -4.5}, {-28.25, -4.5}}));
        connect(posteriorMuscleLowerExtension.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-28.25, -84.5}, points = {{-46.75, 4.5}, {9.25, 4.5}, {9.25, -4.5}, {28.25, -4.5}}));
        connect(frame_a1, posteriorMuscleLowerExtension.frame_a) annotation(Line(visible = true, origin = {-106.662, -77.5}, points = {{-28.338, 2.5}, {8.337, 2.5}, {8.337, -2.5}, {11.662, -2.5}}));
        connect(anteriorMuscleUpperExtension.frame_b, frame_b) annotation(Line(visible = true, origin = {120.729, 55.894}, points = {{-25.729, -0.894}, {2.243, -0.894}, {2.243, 0.895}, {21.243, 0.895}}));
        connect(anteriorMuscleUpperExtension.frame_a, frame_resolve) annotation(Line(visible = true, origin = {28.25, 72}, points = {{46.75, -17}, {-9.25, -17}, {-9.25, 17}, {-28.25, 17}}));
        connect(anteriorMuscleLowerExtension.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-27.489, 72}, points = {{-44.467, -17}, {8.489000000000001, -17}, {8.489000000000001, 17}, {27.489, 17}}));
        connect(frame_a, anteriorMuscleLowerExtension.frame_a) annotation(Line(visible = true, origin = {-104.38, 56.217}, points = {{-30.62, 1.217}, {9.099, 1.217}, {9.099, -1.217}, {12.424, -1.217}}));
        anteriorMuscleLowerForce.f = anteriorMuscleUpperForce.f;
        posteriorMuscleLowerForce.f = posteriorMuscleUpperForce.f;
        anteriorMuscleLowerForce.f = forcePValue_a * f_max_a;
        posteriorMuscleLowerForce.f = forcePValue_p * f_max_p;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}}), Text(visible = true, origin = {-102.083, 124.079}, extent = {{-37.917, -11.638}, {37.917, 11.638}}, textString = "Anterior Lower"), Text(visible = true, origin = {100, 125.665}, extent = {{-35.991, -7.551}, {35.991, 7.551}}, textString = "Anterior Upper"), Text(visible = true, origin = {-94.896, -123.472}, extent = {{-39.431, -10.855}, {39.431, 10.855}}, textString = "Posterior Lower"), Text(visible = true, origin = {97.35299999999999, -123.005}, extent = {{-40.366, -6.995}, {40.366, 6.995}}, textString = "Posterior Upper"), Ellipse(visible = true, origin = {-2.674, 85.142}, fillColor = {128, 0, 0},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}}), Ellipse(visible = true, origin = {0, -86.60299999999999}, fillColor = {128, 0, 0},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end NeuralMuscle;

      model NewMuscle
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-135, -75}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-98.062, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 102.441}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {140, -75}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {0, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance anteriorMuscleLowerExtension annotation(Placement(visible = true, transformation(origin = {-81.956, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance anteriorMuscleUpperExtension annotation(Placement(visible = true, transformation(origin = {85, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance posteriorMuscleLowerExtension annotation(Placement(visible = true, transformation(origin = {-85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.Distance posteriorMuscleUpperExtension annotation(Placement(visible = true, transformation(origin = {85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput kPercent_a "Percent of total muscle stiffness for anterior muscle" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-85.251, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput xPercent_a "Percent of total unstrectched length for anterior muscle" annotation(Placement(visible = true, transformation(origin = {-140, -27.419}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90, -43.04}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput kPercent_p "Percent of total muscle stiffness for posterior muscle" annotation(Placement(visible = true, transformation(origin = {127.042, 15}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {90, 30}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput xPercent_p "Percent of total unstrectched length for posterior muscle" annotation(Placement(visible = true, transformation(origin = {127.692, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {90, -40}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LowerAnteriorMuscle annotation(Placement(visible = true, transformation(origin = {-82.46899999999999, 22.761}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass UpperAnteriorMuscle annotation(Placement(visible = true, transformation(origin = {86.783, 23.283}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LowerPosteriorMuscle annotation(Placement(visible = true, transformation(origin = {-85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass UpperPosteriorMuscle annotation(Placement(visible = true, transformation(origin = {85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force anteriorMuscleLowerForce annotation(Placement(visible = true, transformation(origin = {-55, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force anteriorMuscleUpperForce annotation(Placement(visible = true, transformation(origin = {65, 7.408}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force posteriorMuscleLowerForce annotation(Placement(visible = true, transformation(origin = {-55, -45}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force posteriorMuscleUpperForce annotation(Placement(visible = true, transformation(origin = {61.764, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.SIunits.Position x_a;
        Modelica.SIunits.Position x_p;
        Modelica.SIunits.TranslationalSpringConstant k_0_a;
        Modelica.SIunits.TranslationalSpringConstant k_0_p;
        Modelica.SIunits.Length x_0_a;
        Modelica.SIunits.Length x_0_p;
        parameter Modelica.SIunits.TranslationalSpringConstant k_min_a "Minimum value for anterior muscle stiffness";
        parameter Modelica.SIunits.TranslationalSpringConstant k_max_a "Maximum value for anterior muscle stiffness";
        parameter Modelica.SIunits.Length x_min_a "Minimum value for anterior muscle unstretched length";
        parameter Modelica.SIunits.Length x_max_a "Maximum value for anterior muscle unstretched length";
        parameter Modelica.SIunits.TranslationalSpringConstant k_min_p "Minimum value for posterior muscle stiffness";
        parameter Modelica.SIunits.TranslationalSpringConstant k_max_p "Maximum value for posterior muscle stiffness";
        parameter Modelica.SIunits.Length x_min_p "Minimum value for posterior muscle unstretched length";
        parameter Modelica.SIunits.Length x_max_p "Maximum value for posterior muscle unstretched length";
        Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.Damper damper1(animation = false, d = 100) annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(damper1.frame_b, frame_b1) annotation(Line(visible = true, origin = {98, -62.5}, points = {{-88, 12.5}, {23, 12.5}, {23, -12.5}, {42, -12.5}}));
        connect(damper1.frame_a, frame_a1) annotation(Line(visible = true, origin = {-94.25, -62.5}, points = {{84.25, 12.5}, {-21.75, 12.5}, {-21.75, -12.5}, {-40.75, -12.5}}));
        connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
        connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.419}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
        connect(posteriorMuscleUpperForce.flange, UpperPosteriorMuscle.flange_b) annotation(Line(visible = true, origin = {83.667, -46.667}, points = {{-11.903, 1.667}, {6.333, 1.667}, {7.333, -3.333}}, color = {0, 127, 0}));
        connect(posteriorMuscleLowerForce.flange, LowerPosteriorMuscle.flange_b) annotation(Line(visible = true, origin = {-74.333, -46.667}, points = {{9.333, 1.667}, {-4.667, 1.667}, {-4.667, -3.333}}, color = {0, 127, 0}));
        connect(anteriorMuscleUpperForce.flange, UpperAnteriorMuscle.flange_b) annotation(Line(visible = true, origin = {86.73699999999999, 9.367000000000001}, points = {{-11.737, -1.958}, {5.691, -1.958}, {6.046, 3.917}}, color = {0, 127, 0}));
        connect(anteriorMuscleLowerForce.flange, LowerAnteriorMuscle.flange_b) annotation(Line(visible = true, origin = {-72.646, 10.92}, points = {{7.646, -0.92}, {-3.823, -0.92}, {-3.823, 1.841}}, color = {0, 127, 0}));
        connect(UpperPosteriorMuscle.frame_b, frame_b1) annotation(Line(visible = true, origin = {119.25, -67.5}, points = {{-24.25, 7.5}, {1.75, 7.5}, {1.75, -7.5}, {20.75, -7.5}}));
        connect(UpperPosteriorMuscle.frame_a, frame_resolve1) annotation(Line(visible = true, origin = {28.25, -74.5}, points = {{46.75, 14.5}, {-9.25, 14.5}, {-9.25, -14.5}, {-28.25, -14.5}}));
        connect(LowerPosteriorMuscle.frame_a, frame_a1) annotation(Line(visible = true, origin = {-115.5, -67.5}, points = {{20.5, 7.5}, {-0.5, 7.5}, {-0.5, -7.5}, {-19.5, -7.5}}));
        connect(LowerPosteriorMuscle.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-28.25, -74.5}, points = {{-46.75, 14.5}, {9.25, 14.5}, {9.25, -14.5}, {28.25, -14.5}}));
        connect(UpperAnteriorMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {121.175, 40.036}, points = {{-24.392, -16.753}, {1.797, -16.753}, {1.797, 16.753}, {20.797, 16.753}}));
        connect(UpperAnteriorMuscle.frame_a, frame_resolve) annotation(Line(visible = true, origin = {28.696, 56.142}, points = {{48.087, -32.858}, {-9.696, -32.858}, {-9.696, 32.858}, {-28.696, 32.858}}));
        connect(LowerAnteriorMuscle.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-27.617, 55.88}, points = {{-44.852, -33.12}, {8.617000000000001, -33.12}, {8.617000000000001, 33.12}, {27.617, 33.12}}));
        connect(frame_a, LowerAnteriorMuscle.frame_a) annotation(Line(visible = true, origin = {-106.108, 40.098}, points = {{-28.892, 17.336}, {7.626, 17.336}, {7.626, -17.336}, {13.639, -17.337}}));
        connect(posteriorMuscleUpperExtension.frame_b, frame_b1) annotation(Line(visible = true, origin = {119.25, -77.5}, points = {{-24.25, -2.5}, {1.75, -2.5}, {1.75, 2.5}, {20.75, 2.5}}));
        connect(posteriorMuscleUpperExtension.frame_a, frame_resolve1) annotation(Line(visible = true, origin = {28.25, -84.5}, points = {{46.75, 4.5}, {-9.25, 4.5}, {-9.25, -4.5}, {-28.25, -4.5}}));
        connect(posteriorMuscleLowerExtension.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-28.25, -84.5}, points = {{-46.75, 4.5}, {9.25, 4.5}, {9.25, -4.5}, {28.25, -4.5}}));
        connect(frame_a1, posteriorMuscleLowerExtension.frame_a) annotation(Line(visible = true, origin = {-106.662, -77.5}, points = {{-28.338, 2.5}, {8.337, 2.5}, {8.337, -2.5}, {11.662, -2.5}}));
        connect(anteriorMuscleUpperExtension.frame_b, frame_b) annotation(Line(visible = true, origin = {120.729, 55.894}, points = {{-25.729, -0.894}, {2.243, -0.894}, {2.243, 0.895}, {21.243, 0.895}}));
        connect(anteriorMuscleUpperExtension.frame_a, frame_resolve) annotation(Line(visible = true, origin = {28.25, 72}, points = {{46.75, -17}, {-9.25, -17}, {-9.25, 17}, {-28.25, 17}}));
        connect(anteriorMuscleLowerExtension.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-27.489, 72}, points = {{-44.467, -17}, {8.489000000000001, -17}, {8.489000000000001, 17}, {27.489, 17}}));
        connect(frame_a, anteriorMuscleLowerExtension.frame_a) annotation(Line(visible = true, origin = {-104.38, 56.217}, points = {{-30.62, 1.217}, {9.099, 1.217}, {9.099, -1.217}, {12.424, -1.217}}));
        anteriorMuscleLowerForce.f = anteriorMuscleUpperForce.f;
        posteriorMuscleLowerForce.f = posteriorMuscleUpperForce.f;
        x_a = anteriorMuscleLowerExtension.distance + anteriorMuscleUpperExtension.distance;
        x_p = posteriorMuscleLowerExtension.distance + posteriorMuscleUpperExtension.distance;
        k_0_a = k_min_a + kPercent_a * (k_max_a - k_min_a);
        x_0_a = x_min_a + xPercent_a * (x_max_a - x_min_a);
        k_0_p = k_min_p + kPercent_p * (k_max_p - k_min_p);
        x_0_p = x_min_p + xPercent_p * (x_max_p - x_min_p);
        anteriorMuscleLowerForce.f = -k_0_a * (x_a - x_0_a);
        posteriorMuscleLowerForce.f = -k_0_p * (x_p - x_0_p);
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}}), Text(visible = true, origin = {-83.256, 56.669}, extent = {{-23.256, -6.669}, {23.256, 6.669}}, textString = "kPercent_a"), Text(visible = true, origin = {-83.50700000000001, -17.476}, extent = {{-23.507, -7.476}, {23.507, 7.476}}, textString = "xPercent_a"), Text(visible = true, origin = {103.365, 56.086}, extent = {{-23.365, -6.086}, {23.365, 6.086}}, textString = "kPercent_p"), Text(visible = true, origin = {102.408, -15.991}, extent = {{-25.069, -8.228999999999999}, {25.069, 8.228999999999999}}, textString = "xPercent_p"), Text(visible = true, origin = {-102.083, 124.079}, extent = {{-37.917, -11.638}, {37.917, 11.638}}, textString = "Anterior Lower"), Text(visible = true, origin = {100, 125.665}, extent = {{-35.991, -7.551}, {35.991, 7.551}}, textString = "Anterior Upper"), Text(visible = true, origin = {-94.896, -123.472}, extent = {{-39.431, -10.855}, {39.431, 10.855}}, textString = "Posterior Lower"), Text(visible = true, origin = {97.35299999999999, -123.005}, extent = {{-40.366, -6.995}, {40.366, 6.995}}, textString = "Posterior Upper"), Ellipse(visible = true, origin = {-2.674, 85.142}, fillColor = {128, 0, 0},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}}), Ellipse(visible = true, origin = {0, -86.60299999999999}, fillColor = {128, 0, 0},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end NewMuscle;
    end TestMuscleComponents;

    package Subcomponents

      model BoneMuscleJointExperimentalComponent

        Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
          r_0(                                                                                                                                                                                    fixed =     false))
                                                                                                                                                                                                "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
          r_0(                                                                                                             start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
          r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                        m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.35, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.45, -0.05, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
          phi(                                                                                                         fixed =     false, start =     1.5))
                                                                                                                                                           annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.OneDegreeJoint
          revoluteRestrained(
          phi_0_restrained=phi_0_restrained,
          theta_1=-0.1,
          theta_2=1.6,
          useAxisFlange=true) annotation (Placement(visible=true, transformation(
              origin={-10,-12.083},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
          phi(                                                                                   start =     1.5,                       fixed =     false),
                                                                                                                  useAxisFlange = true)                    annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
          r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                      r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel(
                                                                         fixed =         false))
                                                                                                annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-111.581, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
        parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
        parameter Modelica.SIunits.Angle phi_0_restrained;
        Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        PowerGrabTestingRig.BoneStructure.Finger.Basic.TestMuscleComponents.NeuralMuscle
          neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=
                true, transformation(
              origin={-10,75},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Mechanics.Rotational.Sources.Position position2 annotation(Placement(visible = true, transformation(origin = {112.3, 16.825}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput F_A "activation value for the anterior muscle" annotation(Placement(visible = true, transformation(origin = {-148.269, 85}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90, 76.099}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput F_P "activation value for the posterior muscle" annotation(Placement(visible = true, transformation(origin = {-148.114, 45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90, -73.056}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -30}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput RevoluteJointTheta "Value for the controlled theta of the revolute joint angle" annotation(Placement(visible = true, transformation(origin = {150, 15}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {100, 80}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput LoadTorque "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -22.225}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {105.229, -74.083}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      equation
        connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.365, -21.112}, points={{22.093,
                -1.113},{-6.365,-1.113},{-6.365,1.112},{-9.365,1.112}},                                                                                                               color = {0, 0, 127}));
        connect(RevoluteJointTheta, position2.phi_ref) annotation(Line(visible = true, origin = {131.225, 15.913}, points = {{18.775, -0.913}, {-5.925, -0.913}, {-5.925, 0.912}, {-6.925, 0.912}}, color = {0, 0, 127}));
        connect(frame_a, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-133.291, -30}, points = {{-11.709, 0}, {11.71, 0}}));
        connect(F_P, neuralMuscle.forcePValue_p) annotation(Line(visible = true, origin = {-54.207, 58.26}, points={{-93.907,
                -13.26},{29.194,-13.26},{29.194,13.2592},{35.5183,13.2592}},                                                                                                                  color = {0, 0, 127}));
        connect(F_A, neuralMuscle.forcePValue_a) annotation(Line(visible = true, origin = {-54.244, 81.889}, points={{-94.025,
                3.111},{29.231,3.111},{29.231,-3.1108},{35.5633,-3.1108}},                                                                                                                     color = {0, 0, 127}));
        connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {29.098, 10.522}, points = {{73.202, 6.303}, {-36.601, 6.303}, {-36.601, -12.605}}));
        connect(neuralMuscle.frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 18.496}, points = {{-7.245, 46.504}, {-7.245, 41.812}, {5.868, 41.812}, {5.868, -65.063}, {2.755, -65.063}}, color = {95, 95, 95}));
        connect(neuralMuscle.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {28.444, 20}, points = {{-28.444, 45}, {8.444000000000001, 45}, {8.444000000000001, -45}, {11.556, -45}}, color = {95, 95, 95}));
        connect(neuralMuscle.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-58.933, 27.123}, points={{39.1268,
                37.877},{39.1268,33.185},{-27.122,33.185},{-27.122,-52.123},{-24.009,-52.123}}));
        connect(neuralMuscle.frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-15.543, 66.387}, points = {{5.543, 18.613}, {5.543, 23.159}, {-9.470000000000001, 23.159}, {-9.470000000000001, -6.079}, {3.655, -6.079}, {3.655, -26.387}, {0.543, -26.387}}, color = {95, 95, 95}));
        connect(neuralMuscle.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {18.086, 62.2}, points={{-18.086,
                23.0441},{-18.086,27.346},{11.02,27.346},{11.02,-38.869},{14.132,-38.869}}));
        connect(neuralMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-58.759, 60.131}, points = {{38.759, 24.869}, {38.759, 29.414}, {-26.877, 29.414}, {-26.877, -41.848}, {-23.764, -41.848}}, color = {95, 95, 95}));
        connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
        connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
        connect(fixedRotation.frame_b, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-75.651, -15}, points = {{-25.93, -15}, {7.639, -15}, {7.639, 15}, {10.651, 15}}));
        connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
        connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
        connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
        connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points={{-8.085,
                25},{3.695,25},{3.695,-25},{0.696,-25}},                                                                                                                         color = {0, 0, 127}));
        connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points={{-9.016,
                -9.5},{2.006,-9.5},{2.006,9.5},{5.006,9.5}},                                                                                                                  color = {0, 0, 127}));
        connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
        connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
        connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
        connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
        connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
        connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
        connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
        connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
        connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
        connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
        connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
        connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
        connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
        connect(fixedTranslation2.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
        connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
        connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points={{16.643,
                -6.041},{-5.345,-6.041},{-5.345,6.042},{-8.357,6.042}}));
        connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points={{14.113,
                6.042},{-2.887,6.042},{-2.887,-6.041},{-5.887,-6.041}}));
        connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points={{2.555,
                11.666},{3.555,11.666},{3.555,-11.665},{-9.663,-11.665}}));
        connect(fixedTranslation.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
        connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {-102.597, -100}, extent = {{-22.597, -7.56}, {22.597, 7.56}}, textString = "F_P"), Text(visible = true, origin = {-97.956, 50}, extent = {{-17.956, -6.974}, {17.956, 6.974}}, textString = "F_A"), Text(visible = true, origin = {100.831, 52.121}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {97.16800000000001, -100}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque")}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end BoneMuscleJointExperimentalComponent;

      model TestBoneJointComponent
        BoneJointComponent boneJointComponent(phi_0_restrained=0, r_OFingerBone={0.25,
              0,0}) annotation (Placement(visible=true, transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        PowerGrabTestingRig.BoneStructure.Finger.Basic.TestMuscleComponents.NeuralMuscle
          neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=
                true, transformation(
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
        PowerGrabTestingRig.BoneStructure.Finger.Basic.TestMuscleComponents.NeuralMuscle
          neuralMuscle1(f_max_a=200, f_max_p=200) annotation (Placement(visible
              =true, transformation(
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

      model TestDoubleJointComponent
        Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
        r_0(                                                                                                                                                                                      fixed =     false))
                                                                                                                                                                                                "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
        r_0(                                                                                                               start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 2.5, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
        phi(                                                                                                           fixed =     false, start =     1.5))
                                                                                                                                                           annotation(Placement(visible = true, transformation(origin = {-10, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
          revoluteRestrained(
          phi_0_restrained=phi_0_restrained,
          theta_1=-0.1,
          theta_2=1.6,
          useAxisFlange=true,
          stateSelect=true,
          c=10000,
          d=10000) annotation (Placement(visible=true, transformation(
              origin={3.053,0},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-35, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
        parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
        parameter Modelica.SIunits.Angle phi_0_restrained = 0;
        parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
        parameter Boolean closedLoop = true "Results in an open loop run when false";
        Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput LoadTorque "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -25}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-44.609, 109.799}, extent = {{15.391, -15.391}, {-15.391, 15.391}}, rotation = -270)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.804, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {104, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {102.392, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 42.881}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-80, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
        Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {157.74, -46.967}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {6.023, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -450)));
        PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
          doubleJointRevolute(
          useAxisFlange=true,
          theta_1=-0.87,
          theta_2=0.87,
          phi_0_restrained=phi_0_doubleJoint,
          axisRotation={0,1,0},
          c=10000,
          d=10000) annotation (Placement(visible=true, transformation(
              origin={-25,0},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 1}) annotation(Placement(visible = true, transformation(origin = {-85, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 5}) annotation(Placement(visible = true, transformation(origin = {-65, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 5}) annotation(Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 5}) annotation(Placement(visible = true, transformation(origin = {35, -96.736}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle
          annotation (Placement(visible=true, transformation(
              origin={-43.039,75},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle1
          annotation (Placement(visible=true, transformation(
              origin={25,75},
              extent={{10,-10},{-10,10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle2
          annotation (Placement(visible=true, transformation(
              origin={-35,-85},
              extent={{-10,10},{10,-10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle3
          annotation (Placement(visible=true, transformation(
              origin={25,-70},
              extent={{-10,10},{10,-10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
          magnitudeMuscle(f_max=200) annotation (Placement(visible=true,
              transformation(
              origin={-110,-87.842},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
          magnitudeMuscle1(f_max=200) annotation (Placement(visible=true,
              transformation(
              origin={-115,80},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.467, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {28.108, 111.603}, extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
        Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.053, -88.256}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
        Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-23.775, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {1.225, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0},
        phi(                                                                                     fixed =     false, start =     1.5),useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {1.225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin = {-130, 175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-105, 126.351}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin = {-135, 136.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin = {-107.443, 153.649}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-32.821, -31.96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(fixedTranslation9.frame_a, revolute3.frame_b) annotation(Line(visible = true, origin = {8.117000000000001, 26}, points = {{-3.117, -61}, {-6.117, -61}, {-6.117, -48}, {6.121, -48}, {6.121, 109}, {3.108, 109}}));
        connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {41.053, 13.333}, points = {{71.00700000000001, 1.667}, {-35.503, 1.667}, {-35.503, -3.333}}));
        connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 24.294}, points = {{6.98, 18.587}, {6.98, -9.294}, {-13.96, -9.294}}, color = {0, 0, 127}));
        connect(lineMuscle.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {1.715, 117.3}, points = {{-34.754, -42.7}, {12.622, -42.7}, {12.622, 42.7}, {9.51, 42.7}}));
        connect(lineMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-67.95399999999999, 74.8}, points = {{14.915, -0.2}, {-3.934, -0.2}, {-3.934, 0.2}, {-7.046, 0.2}}));
        connect(lineMuscle1.frame_a, fixedTranslation6.frame_b) annotation(Line(visible = true, origin = {38.194, 72.3}, points = {{-3.194, 2.3}, {0.694, 2.3}, {0.694, -2.3}, {1.806, -2.3}}));
        connect(lineMuscle1.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {13.075, 107.533}, points = {{1.925, -32.933}, {-1.3, -32.933}, {-1.3, -19.533}, {1.263, -19.533}, {1.263, 52.467}, {-1.85, 52.467}}));
        connect(fixedTranslation10.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-7.607, -56.307}, points = {{-15.214, 24.347}, {7.607, 24.347}, {7.607, -48.693}}));
        connect(revolute1.frame_b, fixedTranslation10.frame_a) annotation(Line(visible = true, origin = {-21.406, 8.347}, points = {{21.406, 26.653}, {24.419, 26.653}, {24.419, 13.653}, {-24.415, 13.653}, {-24.415, -40.307}, {-21.415, -40.307}}));
        connect(revolute1.frame_a, doubleJointRevolute.frame_b) annotation(Line(visible = true, origin = {-17.913, 19}, points = {{-2.087, 16}, {-5.1, 16}, {-5.1, 3}, {5.913, 3}, {5.913, -19}, {0.461, -19}}));
        connect(lineMuscle3.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {34.112, -52.3}, points = {{0.888, -17.3}, {4.113, -17.3}, {4.113, 17.3}, {-9.112, 17.3}}));
        connect(lineMuscle2.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {14.056, -59.8}, points = {{-39.056, -24.8}, {14.056, -24.8}, {14.056, 24.8}, {10.944, 24.8}}));
        connect(lineMuscle3.frame_a, fixedTranslation7.frame_b) annotation(Line(visible = true, origin = {15.887, -83.16800000000001}, points = {{-0.887, 13.568}, {-4.113, 13.568}, {-4.113, -13.568}, {9.113, -13.568}}));
        connect(fixedTranslation7.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {45.25, -48.368}, points = {{-0.25, -48.368}, {2.75, -48.368}, {2.75, 48.368}, {-5.25, 48.368}}));
        connect(fixedTranslation6.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {56.5, 35}, points = {{3.5, 35}, {6.5, 35}, {6.5, -35}, {-16.5, -35}}, color = {95, 95, 95}));
        connect(IFingerBone.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-59.996, -31}, points = {{14.996, 31}, {18.008, 31}, {18.008, 18}, {-18.004, 18}, {-18.004, -49}, {-15.004, -49}}));
        connect(IFingerBone.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-69.996, 29.333}, points = {{24.996, -29.333}, {28.008, -29.333}, {28.008, -16.333}, {-28.004, -16.333}, {-28.004, 45.667}, {-25.004, 45.667}}));
        connect(position4.flange, revolute3.axis) annotation(Line(visible = true, origin = {-55.305, 138.83}, points = {{-39.695, -12.479}, {-36.683, -12.479}, {-36.683, 9.395}, {56.53, 9.395}, {56.53, 6.17}}));
        connect(relAngleSensor2.phi_rel, add3.u1) annotation(Line(visible = true, origin = {-126.481, 161.099}, points = {{-3.519, 2.901}, {-3.519, -1.45}, {7.038, -1.45}}, color = {0, 0, 127}));
        connect(add3.y, position4.phi_ref) annotation(Line(visible = true, origin = {-106.721, 140.212}, points = {{10.278, 13.437}, {13.278, 13.437}, {13.278, 0.424}, {-13.279, 0.424}, {-13.279, -13.861}, {-10.279, -13.861}}, color = {0, 0, 127}));
        connect(const4.y, add3.u2) annotation(Line(visible = true, origin = {-121.082, 141.883}, points = {{-2.918, -5.766}, {0.639, -5.766}, {0.639, 5.766}, {1.639, 5.766}}, color = {0, 0, 127}));
        connect(relAngleSensor.phi_rel, y) annotation(Line(visible = true, origin = {112.58, -31.645}, points = {{-22.58, 30.645}, {-22.58, -15.322}, {45.16, -15.322}}, color = {0, 0, 127}));
        connect(relAngleSensor2.flange_b, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-55.002, 120}, points = {{-64.998, 55}, {32.499, 55}, {32.499, -110}}));
        connect(relAngleSensor2.flange_a, doubleJointRevolute.flange_b) annotation(Line(visible = true, origin = {-96.102, 77.2}, points = {{-43.898, 97.8}, {-46.898, 97.8}, {-46.898, -64.2}, {68.84699999999999, -64.2}, {68.84699999999999, -67.2}}));
        connect(revolute3.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-34.438, 67.5}, points = {{25.663, 67.5}, {-7.55, 67.5}, {-7.55, -67.5}, {-10.562, -67.5}}));
        connect(damper2.flange_b, revolute3.axis) annotation(Line(visible = true, origin = {-3.775, 151.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
        connect(damper2.flange_a, revolute3.support) annotation(Line(visible = true, origin = {-19.839, 147.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
        connect(revolute3.frame_b, fixedTranslation8.frame_a) annotation(Line(visible = true, origin = {1.229, 147.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
        connect(posteriorDoubleJointMuscle, magnitudeMuscle.forcePValue) annotation(Line(visible = true, origin = {-128.296, -88.333}, points = {{-19.757, 0.077}, {5.071, 0.077}, {5.071, -0.077}, {9.615, -0.077}}, color = {0, 0, 127}));
        connect(anteriorDoubleJointMuscle, magnitudeMuscle1.forcePValue) annotation(Line(visible = true, origin = {-131.149, 79.71599999999999}, points = {{-17.318, 0.284}, {4.924, 0.284}, {4.924, -0.284}, {7.469, -0.284}}, color = {0, 0, 127}));
        connect(magnitudeMuscle1.fMagnitude, lineMuscle1.muscleMagnitude) annotation(Line(visible = true, origin = {-51.389, 83.883}, points = {{-52.926, -4.474}, {-49.926, -4.474}, {-49.926, 4.117}, {76.389, 4.117}, {76.389, 0.715}}, color = {0, 0, 127}));
        connect(magnitudeMuscle1.fMagnitude, lineMuscle.muscleMagnitude) annotation(Line(visible = true, origin = {-78.605, 83.883}, points = {{-25.71, -4.474}, {-22.71, -4.474}, {-22.71, 4.117}, {35.566, 4.117}, {35.566, 0.715}}, color = {0, 0, 127}));
        connect(magnitudeMuscle.fMagnitude, lineMuscle3.muscleMagnitude) annotation(Line(visible = true, origin = {-16.438, -85.488}, points = {{-82.877, -2.945}, {41.438, -2.945}, {41.438, 5.889}}, color = {0, 0, 127}));
        connect(magnitudeMuscle.fMagnitude, lineMuscle2.muscleMagnitude) annotation(Line(visible = true, origin = {-72.389, -93.49299999999999}, points = {{-26.926, 5.06}, {-23.926, 5.06}, {-23.926, -4.507}, {37.389, -4.507}, {37.389, -1.106}}, color = {0, 0, 127}));
        connect(fixedTranslation2.frame_b, lineMuscle2.frame_a) annotation(Line(visible = true, origin = {-49.112, -82.3}, points = {{-5.888, 2.3}, {0.887, 2.3}, {0.887, -2.3}, {4.112, -2.3}}));
        connect(doubleJointRevolute.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-10.997, 0}, points = {{-6.454, 0}, {6.454, 0}}));
        connect(IFingerBone.frame_b, doubleJointRevolute.frame_a) annotation(Line(visible = true, origin = {-38.798, 0}, points = {{-6.202, 0}, {6.202, 0}}));
        connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
        connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
        connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-1.813, 79.40000000000001}, points = {{-5.831, 25.6}, {-5.831, 6.6}, {4.925, 6.6}, {4.925, -19.4}, {1.813, -19.4}}, color = {95, 95, 95}));
        connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.486, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.486, 27.5}}));
        connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
        connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -22.5}, points = {{22.094, -2.5}, {-6.364, -2.5}, {-6.364, 2.5}, {-9.364000000000001, 2.5}}, color = {0, 0, 127}));
        connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {61.02, -0.8}, points = {{38.98, -19.2}, {35.98, -19.2}, {35.98, 13.8}, {-55.47, 13.8}, {-55.47, 10.8}}));
        connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {26.387, 42.29}, points = {{26.266, -7.29}, {23.254, -7.29}, {23.254, 5.935}, {-36.387, 5.935}, {-36.387, 2.71}}));
        connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
        connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
        connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
        connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {63.42, 15.2}, points = {{-57.87, -5.2}, {-57.87, 7.8}, {39.58, 7.8}, {39.58, -5.2}, {36.58, -5.2}}));
        connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {47.119, 11.2}, points = {{-46.321, -1.2}, {-46.321, 1.8}, {29.881, 1.8}, {29.881, -1.2}, {32.881, -1.2}}));
        connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-15, 51.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
        connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-31.064, 47.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
        connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-9.996, 47.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
        connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
        connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {15.301, 0}, points = {{4.699, 0}, {-4.699, 0}}));
        connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-90, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-30, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide")}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end TestDoubleJointComponent;

      model BoneJointComponent

        extends
          PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Examples.RealBoneJoint;
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
        parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
        parameter Modelica.SIunits.Angle phi_0_restrained;
        Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -27.854}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {0, -50}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
        parameter Boolean torD = true "True if direct torque on joint is desired";
        Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin={122.06,
                  15},                                                                                                                                    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 35}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-0, 30}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor1 annotation(Placement(visible = true, transformation(origin={-77.787,
                  -25},                                                                                                                                              extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {-138.112, -33.337}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        parameter Boolean stateSelect = true;
        parameter Boolean closedLoop = true;
      equation
        connect(relAngleSensor1.phi_rel, y) annotation(Line(visible = true, origin = {-108.782, -36.135}, points={{30.995,
                0.135},{30.995,-2.865},{-16.33,-2.865},{-16.33,2.798},{-29.33,2.798}},                                                                                                                      color = {0, 0, 127}));
        connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 21.667}, points={{6.98,
                13.333},{6.98,-6.667},{-13.96,-6.667}},                                                                                                                  color = {0, 0, 127}));
        connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -23.927}, points = {{22.094, -3.927}, {-6.364, -3.927}, {-6.364, 3.927}, {-9.364000000000001, 3.927}}, color = {0, 0, 127}));
        connect(relAngleSensor1.flange_a, revoluteRestrained.flange_b1) annotation (
            Line(points={{-87.787,-25},{-90,-25},{-90,-2.083},{-12.2552,-2.083}},
              color={0,0,0}));
        connect(relAngleSensor1.flange_b, revoluteRestrained.flange_a1) annotation (
            Line(points={{-67.787,-25},{-70,-25},{-70,-2.083},{-7.5029,-2.083}},
              color={0,0,0}));
        connect(torque.flange, revoluteRestrained.flange_a1) annotation (Line(points=
                {{100,-20},{50,-20},{50,-2.083},{-7.5029,-2.083}}, color={0,0,0}));
        connect(position2.flange, revoluteRestrained.flange_a1) annotation (Line(
              points={{112.06,15},{50,15},{50,-2.083},{-7.5029,-2.083}}, color={0,0,0}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
                  fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end BoneJointComponent;

      model BoneDoubleJointComponent

        Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true,
        r_0(                                                                                                                                                                                 fixed =     false))
                                                                                                                                                                                                "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
        r_0(                                                                                                               fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
        phi(                                                                                                           fixed =     false, start =     1.5))
                                                                                                                                                           annotation(Placement(visible = true, transformation(origin = {-10, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.OneDegreeJoint
          revoluteRestrained(
          phi_0_restrained=phi_0_regularJoint,
          theta_1=-0.1,
          theta_2=1.6,
          useAxisFlange=true,
          stateSelect=true,
          c=10000,
          d=10000) annotation (Placement(visible=true, transformation(
              origin={3.053,0},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-35, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
        parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
        parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
        parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
        parameter Modelica.SIunits.Angle phi_0_regularJoint = 0;
        parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
        parameter Boolean closedDoubleJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
        parameter Boolean closedRegularJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
        Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -25}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-44.609, 109.799}, extent = {{15.391, -15.391}, {-15.391, 15.391}}, rotation = -270)));
        parameter Boolean torD = true "True if direct torque on joint is desired" annotation(Dialog(tab = "Advanced", group = "Parameters"));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.804, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {104, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {102.392, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position regularAngleControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput thetaControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {155, 42.881}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-80, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
        Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {157.74, -46.967}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {6.023, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -450)));
        PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.OneDegreeJoint
          doubleJointRevolute(
          useAxisFlange=true,
          theta_1=-0.87,
          theta_2=0.87,
          phi_0_restrained=phi_0_doubleJoint,
          axisRotation={0,1,0},
          c=10000,
          d=10000) annotation (Placement(visible=true, transformation(
              origin={-25,0},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.1}) annotation(Placement(visible = true, transformation(origin = {-85, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {-65, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {35, -96.736}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle
          annotation (Placement(visible=true, transformation(
              origin={-43.039,75},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle1
          annotation (Placement(visible=true, transformation(
              origin={25,75},
              extent={{10,-10},{-10,10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle2
          annotation (Placement(visible=true, transformation(
              origin={-35,-85},
              extent={{-10,10},{10,-10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle3
          annotation (Placement(visible=true, transformation(
              origin={25,-70},
              extent={{-10,10},{10,-10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
          magnitudeMuscle(f_max=200) annotation (Placement(visible=true,
              transformation(
              origin={-110,-87.842},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
          magnitudeMuscle1(f_max=200) annotation (Placement(visible=true,
              transformation(
              origin={-115,80},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.467, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {28.108, 111.603}, extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
        Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.053, -88.256}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
        Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-23.775, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {1.225, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0},
        phi(                                                                                     fixed =     false, start =     1.5),useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {1.225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin = {-130, 175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-105, 126.351}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin = {-135, 136.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin = {-107.443, 153.649}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-32.821, -31.96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput doubleJointControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-148.342, 45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-7.405, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
        Modelica.Mechanics.Rotational.Sources.Position doubleJointAngleControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-117.677, 8.558999999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(doubleJointAngleControl.flange, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-72.40300000000001, 10.624}, points={{-35.274,
                -2.065},{-32.262,-2.065},{-32.262,2.376},{49.9,2.376},{49.9,-0.624}}));
        connect(doubleJointControl, doubleJointAngleControl.phi_ref) annotation(Line(visible = true, origin = {-142.121, 20.706}, points = {{-6.221, 24.294}, {-6.222, -12.147}, {12.444, -12.147}}, color = {0, 0, 127}));
        connect(fixedTranslation9.frame_a, revolute3.frame_b) annotation(Line(visible = true, origin = {8.117000000000001, 26}, points = {{-3.117, -61}, {-6.117, -61}, {-6.117, -48}, {6.121, -48}, {6.121, 109}, {3.108, 109}}));
        connect(regularAngleControl.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {41.053, 13.333}, points = {{71.00700000000001, 1.667}, {-35.503, 1.667}, {-35.503, -3.333}}));
        connect(thetaControl, regularAngleControl.phi_ref) annotation(Line(visible = true, origin = {148.02, 24.294}, points = {{6.98, 18.587}, {6.98, -9.294}, {-13.96, -9.294}}, color = {0, 0, 127}));
        connect(lineMuscle.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {1.715, 117.3}, points = {{-34.754, -42.7}, {12.622, -42.7}, {12.622, 42.7}, {9.51, 42.7}}));
        connect(lineMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-67.95399999999999, 74.8}, points = {{14.915, -0.2}, {-3.934, -0.2}, {-3.934, 0.2}, {-7.046, 0.2}}));
        connect(lineMuscle1.frame_a, fixedTranslation6.frame_b) annotation(Line(visible = true, origin = {38.194, 72.3}, points = {{-3.194, 2.3}, {0.694, 2.3}, {0.694, -2.3}, {1.806, -2.3}}));
        connect(lineMuscle1.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {13.075, 107.533}, points = {{1.925, -32.933}, {-1.3, -32.933}, {-1.3, -19.533}, {1.263, -19.533}, {1.263, 52.467}, {-1.85, 52.467}}));
        connect(fixedTranslation10.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-7.607, -56.307}, points = {{-15.214, 24.347}, {7.607, 24.347}, {7.607, -48.693}}));
        connect(revolute1.frame_b, fixedTranslation10.frame_a) annotation(Line(visible = true, origin = {-21.406, 8.347}, points = {{21.406, 26.653}, {24.419, 26.653}, {24.419, 13.653}, {-24.415, 13.653}, {-24.415, -40.307}, {-21.415, -40.307}}));
        connect(revolute1.frame_a, doubleJointRevolute.frame_b) annotation(Line(visible = true, origin = {-17.913, 19}, points={{-2.087,
                16},{-5.1,16},{-5.1,3},{5.913,3},{5.913,-19},{2.913,-19}}));
        connect(lineMuscle3.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {34.112, -52.3}, points = {{0.888, -17.3}, {4.113, -17.3}, {4.113, 17.3}, {-9.112, 17.3}}));
        connect(lineMuscle2.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {14.056, -59.8}, points = {{-39.056, -24.8}, {14.056, -24.8}, {14.056, 24.8}, {10.944, 24.8}}));
        connect(lineMuscle3.frame_a, fixedTranslation7.frame_b) annotation(Line(visible = true, origin = {15.887, -83.16800000000001}, points = {{-0.887, 13.568}, {-4.113, 13.568}, {-4.113, -13.568}, {9.113, -13.568}}));
        connect(fixedTranslation7.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {45.25, -48.368}, points = {{-0.25, -48.368}, {2.75, -48.368}, {2.75, 48.368}, {-5.25, 48.368}}));
        connect(fixedTranslation6.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {56.5, 35}, points = {{3.5, 35}, {6.5, 35}, {6.5, -35}, {-16.5, -35}}, color = {95, 95, 95}));
        connect(IFingerBone.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-59.996, -31}, points = {{14.996, 31}, {18.008, 31}, {18.008, 18}, {-18.004, 18}, {-18.004, -49}, {-15.004, -49}}));
        connect(IFingerBone.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-69.996, 29.333}, points = {{24.996, -29.333}, {28.008, -29.333}, {28.008, -16.333}, {-28.004, -16.333}, {-28.004, 45.667}, {-25.004, 45.667}}));
        connect(position4.flange, revolute3.axis) annotation(Line(visible = true, origin = {-55.305, 138.83}, points = {{-39.695, -12.479}, {-36.683, -12.479}, {-36.683, 9.395}, {56.53, 9.395}, {56.53, 6.17}}));
        connect(relAngleSensor2.phi_rel, add3.u1) annotation(Line(visible = true, origin = {-126.481, 161.099}, points = {{-3.519, 2.901}, {-3.519, -1.45}, {7.038, -1.45}}, color = {0, 0, 127}));
        connect(add3.y, position4.phi_ref) annotation(Line(visible = true, origin = {-106.721, 140.212}, points = {{10.278, 13.437}, {13.278, 13.437}, {13.278, 0.424}, {-13.279, 0.424}, {-13.279, -13.861}, {-10.279, -13.861}}, color = {0, 0, 127}));
        connect(const4.y, add3.u2) annotation(Line(visible = true, origin = {-121.082, 141.883}, points = {{-2.918, -5.766}, {0.639, -5.766}, {0.639, 5.766}, {1.639, 5.766}}, color = {0, 0, 127}));
        connect(relAngleSensor.phi_rel, y) annotation(Line(visible = true, origin = {112.58, -31.645}, points = {{-22.58, 30.645}, {-22.58, -15.322}, {45.16, -15.322}}, color = {0, 0, 127}));
        connect(relAngleSensor2.flange_b, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-55.002, 120}, points = {{-64.998, 55}, {32.499, 55}, {32.499, -110}}));
        connect(relAngleSensor2.flange_a, doubleJointRevolute.flange_b) annotation(Line(visible = true, origin = {-96.102, 77.2}, points = {{-43.898, 97.8}, {-46.898, 97.8}, {-46.898, -64.2}, {68.84699999999999, -64.2}, {68.84699999999999, -67.2}}));
        connect(revolute3.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-34.438, 67.5}, points = {{25.663, 67.5}, {-7.55, 67.5}, {-7.55, -67.5}, {-10.562, -67.5}}));
        connect(damper2.flange_b, revolute3.axis) annotation(Line(visible = true, origin = {-3.775, 151.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
        connect(damper2.flange_a, revolute3.support) annotation(Line(visible = true, origin = {-19.839, 147.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
        connect(revolute3.frame_b, fixedTranslation8.frame_a) annotation(Line(visible = true, origin = {1.229, 147.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
        connect(posteriorDoubleJointMuscle, magnitudeMuscle.forcePValue) annotation(Line(visible = true, origin = {-128.296, -88.333}, points={{-19.757,
                0.077},{5.071,0.077},{5.071,-0.0775},{9.6153,-0.0775}},                                                                                                                                               color = {0, 0, 127}));
        connect(anteriorDoubleJointMuscle, magnitudeMuscle1.forcePValue) annotation(Line(visible = true, origin = {-131.149, 79.71599999999999}, points={{-17.318,
                0.284},{4.924,0.284},{4.924,-0.2845},{7.4683,-0.2845}},                                                                                                                                                         color = {0, 0, 127}));
        connect(magnitudeMuscle1.fMagnitude, lineMuscle1.muscleMagnitude) annotation(Line(visible = true, origin = {-51.389, 83.883}, points={{-52.926,
                -4.4738},{-49.926,-4.4738},{-49.926,4.117},{76.389,4.117},{76.389,0.7157}},                                                                                                                                                color = {0, 0, 127}));
        connect(magnitudeMuscle1.fMagnitude, lineMuscle.muscleMagnitude) annotation(Line(visible = true, origin = {-78.605, 83.883}, points={{-25.71,
                -4.4738},{-22.71,-4.4738},{-22.71,4.117},{35.566,4.117},{35.566,0.7157}},                                                                                                                                              color = {0, 0, 127}));
        connect(magnitudeMuscle.fMagnitude, lineMuscle3.muscleMagnitude) annotation(Line(visible = true, origin = {-16.438, -85.488}, points={{-82.877,
                -2.9448},{41.438,-2.9448},{41.438,5.8893}},                                                                                                                                            color = {0, 0, 127}));
        connect(magnitudeMuscle.fMagnitude, lineMuscle2.muscleMagnitude) annotation(Line(visible = true, origin = {-72.389, -93.49299999999999}, points={{-26.926,
                5.0602},{-23.926,5.0602},{-23.926,-4.507},{37.389,-4.507},{37.389,-1.1057}},                                                                                                                                                         color = {0, 0, 127}));
        connect(fixedTranslation2.frame_b, lineMuscle2.frame_a) annotation(Line(visible = true, origin = {-49.112, -82.3}, points = {{-5.888, 2.3}, {0.887, 2.3}, {0.887, -2.3}, {4.112, -2.3}}));
        connect(doubleJointRevolute.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-10.997, 0}, points={{-4.003,
                0},{4.05,0}}));
        connect(IFingerBone.frame_b, doubleJointRevolute.frame_a) annotation(Line(visible = true, origin = {-38.798, 0}, points={{-6.202,
                0},{3.798,0}}));
        connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
        connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
        connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-1.813, 79.40000000000001}, points = {{-5.831, 25.6}, {-5.831, 6.6}, {4.925, 6.6}, {4.925, -19.4}, {1.813, -19.4}}, color = {95, 95, 95}));
        connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.486, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.486, 27.5}}));
        connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
        connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -22.5}, points = {{22.094, -2.5}, {-6.364, -2.5}, {-6.364, 2.5}, {-9.364000000000001, 2.5}}, color = {0, 0, 127}));
        connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {61.02, -0.8}, points = {{38.98, -19.2}, {35.98, -19.2}, {35.98, 13.8}, {-55.47, 13.8}, {-55.47, 10.8}}));
        connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {26.387, 42.29}, points = {{26.266, -7.29}, {23.254, -7.29}, {23.254, 5.935}, {-36.387, 5.935}, {-36.387, 2.71}}));
        connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
        connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
        connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
        connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {63.42, 15.2}, points = {{-57.87, -5.2}, {-57.87, 7.8}, {39.58, 7.8}, {39.58, -5.2}, {36.58, -5.2}}));
        connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {47.119, 11.2}, points = {{-46.321, -1.2}, {-46.321, 1.8}, {29.881, 1.8}, {29.881, -1.2}, {32.881, -1.2}}));
        connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-15, 51.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
        connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-31.064, 47.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
        connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-9.996, 47.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
        connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
        connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {15.301, 0}, points={{4.699,0},
                {-2.248,0}}));
        connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points={{2.555,
                11.666},{3.555,11.666},{3.555,-11.665},{-9.663,-11.665}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-105, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-50, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide"), Text(visible = true, origin = {-5.816, 146.068}, extent = {{-34.184, -6.068}, {34.184, 6.068}}, textString = "doubleJointControl"), Line(visible = true, origin = {-7.817, 134.041}, points = {{0, -5.959}, {0, 5.959}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end BoneDoubleJointComponent;
    end Subcomponents;

    model MuscleStiffnessOpenTrial
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
      r_0(                                                                                                                                                                                      fixed =     false))
                                                                                                                                                                                                "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
      r_0(                                                                                                               start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
      r_0(                                                                  start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                      m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.35, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.45, -0.05, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                           fixed =     false, start =     1.5))
                                                                                                                                                         annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
        revoluteRestrained(
        phi_0_restrained=1.05,
        theta_1=-0.1,
        theta_2=1.6,
        useAxisFlange=true) annotation (Placement(visible=true, transformation(
            origin={-10,-12.083},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                     start =     1.5,                       fixed =     false),
                                                                                                                useAxisFlange = true)                    annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
      r_0(                                                                                start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                    r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel(
                                                                       fixed =         false))
                                                                                              annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-131.519, -67.056}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-111.581, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
      parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
      Modelica.Blocks.Sources.Constant const3(k = 0.11) annotation(Placement(visible = true, transformation(origin = {-125, 47.531}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const6(k = 3) annotation(Placement(visible = true, transformation(origin = {145, -22.931}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      PowerGrabTestingRig.BoneStructure.Finger.Basic.TestMuscleComponents.NeuralMuscle
        neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=
              true, transformation(
            origin={-10,75},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Blocks.Sources.Ramp ramp(duration = 1, offset = 0.485345, height = 0) annotation(Placement(visible = true, transformation(origin = {-125, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant thetaDesired(k = 1.1) "Desired Theta Goal" annotation(Placement(visible = true, transformation(origin = {-70, -66.702}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(ramp.y, neuralMuscle.forcePValue_a) annotation(Line(visible = true, origin = {-45.676, 79.389}, points = {{-68.324, 0.611}, {20.664, 0.611}, {20.664, -0.611}, {26.996, -0.611}}, color = {0, 0, 127}));
      connect(neuralMuscle.frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 18.496}, points = {{-7.245, 46.504}, {-7.245, 41.812}, {5.868, 41.812}, {5.868, -65.063}, {2.755, -65.063}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {28.444, 20}, points = {{-28.444, 45}, {8.444000000000001, 45}, {8.444000000000001, -45}, {11.556, -45}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-58.933, 27.123}, points = {{39.126, 37.877}, {39.126, 33.185}, {-27.122, 33.185}, {-27.122, -52.123}, {-24.009, -52.123}}));
      connect(neuralMuscle.frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-15.543, 66.387}, points = {{5.543, 18.613}, {5.543, 23.159}, {-9.470000000000001, 23.159}, {-9.470000000000001, -6.079}, {3.655, -6.079}, {3.655, -26.387}, {0.543, -26.387}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {18.086, 62.2}, points = {{-18.086, 23.045}, {-18.086, 27.346}, {11.02, 27.346}, {11.02, -38.869}, {14.132, -38.869}}));
      connect(neuralMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-58.759, 60.131}, points = {{38.759, 24.869}, {38.759, 29.414}, {-26.877, 29.414}, {-26.877, -41.848}, {-23.764, -41.848}}, color = {95, 95, 95}));
      connect(const3.y, neuralMuscle.forcePValue_p) annotation(Line(visible = true, origin = {-45.678, 59.525}, points = {{-68.322, -11.994}, {20.666, -11.994}, {20.666, 11.994}, {26.99, 11.994}}, color = {0, 0, 127}));
      connect(const6.y, torque.tau) annotation(Line(visible = true, origin = {126.5, -21.465}, points = {{7.5, -1.465}, {-1.5, -1.465}, {-1.5, 1.465}, {-4.5, 1.465}}, color = {0, 0, 127}));
      connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
      connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
      connect(fixedRotation.frame_b, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-75.651, -15}, points = {{-25.93, -15}, {7.639, -15}, {7.639, 15}, {10.651, 15}}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-121.512, -50.295}, points = {{-0.007, -16.76}, {3.118, -16.76}, {3.118, -3.535}, {-3.081, -3.535}, {-3.081, 20.295}, {-0.068, 20.295}}));
      connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
      connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
      connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points = {{-8.085000000000001, 25}, {3.695, 25}, {3.695, -25}, {0.695, -25}}, color = {0, 0, 127}));
      connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points = {{-9.016999999999999, -9.5}, {2.006, -9.5}, {2.006, 9.5}, {5.006, 9.5}}, color = {0, 0, 127}));
      connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
      connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
      connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
      connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
      connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
      connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
      connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
      connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
      connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
      connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
      connect(fixedTranslation2.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
      connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
      connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
      connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
      connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
      connect(fixedTranslation.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
      connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
      annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end MuscleStiffnessOpenTrial;

    model MuscleStiffnessTrial
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
        r_0(                                                                                                                                                                                    fixed =     false))
                                                                                                                                                                                                "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
        r_0(                                                                                                             start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
        r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                      m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.35, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.45, -0.05, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
        phi(                                                                                                         fixed =     false, start =     1.5))
                                                                                                                                                         annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
        revoluteRestrained(
        phi_0_restrained=1.05,
        theta_1=-0.1,
        theta_2=1.6,
        useAxisFlange=true) annotation (Placement(visible=true, transformation(
            origin={-10,-12.083},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
        phi(                                                                                   start =     1.5,                       fixed =     false),
                                                                                                                useAxisFlange = true)                    annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
        r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                    r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel(
                                                                       fixed =         false))
                                                                                              annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-131.519, -67.056}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-111.581, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
      parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
      Modelica.Blocks.Sources.Constant const3(k = 0.11) annotation(Placement(visible = true, transformation(origin = {-125, 47.531}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const6(k = 3) annotation(Placement(visible = true, transformation(origin = {145, -22.931}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      PowerGrabTestingRig.BoneStructure.Finger.Basic.TestMuscleComponents.NeuralMuscle
        neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=
              true, transformation(
            origin={-10,75},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.Rotational.Sources.Position position2 annotation(Placement(visible = true, transformation(origin = {112.3, 16.825}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Ramp ramp(duration = 10, offset = 0.485345, height = 0) annotation(Placement(visible = true, transformation(origin = {-125, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Ramp ramp1(offset = 1.05, height = 0.1, duration = 10) annotation(Placement(visible = true, transformation(origin = {187.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    equation
      connect(ramp1.y, position2.phi_ref) annotation(Line(visible = true, origin = {138.74, 15.913}, points = {{37.32, -0.913}, {-11.44, -0.913}, {-11.44, 0.912}, {-14.44, 0.912}}, color = {0, 0, 127}));
      connect(ramp.y, neuralMuscle.forcePValue_a) annotation(Line(visible = true, origin = {-45.676, 79.389}, points = {{-68.324, 0.611}, {20.664, 0.611}, {20.664, -0.611}, {26.996, -0.611}}, color = {0, 0, 127}));
      connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {29.098, 10.522}, points = {{73.202, 6.303}, {-36.601, 6.303}, {-36.601, -12.605}}));
      connect(neuralMuscle.frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 18.496}, points = {{-7.245, 46.504}, {-7.245, 41.812}, {5.868, 41.812}, {5.868, -65.063}, {2.755, -65.063}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {28.444, 20}, points = {{-28.444, 45}, {8.444000000000001, 45}, {8.444000000000001, -45}, {11.556, -45}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-58.933, 27.123}, points = {{39.126, 37.877}, {39.126, 33.185}, {-27.122, 33.185}, {-27.122, -52.123}, {-24.009, -52.123}}));
      connect(neuralMuscle.frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-15.543, 66.387}, points = {{5.543, 18.613}, {5.543, 23.159}, {-9.470000000000001, 23.159}, {-9.470000000000001, -6.079}, {3.655, -6.079}, {3.655, -26.387}, {0.543, -26.387}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {18.086, 62.2}, points = {{-18.086, 23.045}, {-18.086, 27.346}, {11.02, 27.346}, {11.02, -38.869}, {14.132, -38.869}}));
      connect(neuralMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-58.759, 60.131}, points = {{38.759, 24.869}, {38.759, 29.414}, {-26.877, 29.414}, {-26.877, -41.848}, {-23.764, -41.848}}, color = {95, 95, 95}));
      connect(const3.y, neuralMuscle.forcePValue_p) annotation(Line(visible = true, origin = {-45.678, 59.525}, points = {{-68.322, -11.994}, {20.666, -11.994}, {20.666, 11.994}, {26.99, 11.994}}, color = {0, 0, 127}));
      connect(const6.y, torque.tau) annotation(Line(visible = true, origin = {126.5, -21.465}, points = {{7.5, -1.465}, {-1.5, -1.465}, {-1.5, 1.465}, {-4.5, 1.465}}, color = {0, 0, 127}));
      connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
      connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
      connect(fixedRotation.frame_b, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-75.651, -15}, points = {{-25.93, -15}, {7.639, -15}, {7.639, 15}, {10.651, 15}}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-121.512, -50.295}, points = {{-0.007, -16.76}, {3.118, -16.76}, {3.118, -3.535}, {-3.081, -3.535}, {-3.081, 20.295}, {-0.068, 20.295}}));
      connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
      connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
      connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points = {{-8.085000000000001, 25}, {3.695, 25}, {3.695, -25}, {0.695, -25}}, color = {0, 0, 127}));
      connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points = {{-9.016999999999999, -9.5}, {2.006, -9.5}, {2.006, 9.5}, {5.006, 9.5}}, color = {0, 0, 127}));
      connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
      connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
      connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
      connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
      connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
      connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
      connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
      connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
      connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
      connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
      connect(fixedTranslation2.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
      connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
      connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
      connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
      connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
      connect(fixedTranslation.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
      connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
      annotation(experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end MuscleStiffnessTrial;

    model MuscleStiffnessTrialPart2
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone * 10, animation = true,
        r_0(                                                                                                                                                                                    fixed =     false))
                                                                                                                                                                                                "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
        r_0(                                                                                                             start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone * 10, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
        r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                      m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.35, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.45, -0.05, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
        phi(                                                                                                         fixed =     false, start =     1.5))
                                                                                                                                                         annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
        revoluteRestrained(
        phi_0_restrained=1.5,
        theta_1=-0.1,
        theta_2=1.6,
        useAxisFlange=true) annotation (Placement(visible=true, transformation(
            origin={-10,-12.083},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
        phi(                                                                                   start =     1.5,                       fixed =     false),
                                                                                                                useAxisFlange = true)                    annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
        r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                    r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel(
                                                                       fixed =         false))
                                                                                              annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-131.519, -67.056}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-111.581, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
      parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
      Modelica.Blocks.Sources.Constant const3(k = 0.1) annotation(Placement(visible = true, transformation(origin = {-125, 47.531}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const6(k = 3) annotation(Placement(visible = true, transformation(origin = {145, -22.931}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      PowerGrabTestingRig.BoneStructure.Finger.Basic.TestMuscleComponents.NeuralMuscle
        neuralMuscle(f_max_a=200, f_max_p=200) annotation (Placement(visible=
              true, transformation(
            origin={-10,75},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.Rotational.Sources.Position position2 annotation(Placement(visible = true, transformation(origin = {112.3, 16.825}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Ramp ramp(duration = 1, offset = 0, height = 1) annotation(Placement(visible = true, transformation(origin = {-125, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Ramp ramp1(offset = 1.5, height = 0, duration = 10) annotation(Placement(visible = true, transformation(origin = {187.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    equation
      connect(ramp1.y, position2.phi_ref) annotation(Line(visible = true, origin = {138.74, 15.913}, points = {{37.32, -0.913}, {-11.44, -0.913}, {-11.44, 0.912}, {-14.44, 0.912}}, color = {0, 0, 127}));
      connect(ramp.y, neuralMuscle.forcePValue_a) annotation(Line(visible = true, origin = {-45.676, 79.389}, points = {{-68.324, 0.611}, {20.664, 0.611}, {20.664, -0.611}, {26.996, -0.611}}, color = {0, 0, 127}));
      connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {29.098, 10.522}, points = {{73.202, 6.303}, {-36.601, 6.303}, {-36.601, -12.605}}));
      connect(neuralMuscle.frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 18.496}, points = {{-7.245, 46.504}, {-7.245, 41.812}, {5.868, 41.812}, {5.868, -65.063}, {2.755, -65.063}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {28.444, 20}, points = {{-28.444, 45}, {8.444000000000001, 45}, {8.444000000000001, -45}, {11.556, -45}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-58.933, 27.123}, points = {{39.126, 37.877}, {39.126, 33.185}, {-27.122, 33.185}, {-27.122, -52.123}, {-24.009, -52.123}}));
      connect(neuralMuscle.frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-15.543, 66.387}, points = {{5.543, 18.613}, {5.543, 23.159}, {-9.470000000000001, 23.159}, {-9.470000000000001, -6.079}, {3.655, -6.079}, {3.655, -26.387}, {0.543, -26.387}}, color = {95, 95, 95}));
      connect(neuralMuscle.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {18.086, 62.2}, points = {{-18.086, 23.045}, {-18.086, 27.346}, {11.02, 27.346}, {11.02, -38.869}, {14.132, -38.869}}));
      connect(neuralMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-58.759, 60.131}, points = {{38.759, 24.869}, {38.759, 29.414}, {-26.877, 29.414}, {-26.877, -41.848}, {-23.764, -41.848}}, color = {95, 95, 95}));
      connect(const3.y, neuralMuscle.forcePValue_p) annotation(Line(visible = true, origin = {-45.678, 59.525}, points = {{-68.322, -11.994}, {20.666, -11.994}, {20.666, 11.994}, {26.99, 11.994}}, color = {0, 0, 127}));
      connect(const6.y, torque.tau) annotation(Line(visible = true, origin = {126.5, -21.465}, points = {{7.5, -1.465}, {-1.5, -1.465}, {-1.5, 1.465}, {-4.5, 1.465}}, color = {0, 0, 127}));
      connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
      connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
      connect(fixedRotation.frame_b, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-75.651, -15}, points = {{-25.93, -15}, {7.639, -15}, {7.639, 15}, {10.651, 15}}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-121.512, -50.295}, points = {{-0.007, -16.76}, {3.118, -16.76}, {3.118, -3.535}, {-3.081, -3.535}, {-3.081, 20.295}, {-0.068, 20.295}}));
      connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
      connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
      connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points = {{-8.085000000000001, 25}, {3.695, 25}, {3.695, -25}, {0.695, -25}}, color = {0, 0, 127}));
      connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points = {{-9.016999999999999, -9.5}, {2.006, -9.5}, {2.006, 9.5}, {5.006, 9.5}}, color = {0, 0, 127}));
      connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
      connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
      connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
      connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
      connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
      connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
      connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
      connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
      connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
      connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
      connect(fixedTranslation2.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
      connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
      connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
      connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
      connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
      connect(fixedTranslation.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
      connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
      annotation(experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end MuscleStiffnessTrialPart2;

    model TestDoubleJointFinger
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0.12, 0}) annotation(Placement(visible = true, transformation(origin = {-37.829, 27.639}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, -0.12, 0}) annotation(Placement(visible = true, transformation(origin = {-36.131, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabTestingRig.BoneStructure.Finger.Basic.Subcomponents.TestDoubleJointComponent
        boneCDistal(
        phi_0_doubleJoint=0,
        closedLoop=false,
        phi_0_restrained=0.5) annotation (Placement(visible=true,
            transformation(
            origin={3.447,0},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-132.171, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-103.949, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid loadControl(offset = 0, amplitude = 0, period = 10) annotation(Placement(visible = true, transformation(origin = {-16.581, 76.90600000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid anteriorPercent(amplitude = 0, period = 10, offset = 1) annotation(Placement(visible = true, transformation(origin = {32.333, 76.553}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid posteriorPercent(amplitude = 0, period = 10, offset = 0) annotation(Placement(visible = true, transformation(origin = {43.392, -14.111}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
        magnitudeMuscle(f_max=200) annotation (Placement(visible=true,
            transformation(
            origin={-105.306,80},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
        magnitudeMuscle1(f_max=2000) annotation (Placement(visible=true,
            transformation(
            origin={-120,-65.414},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle
        annotation (Placement(visible=true, transformation(
            origin={-66.322,81.84399999999999},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle1
        annotation (Placement(visible=true, transformation(
            origin={70,81.84399999999999},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle2
        annotation (Placement(visible=true, transformation(
            origin={53.225,-68.43899999999999},
            extent={{10,10},{-10,-10}},
            rotation=0)));
      PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle lineMuscle3
        annotation (Placement(visible=true, transformation(
            origin={118.978,-68.43899999999999},
            extent={{-10,10},{10,-10}},
            rotation=0)));
      Modelica.Blocks.Sources.Trapezoid anteriorRegular(amplitude = 0, period = 10, offset = 0) annotation(Placement(visible = true, transformation(origin = {-160, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid posteriorRegular(amplitude = 0, period = 10, offset = 0) annotation(Placement(visible = true, transformation(origin = {-158.187, -66.98999999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(posteriorBase.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-78.182, -10}, points = {{32.051, -10}, {-8.141999999999999, -10}, {-8.141999999999999, 10}, {-15.767, 10}}));
      connect(fixedRotation.frame_b, anteriorBase.frame_a) annotation(Line(visible = true, origin = {-60.859, 13.819}, points={{-33.09,
              -13.819},{10.03,-13.819},{10.03,13.82},{13.03,13.82}}));
      connect(posteriorRegular.y, magnitudeMuscle1.forcePValue) annotation(Line(visible = true, origin = {-135.579, -66.486}, points={{-11.608,
              -0.504},{2.354,-0.504},{2.354,0.5035},{6.8983,0.5035}},                                                                                                                                        color = {0, 0, 127}));
      connect(anteriorRegular.y, magnitudeMuscle.forcePValue) annotation(Line(visible = true, origin = {-125.012, 79.71599999999999}, points={{-23.988,
              0.284},{6.481,0.284},{6.481,-0.2845},{11.0253,-0.2845}},                                                                                                                                                color = {0, 0, 127}));
      connect(lineMuscle2.frame_b, posteriorBase.frame_b) annotation(Line(visible = true, origin = {-7.236, -44.019}, points={{50.461,
              -24.02},{-15.783,-24.02},{-15.783,24.019},{-18.895,24.019}}));
      connect(magnitudeMuscle1.fMagnitude, lineMuscle3.muscleMagnitude) annotation(Line(visible = true, origin = {-16.798, -74.58499999999999}, points={{-92.517,
              8.5802},{-89.517,8.5802},{-89.517,-6.854},{135.776,-6.854},{135.776,
              -3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
      connect(lineMuscle3.frame_b, boneCDistal.frame_b1) annotation(Line(visible = true, origin = {101.808, -38.519}, points={{27.17,
              -29.52},{30.395,-29.52},{30.395,29.519},{-87.961,29.519}}));
      connect(lineMuscle3.frame_a, boneCDistal.frame_resolve1) annotation(Line(visible = true, origin = {20.059, -38.519}, points={{88.919,
              -29.52},{-31.153,-29.52},{-31.153,29.519},{-26.612,29.519}}));
      connect(magnitudeMuscle1.fMagnitude, lineMuscle2.muscleMagnitude) annotation(Line(visible = true, origin = {-43.099, -74.58499999999999}, points={{-66.216,
              8.5802},{-63.216,8.5802},{-63.216,-6.854},{96.324,-6.854},{96.324,
              -3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
      connect(lineMuscle2.frame_a, boneCDistal.frame_resolve1) annotation(Line(visible = true, origin = {27.897, -44.159}, points = {{35.328, -23.88}, {38.553, -23.88}, {38.553, -11.28}, {-38.991, -11.28}, {-38.991, 35.159}, {-34.45, 35.159}}));
      connect(lineMuscle1.frame_b, boneCDistal.frame_b) annotation(Line(visible = true, origin = {65.01900000000001, 45.222}, points={{14.981,
              36.222},{18.206,36.222},{18.206,-36.222},{-51.3916,-36.222}}));
      connect(lineMuscle1.frame_a, boneCDistal.frame_resolve) annotation(Line(visible = true, origin = {7.815, 45.222}, points = {{52.185, 36.222}, {-18.909, 36.222}, {-18.909, -36.222}, {-14.368, -36.222}}));
      connect(lineMuscle.frame_b, boneCDistal.frame_resolve) annotation(Line(visible = true, origin = {-21.266, 45.222}, points = {{-35.056, 36.222}, {10.172, 36.222}, {10.172, -36.222}, {14.713, -36.222}}));
      connect(lineMuscle.frame_a, anteriorBase.frame_b) annotation(Line(visible = true, origin = {-52.113, 59.309}, points = {{-24.209, 22.135}, {-27.434, 22.135}, {-27.434, 9.535}, {27.396, 9.535}, {27.396, -31.67}, {24.284, -31.67}}));
      connect(magnitudeMuscle.fMagnitude, lineMuscle1.muscleMagnitude) annotation(Line(visible = true, origin = {-27.572, 87.98999999999999}, points={{-67.049,
              -8.5808},{-64.048,-8.5808},{-64.048,6.854},{97.572,6.854},{97.572,
              3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
      connect(magnitudeMuscle.fMagnitude, lineMuscle.muscleMagnitude) annotation(Line(visible = true, origin = {-82.101, 87.98999999999999}, points={{-12.52,
              -8.5808},{-9.519,-8.5808},{-9.519,6.854},{15.779,6.854},{15.779,
              3.4527}},                                                                                                                                                                                                        color = {0, 0, 127}));
      connect(posteriorPercent.y, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {22.286, 2.176}, points={{10.106,
              -16.287},{7.106,-16.287},{7.106,11.858},{-12.1598,11.858},{-12.1598,
              8.8574}},                                                                                                                                                                                                        color = {0, 0, 127}));
      connect(anteriorPercent.y, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {11.283, 54.755}, points={{10.05,
              21.798},{-5.0252,21.798},{-5.0252,-43.5947}},                                                                                                                                         color = {0, 0, 127}));
      connect(loadControl.y, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-2.536, 54.931}, points={{-3.045,
              21.975},{1.5221,21.975},{1.5221,-43.9511}},                                                                                                                       color = {0, 0, 127}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-118.06, 0}, points = {{-4.111, 0}, {4.111, -0}}));
      connect(fixedRotation.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-50.251, 0}, points = {{-43.698, 0}, {43.698, 0}}));
      annotation(experiment(StopTime = 60.0), Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
    end TestDoubleJointFinger;
  end Basic;

  package Joints

    model NewRevoluteTest
      inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-77.821, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
        revoluteRestrained(
        theta_1=-0.1,
        theta_2=1.47,
        phi_0_restrained=0.05,
        useAxisFlange=true) annotation (Placement(visible=true, transformation(
            origin={-23.081,0},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(density = 800, r = {0.5, 0, 0},
      r_0(                                                                                         fixed =     false))
                                                                                                                      annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-70, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, period = 10, offset = -9.81) annotation(Placement(visible = true, transformation(origin = {-130, 42.784}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(trapezoid.y, torque.tau) annotation(Line(visible = true, origin = {-92.75, 43.892}, points = {{-26.25, -1.108}, {7.75, -1.108}, {7.75, 1.108}, {10.75, 1.108}}, color = {0, 0, 127}));
      connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-33.723, 33.333}, points={{-26.277,
            11.667},{13.1391,11.667},{13.1391,-23.333}}));
      connect(fixedRotation.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-35.338, 0}, points={{-4.662,
            0},{4.6613,0}}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-63.91, 0}, points={{-3.911,
            0},{3.91,0}}));
      connect(revoluteRestrained.frame_b, bodyCylinder.frame_a) annotation(Line(visible = true, origin = {-0.266, 0}, points={{
            -15.2662,0},{15.266,0}}));
      annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end NewRevoluteTest;

    model RevoluteRestrainedTest
      inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
        sideRevolute(
        theta_1=-0.87,
        theta_2=0.87,
        phi_0_restrained=0.05,
        useAxisFlange=true,
        axisRotation={0,1,0}) annotation (Placement(visible=true, transformation(
            origin={-50,-0},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(density = 800, r = {0.5, 0, 0},
        r_0(                                                                                       fixed =     false))
                                                                                                                      annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-110, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-70, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, period = 10, offset = 9.81) annotation(Placement(visible = true, transformation(origin = {-130, 42.784}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples.RevoluteRestrained
        normalRevolute(
        phi_0_restrained=0.05,
        theta_1=-0.1,
        theta_2=1.47,
        useAxisFlange=true) annotation (Placement(visible=true, transformation(
            origin={-20,0},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 0, offset = -9.81, period = 10) annotation(Placement(visible = true, transformation(origin = {-62.491, 77.78400000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque1 annotation(Placement(visible = true, transformation(origin = {-2.491, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(torque1.flange, sideRevolute.flange_a) annotation(Line(visible = true, origin = {-13.296, 39.2}, points={{20.805,
              40.8},{23.805,40.8},{23.805,-26.2},{-34.2069,-26.2},{-34.2069,-29.2}}));
      connect(trapezoid1.y, torque1.tau) annotation(Line(visible = true, origin = {-25.241, 78.892}, points = {{-26.25, -1.108}, {7.75, -1.108}, {7.75, 1.108}, {10.75, 1.108}}, color = {0, 0, 127}));
      connect(torque.flange, normalRevolute.flange_a) annotation(Line(visible = true, origin = {-31.669, 33.333}, points={{-28.331,
              11.667},{14.1661,11.667},{14.1661,-23.333}}));
      connect(normalRevolute.frame_b, bodyCylinder.frame_a) annotation(Line(visible = true, origin = {1.274, 0}, points={{
              -13.7252,0},{13.726,0}}));
      connect(sideRevolute.frame_b, normalRevolute.frame_a) annotation(Line(visible = true, origin = {-35.023, -0}, points={{-7.4282,
              0},{7.4273,0}}));
      connect(trapezoid.y, torque.tau) annotation(Line(visible = true, origin = {-92.75, 43.892}, points = {{-26.25, -1.108}, {7.75, -1.108}, {7.75, 1.108}, {10.75, 1.108}}, color = {0, 0, 127}));
      connect(fixedRotation.frame_b, sideRevolute.frame_a) annotation(Line(visible = true, origin = {-78.798, -0}, points={{-21.202,
              0},{21.2023,0}}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-125, -0}, points = {{-5, 0}, {5, -0}}));
      annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end RevoluteRestrainedTest;
  end Joints;

  package Sources "Sources such as load, joint force, and position prescribers"
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
  end Sources;
end Finger;
