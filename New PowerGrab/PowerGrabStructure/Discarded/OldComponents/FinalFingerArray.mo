within PowerGrabStructure.Discarded.OldComponents;
model FinalFingerArray
  PowerGrabStructure.Muscle.Advanced.Examples.FingerMuscleLineArray
    anteriorMuscleArray(
    maxFDistal=500,
    maxMDistal=500,
    maxCDistal=500) annotation (Placement(visible=true, transformation(
        origin={-120,15},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  PowerGrabStructure.Discarded.OldComponents.FingerMultipleRevoluteArray fingerArray(
    phi_0_boneFDistal=0.1,
    phi_0_boneMDistal=0.1,
    phi_0_boneCDistal=0.1,
    fDistalClosed=fDistalClosed,
    mDistalClosed=mDistalClosed,
    cDistalRegularClosed=cDistalRegularClosed,
    cDistalSideClosed=cDistalSideClosed,
    dirTorque=false,
    phi_0_doubleJoint=0,
    diameterIboneFDistal=0.002,
    diameterIboneMDistal=0.002,
    diameterIboneCDistal=0.002,
    diameterOboneCDistal=0.002,
    diameterOboneFDistal=0.002,
    diameterOboneMDistal=0.002,
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
  PowerGrabStructure.Muscle.Advanced.Examples.FingerMuscleLineArray
    posteriorMuscleArray(
    maxFDistal=500,
    maxMDistal=500,
    maxCDistal=500) annotation (Placement(visible=true, transformation(
        origin={137.5,15},
        extent={{52.5,-52.5},{-52.5,52.5}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
  ObjectPrismConnection objectLFConnection(
    threshold=threshold,
    k=k,
    dampingCoefficient=dampingCoefficient,
    boneLength=1) annotation (Placement(visible=true, transformation(
        origin={-190,135},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  ObjectPrismConnection objectLFConnection1(
    k=k,
    dampingCoefficient=dampingCoefficient,
    threshold=threshold,
    boneLength=1) annotation (Placement(visible=true, transformation(
        origin={-190,115},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  ObjectPrismConnection objectLFConnection2(
    k=k,
    dampingCoefficient=dampingCoefficient,
    threshold=threshold,
    boneLength=1) annotation (Placement(visible=true, transformation(
        origin={-200,90},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
  parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
  parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
  ObjectPrismConnection objectLFConnection3(
    boneLength=1,
    dampingCoefficient=dampingCoefficient,
    k=k,
    threshold=threshold) annotation (Placement(visible=true, transformation(
        origin={-125,-45},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
equation
  connect(objectLFConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points={{
          -16.2582,-5.785},{-16.2582,2.893},{32.515,2.893}}));
  connect(frame_a4, objectLFConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -47}, points={{-98.101,
          -2},{30.899,-2},{30.899,2},{36.3033,2}}));
  connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points={{-91.875,
          45.453},{29.615,45.453},{29.615,-45.4525},{32.6445,-45.4525}}));
  connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points={{-37.449,
          42.089},{11.445,42.089},{11.445,-42.0899},{14.5589,-42.0899}}));
  connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points={{-31.901,
          37.841},{9.588,37.841},{9.588,-37.8408},{12.7248,-37.8408}}));
  connect(fixedTranslation.frame_b, objectLFConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points={{8.726,0},
          {-8.7252,0}}));
  connect(fixedTranslation1.frame_b, objectLFConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points={{40.024,
          0},{-40.0232,0}}));
  connect(fixedTranslation2.frame_b, objectLFConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points={{62.863,
          1.655},{-19.137,1.655},{-19.137,-1.656},{-24.5882,-1.656}}));
  connect(frame_a1, objectLFConnection2.frame_a) annotation(Line(visible = true, origin = {-221.149, 89.5}, points={{-29.851,
          -0.5},{8.149,-0.5},{8.149,0.5},{13.5533,0.5}}));
  connect(frame_a2, objectLFConnection1.frame_a) annotation(Line(visible = true, origin = {-214.399, 115.5}, points={{-39.601,
          0.5},{11.399,0.5},{11.399,-0.5},{16.8033,-0.5}}));
  connect(frame_a3, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-214.649, 137.5}, points={{-40.351,
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
          37.593},{82.881,37.593},{82.881,-25.913},{-136.046,-25.913},{
          -136.046,6.63934}},                                                                                                                                                                                                   color = {0, 0, 127}));
  connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points={{-122.39,
          -10.866},{-98.94,-10.866},{-98.94,27.826},{160.135,27.826},{160.135,
          -3.92025}},                                                                                                                                                                                                      color = {0, 0, 127}));
  connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points={{-27.13,
          -0.736507},{8.037,-0.736507},{8.037,0.736613},{11.0556,0.736613}}));
  connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points={{42.121,
          23.691},{-12.121,23.691},{-12.121,-18.6903},{-17.879,-18.6903}},                                                                                                                                        color = {0, 0, 127}));
  connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points={{42.43,
          -35.97},{-11.812,-35.97},{-11.812,20.9694},{-18.8074,20.9694}},                                                                                                                                   color = {0, 0, 127}));
  connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points={{42.121,
          -5.317},{-12.121,-5.317},{-12.121,0.31695},{-17.879,0.31695}},                                                                                                                                      color = {0, 0, 127}));
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
  connect(debug7A.frame_b, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-34.375, -28.884}, points={{-5.625,
          -27.979},{0.865,-27.979},{0.865,27.9785},{3.89455,27.9785}}));
  connect(debug7P.frame_a, fingerArray.frame_5P) annotation(Line(visible = true, origin = {72.73699999999999, -30.484}, points={{17.263,
          -29.516},{-4.737,-29.516},{-4.737,29.5169},{-7.78912,29.5169}}));
  connect(debug6P.frame_a, fingerArray.frame_6P) annotation(Line(visible = true, origin = {70.25, 37.373}, points={{9.75,
          54.35},{-2.25,54.35},{-2.25,-54.3502},{-5.25,-54.3502}}));
  connect(debug6A.frame_b, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-47.721, 39.14}, points={{-45.76,
          55.86},{14.21,55.86},{14.21,-55.8606},{17.3404,-55.8606}}));
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
          -0.31266},{-13.522,-0.31266},{-13.522,1.545},{21.7818,1.545},{
          21.7818,-2.46578}}));
  annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end FinalFingerArray;
