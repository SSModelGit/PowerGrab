within PowerGrabStructure.Muscle.Advanced.Examples;
model FingerMuscleLineArray
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    FDistalLine1(muscleColor=muscleColorF) annotation (Placement(visible=true,
        transformation(
        origin={-56.506,81.581},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  Modelica.Blocks.Interfaces.RealInput perFDistal annotation(Placement(visible = true, transformation(origin = {-140, 56.637}, extent = {{-11.637, -11.637}, {11.637, 11.637}}, rotation = 0), iconTransformation(origin = {-97.643, 73.91500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput perMDistal annotation(Placement(visible = true, transformation(origin = {-142.648, 27.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -4.762}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput perCDistal annotation(Placement(visible = true, transformation(origin = {-144.38, -25.62}, extent = {{-10.62, -10.62}, {10.62, 10.62}}, rotation = 0), iconTransformation(origin = {-100, -77.172}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.MagnitudeMuscle
    FDistalMuscle(f_max=maxFDistal) annotation (Placement(visible=true,
        transformation(
        origin={-105,56.764},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.MagnitudeMuscle
    MDistalMuscle(f_max=maxMDistal) annotation (Placement(visible=true,
        transformation(
        origin={-107.95,28.222},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.MagnitudeMuscle
    CDistalMuscle(f_max=maxCDistal) annotation (Placement(visible=true,
        transformation(
        origin={-112.183,-25},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1 annotation(Placement(visible = true, transformation(origin = {149, 86}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 97}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2 annotation(Placement(visible = true, transformation(origin = {149, 61}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 63}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3 annotation(Placement(visible = true, transformation(origin = {149, 36}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 30}, extent = {{-13.164, -13.164}, {13.164, 13.164}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4 annotation(Placement(visible = true, transformation(origin = {149, 11}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -2.875}, extent = {{-12.875, -12.875}, {12.875, 12.875}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5 annotation(Placement(visible = true, transformation(origin = {149, -14}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -35.089}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6 annotation(Placement(visible = true, transformation(origin = {149, -39}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -67.505}, extent = {{-12.495, -12.495}, {12.495, 12.495}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7 annotation(Placement(visible = true, transformation(origin = {149, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-13.082, -13.082}, {13.082, 13.082}}, rotation = 0)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    FDistalLine2(muscleColor=muscleColorF) annotation (Placement(visible=true,
        transformation(
        origin={-56.967,50},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    FDistalLine4(muscleColor=muscleColorF) annotation (Placement(visible=true,
        transformation(
        origin={-57.258,-25},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    FDistalLine3(muscleColor=muscleColorF) annotation (Placement(visible=true,
        transformation(
        origin={-57.344,17.178},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    MDistalLine2(muscleColor=muscleColorM) annotation (Placement(visible=true,
        transformation(
        origin={-18.167,30},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    MDistalLine1(muscleColor=muscleColorM) annotation (Placement(visible=true,
        transformation(
        origin={-20,65},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    MDistalLine3(muscleColor=muscleColorM) annotation (Placement(visible=true,
        transformation(
        origin={-20,-10},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    CDistalLine2(muscleColor=muscleColorC) annotation (Placement(visible=true,
        transformation(
        origin={20,-16.636},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  PowerGrabStructure.Muscle.Advanced.Subcomponents.Examples.LineMuscle
    CDistalLine1(muscleColor=muscleColorC) annotation (Placement(visible=true,
        transformation(
        origin={20,35},
        extent={{-10,-10},{10,10}},
        rotation=-270)));
  parameter Modelica.SIunits.Force maxFDistal;
  parameter Modelica.SIunits.Force maxMDistal;
  parameter Modelica.SIunits.Force maxCDistal;
  parameter Integer muscleColorF[3] = {255, 0, 0};
  parameter Integer muscleColorM[3] = {155, 0, 0};
  parameter Integer muscleColorC[3] = {75, 0, 0};
equation
  connect(CDistalLine2.frame_a, frame_7) annotation(Line(visible = true, origin = {63.267, -51.545}, points = {{-42.867, 24.909}, {-42.867, -12.455}, {85.733, -12.455}}));
  connect(CDistalLine2.frame_b, frame_6) annotation(Line(visible = true, origin = {89.95999999999999, -18.292}, points = {{-69.56, 11.656}, {-69.56, 14.881}, {40.04, 14.881}, {40.04, -20.708}, {59.04, -20.708}}));
  connect(CDistalLine1.frame_a, frame_6) annotation(Line(visible = true, origin = {63.267, -17.667}, points = {{-42.867, 42.667}, {-42.867, -21.333}, {85.733, -21.333}}));
  connect(CDistalLine1.frame_b, frame_5) annotation(Line(visible = true, origin = {89.95999999999999, 22.69}, points = {{-69.56, 22.31}, {-69.56, 25.535}, {40.04, 25.535}, {40.04, -36.69}, {59.04, -36.69}}));
  connect(MDistalLine3.frame_a, frame_7) annotation(Line(visible = true, origin = {36.6, -49.333}, points = {{-56.2, 29.333}, {-56.2, -14.667}, {112.4, -14.667}}));
  connect(MDistalLine3.frame_b, frame_6) annotation(Line(visible = true, origin = {73.95999999999999, -14.31}, points = {{-93.56, 14.31}, {-93.56, 17.535}, {56.04, 17.535}, {56.04, -24.69}, {75.04000000000001, -24.69}}, color = {95, 95, 95}));
  connect(MDistalLine2.frame_a, frame_6) annotation(Line(visible = true, origin = {37.822, -19.333}, points = {{-55.589, 39.333}, {-55.589, -19.667}, {111.178, -19.667}}));
  connect(MDistalLine2.frame_b, frame_4) annotation(Line(visible = true, origin = {74.693, 29.69}, points = {{-92.45999999999999, 10.31}, {-92.45999999999999, 13.535}, {55.307, 13.535}, {55.307, -18.69}, {74.307, -18.69}}));
  connect(MDistalLine1.frame_a, frame_4) annotation(Line(visible = true, origin = {36.6, 25.667}, points = {{-56.2, 29.333}, {-56.2, -14.667}, {112.4, -14.667}}));
  connect(MDistalLine1.frame_b, frame_3) annotation(Line(visible = true, origin = {73.95999999999999, 60.69}, points = {{-93.56, 14.31}, {-93.56, 17.535}, {56.04, 17.535}, {56.04, -24.69}, {75.04000000000001, -24.69}}));
  connect(FDistalLine4.frame_a, frame_7) annotation(Line(visible = true, origin = {11.761, -54.333}, points = {{-68.619, 19.333}, {-68.619, -9.667}, {137.239, -9.667}}));
  connect(FDistalLine4.frame_b, frame_6) annotation(Line(visible = true, origin = {59.057, -23.31}, points = {{-115.915, 8.31}, {-115.915, 11.535}, {70.943, 11.535}, {70.943, -15.69}, {89.943, -15.69}}));
  connect(FDistalLine3.frame_a, frame_6) annotation(Line(visible = true, origin = {11.704, -23.607}, points = {{-68.648, 30.785}, {-68.648, -15.393}, {137.296, -15.393}}));
  connect(FDistalLine3.frame_b, frame_4) annotation(Line(visible = true, origin = {59.022, 21.997}, points = {{-115.966, 5.181}, {-115.967, 8.406000000000001}, {70.97799999999999, 8.406000000000001}, {70.97799999999999, -10.997}, {89.97799999999999, -10.997}}));
  connect(FDistalLine2.frame_a, frame_4) annotation(Line(visible = true, origin = {11.956, 20.667}, points = {{-68.523, 19.333}, {-68.52200000000001, -9.667}, {137.044, -9.667}}));
  connect(FDistalLine2.frame_b, frame_2) annotation(Line(visible = true, origin = {59.173, 61.69}, points = {{-115.74, -1.69}, {-115.74, 1.535}, {70.827, 1.535}, {70.827, -0.6899999999999999}, {89.827, -0.6899999999999999}}));
  connect(FDistalLine1.frame_a, frame_2) annotation(Line(visible = true, origin = {12.263, 64.527}, points = {{-68.369, 7.054}, {-68.369, -3.527}, {136.737, -3.527}}));
  connect(FDistalLine1.frame_b, frame_1) annotation(Line(visible = true, origin = {59.358, 90.63800000000001}, points = {{-115.464, 0.9429999999999999}, {-115.463, 4.167}, {70.642, 4.167}, {70.642, -4.638}, {89.642, -4.638}}));
  connect(CDistalMuscle.fMagnitude, CDistalLine1.muscleMagnitude) annotation(Line(visible = true, origin = {-19.274, 4.705}, points = {{-82.224, -30.295}, {26.274, -30.295}, {26.274, 30.295}, {29.676, 30.295}}, color = {0, 0, 127}));
  connect(CDistalMuscle.fMagnitude, CDistalLine2.muscleMagnitude) annotation(Line(visible = true, origin = {-19.274, -21.113}, points = {{-82.224, -4.477}, {26.274, -4.477}, {26.274, 4.477}, {29.676, 4.477}}, color = {0, 0, 127}));
  connect(MDistalMuscle.fMagnitude, MDistalLine3.muscleMagnitude) annotation(Line(visible = true, origin = {-48.216, 8.816000000000001}, points = {{-49.049, 18.816}, {15.216, 18.816}, {15.216, -18.816}, {18.617, -18.816}}, color = {0, 0, 127}));
  connect(MDistalMuscle.fMagnitude, MDistalLine2.muscleMagnitude) annotation(Line(visible = true, origin = {-46.841, 28.816}, points = {{-50.424, -1.184}, {15.674, -1.184}, {15.674, 1.184}, {19.076, 1.184}}, color = {0, 0, 127}));
  connect(MDistalMuscle.fMagnitude, MDistalLine1.muscleMagnitude) annotation(Line(visible = true, origin = {-48.216, 46.316}, points = {{-49.049, -18.684}, {15.216, -18.684}, {15.216, 18.684}, {18.617, 18.684}}, color = {0, 0, 127}));
  connect(FDistalMuscle.fMagnitude, FDistalLine4.muscleMagnitude) annotation(Line(visible = true, origin = {-75.422, 15.587}, points = {{-18.893, 40.587}, {5.164, 40.587}, {5.164, -40.587}, {8.565, -40.587}}, color = {0, 0, 127}));
  connect(FDistalMuscle.fMagnitude, FDistalLine3.muscleMagnitude) annotation(Line(visible = true, origin = {-75.48699999999999, 36.675}, points = {{-18.828, 19.498}, {5.142, 19.498}, {5.142, -19.498}, {8.544, -19.498}}, color = {0, 0, 127}));
  connect(FDistalMuscle.fMagnitude, FDistalLine2.muscleMagnitude) annotation(Line(visible = true, origin = {-75.203, 53.087}, points = {{-19.112, 3.087}, {5.237, 3.087}, {5.237, -3.087}, {8.638, -3.087}}, color = {0, 0, 127}));
  connect(FDistalMuscle.fMagnitude, FDistalLine1.muscleMagnitude) annotation(Line(visible = true, origin = {-74.858, 68.877}, points = {{-19.457, -12.704}, {5.352, -12.704}, {5.352, 12.704}, {8.753, 12.704}}, color = {0, 0, 127}));
  connect(perMDistal, MDistalMuscle.forcePValue) annotation(Line(visible = true, origin = {-125.407, 27.651}, points = {{-17.241, -0.003}, {4.232, -0.003}, {4.232, 0.003}, {8.776, 0.002}}, color = {0, 0, 127}));
  connect(perCDistal, CDistalMuscle.forcePValue) annotation(Line(visible = true, origin = {-129.015, -25.594}, points = {{-15.365, -0.026}, {3.607, -0.026}, {3.607, 0.026}, {8.151, 0.025}}, color = {0, 0, 127}));
  connect(perFDistal, FDistalMuscle.forcePValue) annotation(Line(visible = true, origin = {-122.533, 56.416}, points = {{-17.467, 0.221}, {4.308, 0.221}, {4.308, -0.221}, {8.852, -0.221}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {85.672, 96.699}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "1"), Text(visible = true, origin = {85.483, 58.976}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "2"), Text(visible = true, origin = {84.663, 30}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "3"), Text(visible = true, origin = {85.73399999999999, -34.066}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "5"), Text(visible = true, origin = {85.544, -67.265}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "6"), Text(visible = true, origin = {85.355, -96.684}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "7"), Text(visible = true, origin = {85.544, -4.899}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "4"), Polygon(visible = true, origin = {-26.359, -65.02200000000001}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-23.641, -11.833}, {-0.729, -24.978}, {23.839, 13.366}, {0.531, 23.445}}), Polygon(visible = true, origin = {-8.209, -22.521}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-17.619, -19.056}, {6.319, -29.766}, {18.209, 24.411}, {-6.91, 24.411}}), Polygon(visible = true, origin = {-2.56, 28.978}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-12.56, -26.458}, {12.56, -26.458}, {12.56, 26.458}, {-12.56, 26.458}}), Polygon(visible = true, origin = {-9.390000000000001, 73.033}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-6.359, -16.967}, {21.359, -16.967}, {5.61, 16.967}, {-20.61, 16.967}}), Rectangle(visible = true, origin = {4.41, 74.018}, fillColor = {255, 102, 102},
            fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-17.564, -75.982}, fillColor = {128, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-10, -4.018}, fillColor = {255, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end FingerMuscleLineArray;
