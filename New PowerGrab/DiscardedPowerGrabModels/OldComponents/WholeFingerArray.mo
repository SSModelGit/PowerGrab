within DiscardedPowerGrabModels.OldComponents;
model WholeFingerArray
  PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscleArray(
    maxFDistal=500,
    maxMDistal=500,
    maxCDistal=500) annotation (Placement(visible=true, transformation(
        origin={-120,15},
        extent={{-51.322,-51.322},{51.322,51.322}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.FingerMultipleRevoluteArray fingerArray(
    phi_0_boneFDistal=0.1,
    phi_0_boneMDistal=0.1,
    phi_0_boneCDistal=0.1,
    fDistalClosed=fDistalClosed,
    mDistalClosed=mDistalClosed,
    cDistalRegularClosed=cDistalRegularClosed,
    cDistalSideClosed=cDistalSideClosed,
    dirTorque=false,
    phi_0_doubleJoint=0) annotation (Placement(visible=true, transformation(
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
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6A(m = 0.0001, shapeType = "sphere", r = {0, 0, 0}, r_CM = {0, 0, 0}, sphereDiameter = 0.05, sphereColor = {255, 0, 255}) annotation(Placement(visible = true, transformation(origin = {-103.481, 95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7A(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {255, 255, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-50, -56.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug6P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {90, 91.723}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape debug7P(m = 0.0001, r = {0, 0, 0}, r_CM = {0, 0, 0}, shapeType = "sphere", sphereColor = {0, 128, 255}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Boolean fDistalClosed = true;
  parameter Boolean mDistalClosed = true;
  parameter Boolean cDistalRegularClosed = true;
  parameter Boolean cDistalSideClosed = true;
  Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
equation
  connect(fixedTranslation.frame_a, frame_a1) annotation(Line(visible = true, origin = {-222.5, 89.5}, points = {{47.5, 0.5}, {-9.5, 0.5}, {-9.5, -0.5}, {-28.5, -0.5}}));
  connect(fixedTranslation1.frame_a, frame_a2) annotation(Line(visible = true, origin = {-206.601, 115.5}, points = {{104.197, -0.5}, {-28.399, -0.5}, {-28.399, 0.5}, {-47.399, 0.5}}, color = {95, 95, 95}));
  connect(fixedTranslation2.frame_a, frame_a3) annotation(Line(visible = true, origin = {-205.5, 139.156}, points = {{110.5, -0.845}, {-30.5, -0.845}, {-30.5, 0.844}, {-49.5, 0.844}}));
  connect(fixedTranslation2.frame_b, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
  connect(fixedTranslation1.frame_b, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.089}}));
  connect(fixedTranslation.frame_b, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.453}}));
  connect(jointControl[4], fingerArray.sideTheta) annotation(Line(visible = true, origin = {-6.857, 94.131}, points = {{20.039, 68.387}, {20.039, 44.937}, {-26.654, 44.937}, {-26.654, -79.131}, {13.23, -79.131}}, color = {0, 0, 127}));
  connect(jointControl[3], fingerArray.thetaCDistal) annotation(Line(visible = true, origin = {1.92, 90.976}, points = {{11.263, 71.541}, {11.263, -22.847}, {-11.263, -22.847}, {-11.263, -25.847}}, color = {0, 0, 127}));
  connect(jointControl[2], fingerArray.thetaMDistal) annotation(Line(visible = true, origin = {13.23, 91.119}, points = {{-0.047, 71.399}, {-0.047, -22.8}, {0.047, -22.8}, {0.047, -25.8}}, color = {0, 0, 127}));
  connect(jointControl[1], fingerArray.thetaFDistal) annotation(Line(visible = true, origin = {25.166, 91.074}, points = {{-11.983, 71.443}, {-11.983, -22.814}, {11.983, -22.814}, {11.983, -25.814}}, color = {0, 0, 127}));
  connect(posteriorInput[4], fingerArray.sidePosterior) annotation(Line(visible = true, origin = {143.669, -10.727}, points = {{106.331, 22.593}, {82.881, 22.593}, {82.881, -25.913}, {-136.046, -25.913}, {-136.046, 6.639}}, color = {0, 0, 127}));
  connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points = {{-122.39, -25.866}, {-98.94, -25.866}, {-98.94, 27.826}, {160.135, 27.826}, {160.135, -3.92}}, color = {0, 0, 127}));
  connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points = {{-27.13, -0.737}, {8.037000000000001, -0.737}, {8.037000000000001, 0.737}, {11.056, 0.737}}));
  connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points = {{42.121, 18.691}, {-12.121, 18.691}, {-12.121, -18.691}, {-17.879, -18.691}}, color = {0, 0, 127}));
  connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points = {{42.43, -20.97}, {-11.812, -20.97}, {-11.812, 20.97}, {-18.807, 20.97}}, color = {0, 0, 127}));
  connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points = {{42.121, -0.317}, {-12.121, -0.317}, {-12.121, 0.317}, {-17.879, 0.317}}, color = {0, 0, 127}));
  connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-200.089, -5.829}, points = {{-74.911, 18.777}, {23.072, 18.777}, {23.072, -18.777}, {28.767, -18.777}}, color = {0, 0, 127}));
  connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-200.089, 12.752}, points = {{-74.911, 0.196}, {23.072, 0.196}, {23.072, -0.196}, {28.767, -0.196}}, color = {0, 0, 127}));
  connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-199.787, 32.941}, points = {{-75.21299999999999, -19.993}, {22.769, -19.993}, {22.769, 19.993}, {29.675, 19.993}}, color = {0, 0, 127}));
  connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points = {{52.766, 34.156}, {52.766, -17.078}, {-105.532, -17.078}}));
  connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
  connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
  connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
  connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points = {{-19.179, 0.5629999999999999}, {-19.179, -2.437}, {19.179, -2.437}, {19.179, 4.31}}, color = {95, 95, 95}));
  connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points = {{-27.158, -1.462}, {8.009, -1.462}, {8.009, 1.462}, {11.139, 1.462}}));
  connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points = {{-27.133, -1.051}, {8.034000000000001, -1.051}, {8.034000000000001, 1.051}, {11.065, 1.051}}, color = {95, 95, 95}));
  connect(debug7A.frame_b, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-34.375, -28.884}, points = {{-5.625, -27.979}, {0.865, -27.979}, {0.865, 27.979}, {3.895, 27.979}}));
  connect(debug7P.frame_a, fingerArray.frame_5P) annotation(Line(visible = true, origin = {72.73699999999999, -30.484}, points = {{17.263, -29.516}, {-4.737, -29.516}, {-4.737, 29.516}, {-7.789, 29.516}}));
  connect(debug6P.frame_a, fingerArray.frame_6P) annotation(Line(visible = true, origin = {70.25, 37.373}, points = {{9.75, 54.35}, {-2.25, 54.35}, {-2.25, -54.35}, {-5.25, -54.35}}));
  connect(debug6A.frame_b, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-47.721, 39.14}, points = {{-45.76, 55.86}, {14.21, 55.86}, {14.21, -55.86}, {17.34, -55.86}}));
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
end WholeFingerArray;
