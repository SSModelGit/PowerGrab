within PowerGrabStructure.Discarded.OldComponents;
model RealTestFinger
  PowerGrabStructure.Muscle.Advanced.Examples.FingerMuscleLineArray
    anteriorMuscleArray(
    maxFDistal=20,
    maxMDistal=20,
    maxCDistal=20) annotation (Placement(visible=true, transformation(
        origin={-120,15},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  PowerGrabStructure.Discarded.OldComponents.RealFingerStructure fingerArray(
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
    r_OboneCDistal={fingerLength[2]/2,0,0}) annotation (Placement(visible=true,
        transformation(
        origin={17.255,15},
        extent={{-47.745,-47.745},{47.745,47.745}},
        rotation=0)));
  PowerGrabStructure.Muscle.Advanced.Examples.FingerMuscleLineArray
    posteriorMuscleArray(
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
    delta=delta) if contact annotation (Placement(visible=true,
        transformation(
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
  connect(objectPrismDampConnection3.frame_a, fixedRotation1.frame_b) annotation(Line(visible = true, origin = {-252.603, 33.801}, points = {{120.007, -78.801}, {-37.461, -78.801}, {-37.461, 78.801}, {-45.086, 78.801}}));
  connect(fixedRotation1.frame_b, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-232.821, 101.301}, points = {{-64.86799999999999, 11.301}, {19.821, 11.301}, {19.821, -11.301}, {25.225, -11.301}}));
  connect(fixedRotation1.frame_b, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-225.321, 113.801}, points = {{-72.36799999999999, -1.199}, {22.321, -1.199}, {22.321, 1.199}, {27.725, 1.199}}));
  connect(fixedRotation1.frame_b, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-225.321, 123.801}, points = {{-72.36799999999999, -11.199}, {22.321, -11.199}, {22.321, 11.199}, {27.725, 11.199}}));
  connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-232.576, -16.307}, points = {{85.038, -71.06699999999999}, {88.163, -71.06699999999999}, {88.163, -57.842}, {-88.125, -57.842}, {-88.125, 128.909}, {-85.113, 128.909}}));
  connect(antC.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-185.524, -24.803}, points = {{-31.215, -0.197}, {8.506, -0.197}, {8.506, 0.197}, {14.202, 0.197}}, color = {0, 0, 127}));
  connect(antM.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-185.471, 13.778}, points = {{-31.055, 1.222}, {8.452999999999999, 1.222}, {8.452999999999999, -1.222}, {14.149, -1.222}}, color = {0, 0, 127}));
  connect(antF.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-185.787, 53.006}, points = {{-33.213, 0.07099999999999999}, {8.769, 0.07099999999999999}, {8.769, -0.07099999999999999}, {15.675, -0.07099999999999999}}, color = {0, 0, 127}));
  connect(postC.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {198.879, -25.258}, points = {{15.121, 0.258}, {-3.121, 0.258}, {-3.121, -0.258}, {-8.879, -0.258}}, color = {0, 0, 127}));
  connect(postM.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {198.437, 12.481}, points = {{13.795, -0.019}, {-2.679, -0.019}, {-2.679, 0.019}, {-8.436999999999999, 0.019}}, color = {0, 0, 127}));
  connect(postF.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {197.72, 51.903}, points = {{12.88, -1.903}, {-1.962, -1.903}, {-1.962, 1.903}, {-8.957000000000001, 1.903}}, color = {0, 0, 127}));
  connect(one.y, fingerArray.sidePosterior) annotation(Line(visible = true, origin = {-28.151, 50.526}, points = {{-25.849, 114.474}, {-22.849, 114.474}, {-22.849, -87.167}, {35.774, -87.167}, {35.774, -54.614}}, color = {0, 0, 127}));
  connect(one.y, fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-12.983, 121.631}, points = {{-41.017, 43.369}, {20.508, 43.369}, {20.508, -86.738}}, color = {0, 0, 127}));
  connect(fixedRotation.frame_b, fingerArray.frame_a) annotation(Line(visible = true, origin = {-28.802, -67.843}, points = {{-76.19799999999999, -19.538}, {38.099, -19.538}, {38.099, 39.077}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-132.141, -87.378}, points = {{-15.398, 0.004}, {4.128, 0.004}, {4.128, -0.004}, {7.141, -0.004}}));
  connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points = {{62.863, 1.655}, {-19.137, 1.655}, {-19.137, -1.656}, {-24.588, -1.656}}));
  connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points = {{40.024, 0}, {-40.024, 0}}));
  connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points = {{8.726000000000001, 0}, {-8.725, 0}}));
  connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
  connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.09}}));
  connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.452}}));
  connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points = {{-16.258, -5.785}, {-16.258, 2.893}, {32.515, 2.893}}));
  connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points = {{-27.13, -0.737}, {8.037000000000001, -0.737}, {8.037000000000001, 0.737}, {11.056, 0.737}}));
  connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
  connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
  connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
  connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points = {{-19.179, 0.5629999999999999}, {-19.179, -2.437}, {19.179, -2.437}, {19.179, 4.31}}, color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points = {{-27.158, -1.462}, {8.009, -1.462}, {8.009, 1.462}, {11.139, 1.462}}));
  connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points = {{-27.133, -1.051}, {8.034000000000001, -1.051}, {8.034000000000001, 1.051}, {11.065, 1.051}}, color = {95, 95, 95}));
  connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points = {{13.56, -0.636}, {-3.44, -0.636}, {-3.44, 0.636}, {-6.679, 0.636}}, color = {95, 95, 95}));
  connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points = {{13.518, -0.046}, {-3.482, -0.046}, {-3.482, 0.046}, {-6.554, 0.046}}));
  connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points = {{13.433, 0.623}, {-3.478, 0.623}, {-3.478, -0.623}, {-6.478, -0.623}}));
  connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points = {{13.439, 1.549}, {-3.48, 1.549}, {-3.48, -1.549}, {-6.48, -1.549}}, color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points = {{-27.154, -0.212}, {8.013, -0.212}, {8.013, 0.212}, {11.128, 0.212}}));
  connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points = {{-27.131, 0.251}, {8.037000000000001, 0.251}, {8.037000000000001, -0.251}, {11.057, -0.251}}));
  connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points = {{-16.522, -0.313}, {-13.522, -0.313}, {-13.522, 1.545}, {21.782, 1.545}, {21.782, -2.466}}));
  annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealTestFinger;
