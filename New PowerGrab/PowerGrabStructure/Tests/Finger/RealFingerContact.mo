within PowerGrabStructure.Tests.Finger;
model RealFingerContact
  import PowerGrabStructure;
  Muscle.Advanced.Examples.FingerMuscleLineArray anteriorMuscleArray(
    maxFDistal=fMuscle_max,
    maxMDistal=fMuscle_max,
    maxCDistal=fMuscle_max) annotation (Placement(visible=true, transformation(
        origin={-103.678,21.322},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.RealFingerStructure fingerArray(
    phi_0_boneFDistal=initialRotations[1],
    phi_0_boneMDistal=initialRotations[2],
    phi_0_boneCDistal=initialRotations[3],
    fDistalClosed=fDistalClosed,
    mDistalClosed=mDistalClosed,
    cDistalRegularClosed=cDistalRegularClosed,
    cDistalSideClosed=cDistalSideClosed,
    dirTorque=false,
    phi_0_doubleJoint=phiSide0,
    diameterIboneFDistal=diameter,
    diameterIboneMDistal=diameter,
    diameterIboneCDistal=diameter,
    diameterOboneCDistal=diameter,
    diameterOboneFDistal=diameter,
    diameterOboneMDistal=diameter,
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
  Muscle.Advanced.Examples.FingerMuscleLineArray posteriorMuscleArray(
    maxFDistal=fMuscle_max,
    maxMDistal=fMuscle_max,
    maxCDistal=fMuscle_max) annotation (Placement(visible=true, transformation(
        origin={137.5,15},
        extent={{52.5,-52.5},{-52.5,52.5}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, fingerArray.diameterOboneCDistal * 0.75, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Modelica.SIunits.Angle phiSide0 annotation(Dialog(group = "Initial values"));
  parameter Boolean fDistalClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
  parameter Boolean mDistalClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
  parameter Boolean cDistalRegularClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
  parameter Boolean cDistalSideClosed = true annotation(Dialog(tab = "Advanced", group = "Parameters"));
  parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
  Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, fingerArray.diameterOboneMDistal * 0.75, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, fingerArray.diameterOboneFDistal * 0.75, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  PowerGrabStructure.ContactObject.Examples.PrismDampingOC
    objectPrismDampConnection(
    boneLength=fingerLength[4],
    dampingCoefficient=dampingCoefficient,
    k=k,
    threshold=threshold,
    mu=mu,
    delta=delta,
    bufferEffect=bufferEffect,
    bufferRange=bufferRange,
    bufferDamping=bufferDamping,
    v0Mag=v0Mag,
    v2delta=v2delta) annotation (Placement(visible=true, transformation(
        origin={-190,135},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.ContactObject.Examples.PrismDampingOC
    objectPrismDampConnection1(
    boneLength=fingerLength[3],
    dampingCoefficient=dampingCoefficient,
    k=k,
    threshold=threshold,
    mu=mu,
    delta=delta,
    bufferEffect=bufferEffect,
    bufferRange=bufferRange,
    bufferDamping=bufferDamping,
    v0Mag=v0Mag,
    v2delta=v2delta) annotation (Placement(visible=true, transformation(
        origin={-190,115},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.ContactObject.Examples.PrismDampingOC
    objectPrismDampConnection2(
    boneLength=fingerLength[2],
    dampingCoefficient=dampingCoefficient,
    k=k,
    threshold=threshold,
    mu=mu,
    delta=delta,
    bufferEffect=bufferEffect,
    bufferRange=bufferRange,
    bufferDamping=bufferDamping,
    v0Mag=v0Mag,
    v2delta=v2delta) annotation (Placement(visible=true, transformation(
        origin={-200,90},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
  parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
  parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
  PowerGrabStructure.ContactObject.Examples.PrismDampingOC
    objectPrismDampConnection3(
    boneLength=fingerLength[1],
    dampingCoefficient=dampingCoefficient,
    k=k,
    threshold=threshold,
    mu=mu,
    delta=delta,
    bufferEffect=bufferEffect,
    bufferRange=bufferRange,
    bufferDamping=bufferDamping,
    v0Mag=v0Mag,
    v2delta=v2delta) annotation (Placement(visible=true, transformation(
        origin={-125,-50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Real mu = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Length delta = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Velocity v0Mag = 1 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Velocity v2delta = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.TranslationalSpringConstant bufferEffect = 25 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Length bufferRange = 0.1 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.TranslationalDampingConstant bufferDamping = 15 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Length diameter = 0.02;
  parameter Modelica.SIunits.Force fMuscle_max = 50;
  parameter Modelica.SIunits.Angle initialRotations[3] = {0, 0, 0} "In the order of: far distal phalange, middle phalange, and proximal phalange" annotation(Dialog(group = "Initial values"));
equation
  connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-187.848, -2.668}, points={{-87.152,
          20.616},{27.152,20.616},{27.152,-15.6162},{32.848,-15.6162}},                                                                                                                                        color = {0, 0, 127}));
  connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-187.546, 36.102}, points={{-87.454,
          -38.154},{26.85,-38.154},{26.85,23.1547},{33.7557,23.1547}},                                                                                                                                                  color = {0, 0, 127}));
  connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-187.848, 15.913}, points={{-87.152,
          -7.965},{27.152,-7.965},{27.152,2.96505},{32.848,2.96505}},                                                                                                                                      color = {0, 0, 127}));
  connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-74.054, -43.333}, points={{
        -43.3972,-6.667},{21.698,-6.667},{21.698,13.333}}));
  connect(frame_a4, objectPrismDampConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -49.5}, points={{-98.101,
        0.5},{30.899,0.5},{30.899,-0.5},{36.3033,-0.5}}));
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
  connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-37.467, 17.422}, points={{-14.889,
          2.42449},{3.957,2.42449},{3.957,-2.42439},{6.97461,-2.42439}}));
  connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points={{42.121,
        23.691},{-12.121,23.691},{-12.121,-18.6903},{-17.879,-18.6903}},                                                                                                                                          color = {0, 0, 127}));
  connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points={{42.43,
          -35.97},{-11.812,-35.97},{-11.812,20.9694},{-18.8074,20.9694}},                                                                                                                                   color = {0, 0, 127}));
  connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points={{42.121,
        -5.317},{-12.121,-5.317},{-12.121,0.31695},{-17.879,0.31695}},                                                                                                                                        color = {0, 0, 127}));
  connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points={{52.7655,
          34.1557},{52.7655,-17.078},{-105.532,-17.078}}));
  connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points={{10.083,
          0.311},{10.083,-2.689},{-10.0833,-2.689},{-10.0833,5.066}}));
  connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points={{13.5,
          -1.73113},{-3.5,-1.73113},{-3.5,1.73179},{-6.5,1.73179}}));
  connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points={{13.513,
          -1.22772},{-3.487,-1.22772},{-3.487,1.22688},{-6.53912,1.22688}}));
  connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-41.338, -33.964}, points={{-11.018,
          3.964},{-11.018,-2.676},{11.0171,-2.676},{11.0171,1.3881}},                                                                                                                                        color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-37.439, -15.022}, points={{-14.917,
          1.69908},{3.929,1.69908},{3.929,-1.69858},{7.05842,-1.69858}}));
  connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-37.464, 1.204}, points={{-14.892,
          2.10962},{3.954,2.10962},{3.954,-2.10945},{6.98355,-2.10945}},                                                                                                                           color = {95, 95, 95}));
  connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points={{13.56,
          -0.635375},{-3.44,-0.635375},{-3.44,0.635673},{-6.67833,0.635673}},                                                                                                                         color = {95, 95, 95}));
  connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points={{13.518,
          -0.046},{-3.482,-0.046},{-3.482,0.0469846},{-6.55402,0.0469846}}));
  connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points={{13.433,
          0.622},{-3.478,0.622},{-3.478,-0.623},{-6.47827,-0.623}}));
  connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points={{13.439,
          1.549},{-3.48,1.549},{-3.48,-1.54944},{-6.47944,-1.54944}},                                                                                                                                             color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-37.443, 33.77}, points={{-14.913,
          2.9486},{3.933,2.9486},{3.933,-2.9489},{7.0469,-2.9489}}));
  connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-37.467, 50.242}, points={{-14.889,
        3.41286},{3.956,3.41286},{3.956,-3.412},{6.977,-3.412}}));
  connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points={{-0.2,
          6.00934},{-13.522,6.00934},{-13.522,1.545},{21.7818,1.545},{21.7818,
          -2.46578}}));
  annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealFingerContact;
