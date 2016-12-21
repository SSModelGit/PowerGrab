within PowerGrabStructure.OldComponents;
package OldComponents

  model HingeMuscleJoint
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {101, -0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {73.05, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0}, r_CM = {0, 0.005, 0}, m = m,
      r_0(                                                                                                start =     {x_0, y_0, z_0}, fixed =     true))
                                                                                                                                                         annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.PrismaticRestricted prismaticRestricted(
      l_stop=l_stop,
      c_upper=2000,
      d_upper=200,
      c_bottom=2000,
      d_bottom=200) annotation (Placement(visible=true, transformation(
          origin={1.567,-46.594},
          extent={{-10,-10},{10,10}},
          rotation=-630)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-80.80800000000001, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {0, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -76.19}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Mass m;
    parameter Modelica.SIunits.Position x_0;
    parameter Modelica.SIunits.Position y_0;
    parameter Modelica.SIunits.Position z_0;
    parameter Modelica.SIunits.Distance l_stop;
  equation
    connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {-47.629, 4.333}, points = {{-72.371, -4.333}, {-53.371, -4.333}, {-53.371, 8.667}, {60.742, 8.667}, {60.742, -4.333}, {57.629, -4.333}}));
    connect(bodyShape.frame_b, frame_b) annotation(Line(visible = true, origin = {55.5, 0}, points = {{-45.5, 0}, {45.5, 0}}));
    connect(prismaticRestricted.frame_a, frame_resolve) annotation(Line(visible = true, origin = {0.06900000000000001, -64.169}, points = {{0.06900000000000001, 9.494}, {0.06900000000000001, 3.169}, {-0.06900000000000001, 3.169}, {-0.06900000000000001, -15.831}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-7.15, -21.275}, points = {{7.288, -17.912}, {7.288, -12.319}, {-5.863, -12.319}, {-5.863, 21.275}, {-2.85, 21.275}}, color = {95, 95, 95}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true, origin = {0, -7.182}, fillColor = {255, 0, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-96.006, -90.336}, {96.006, 90.336}}), Ellipse(visible = true, origin = {0, -9.449},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-57.452, -52.539}, {57.452, 52.539}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end HingeMuscleJoint;

  model MuscleComponent
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-116.974, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.77, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {120, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {80.80800000000001, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {0, 32.456}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-8.114000000000001, 65}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {1.188, 61.905}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(u, force2.f) annotation(Line(visible = true, origin = {-4.057, 47.092}, points = {{-4.057, 17.908}, {-4.057, -3.636}, {4.057, -3.636}, {4.057, -10.636}}, color = {0, 0, 127}));
    connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {9.6, 20.312}, points = {{0.4, 12.143}, {3.4, 12.143}, {3.4, -6.987}, {-3.6, -6.987}, {-3.6, -10.312}}, color = {0, 127, 0}));
    connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-9.6, 20.312}, points = {{-0.4, 12.143}, {-3.4, 12.143}, {-3.4, -6.987}, {3.6, -6.987}, {3.6, -10.312}}, color = {0, 127, 0}));
    connect(lineForceWithMass.frame_b, frame_b) annotation(Line(visible = true, origin = {65, 0}, points = {{-55, 0}, {55, 0}}));
    connect(frame_a, lineForceWithMass.frame_a) annotation(Line(visible = true, origin = {-63.487, 0}, points = {{-53.487, 0}, {53.487, 0}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MuscleComponent;

  model MuscleTissue
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(table = [0, 0; 0.5, 0.4; 0.67, 0.83; 1, 1; 1.25, 1; 1.5, 0.77; 1.7, 0.65; 2.15, 0.5; 2.3, 0.58; 2.5, 1]) annotation(Placement(visible = true, transformation(origin = {-8.329000000000001, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-145, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-87.542, 74.19499999999999}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain(k = 2.5) annotation(Placement(visible = true, transformation(origin = {-42.55, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {30, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant kMuscle(k = K_m) annotation(Placement(visible = true, transformation(origin = {-55, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant K_m;
    Modelica.Blocks.Math.Product product2 annotation(Placement(visible = true, transformation(origin = {70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-145, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-92.05500000000001, -76.19}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {150, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {82.334, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Length muscleLengthNom;
    Modelica.Blocks.Math.Division division annotation(Placement(visible = true, transformation(origin = {-77.751, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = muscleLengthNom) annotation(Placement(visible = true, transformation(origin = {-130, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(gain.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-25.94, 40}, points = {{-5.611, 0}, {5.611, 0}}, color = {0, 0, 127}));
    connect(product2.y, y) annotation(Line(visible = true, origin = {126.138, -15}, points = {{-45.138, -15}, {10.638, -15}, {10.638, 15}, {23.862, 15}}, color = {0, 0, 127}));
    connect(const.y, division.u2) annotation(Line(visible = true, origin = {-98.563, 29.5}, points = {{-20.437, -4.5}, {5.812, -4.5}, {5.812, 4.5}, {8.811999999999999, 4.5}}, color = {0, 0, 127}));
    connect(u, division.u1) annotation(Line(visible = true, origin = {-105.063, 68}, points = {{-39.937, 22}, {12.312, 22}, {12.312, -22}, {15.312, -22}}, color = {0, 0, 127}));
    connect(division.y, gain.u) annotation(Line(visible = true, origin = {-60.651, 40}, points = {{-6.1, 0}, {6.1, 0}}, color = {0, 0, 127}));
    connect(u1, product2.u2) annotation(Line(visible = true, origin = {5.75, -58}, points = {{-150.75, -22}, {49.25, -22}, {49.25, 22}, {52.25, 22}}, color = {0, 0, 127}));
    connect(product1.y, product2.u1) annotation(Line(visible = true, origin = {52.25, -9.5}, points = {{-11.25, 14.5}, {2.75, 14.5}, {2.75, -14.5}, {5.75, -14.5}}, color = {0, 0, 127}));
    connect(kMuscle.y, product1.u2) annotation(Line(visible = true, origin = {1, -8}, points = {{-45, -7}, {14, -7}, {14, 7}, {17, 7}}, color = {0, 0, 127}));
    connect(combiTable1D.y[2], product1.u1) annotation(Line(visible = true, origin = {12.668, 25.5}, points = {{-9.997, 14.5}, {2.332, 14.5}, {2.332, -14.5}, {5.332, -14.5}}, color = {0, 0, 127}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Line(visible = true, origin = {-66.92400000000001, -3.425}, points = {{0, 76.575}, {0, -76.575}}, pattern = LinePattern.Dash), Line(visible = true, origin = {-19.022, -1.729}, points = {{-48.42, -76.608}, {96.84099999999999, 1.729}, {-48.42, 74.879}}, pattern = LinePattern.Dot), Polygon(visible = true, origin = {-19.541, -1.914}, fillColor = {128, 128, 128},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-45.827, 71.914}, {91.65300000000001, 1.914}, {-45.827, -73.82899999999999}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MuscleTissue;

  model MuscleTissue2
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(table = [0, 0; 0.5, 0.4; 0.67, 0.83; 1, 1; 1.25, 1; 1.5, 0.77; 1.7, 0.65; 2.15, 0.5; 2.3, 0.58; 2.5, 1; 2.6, 1; 2.7, 1], smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(visible = true, transformation(origin = {-8.329000000000001, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-147.886, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-87.542, 74.19499999999999}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-148.28, -61.852}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.44, -67.467}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant K_m;
    Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {150, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {82.334, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Length muscleLengthNom;
    Modelica.Blocks.Sources.Constant const(k = muscleLengthNom) annotation(Placement(visible = true, transformation(origin = {-127.318, 33.347}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Division division annotation(Placement(visible = true, transformation(origin = {-80, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain(k = 2.5) annotation(Placement(visible = true, transformation(origin = {-40, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product annotation(Placement(visible = true, transformation(origin = {46.663, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = K_m) annotation(Placement(visible = true, transformation(origin = {-45, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {100, -27.42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(u1, product1.u2) annotation(Line(visible = true, origin = {27.43, -47.636}, points = {{-175.71, -14.216}, {57.57, -14.216}, {57.57, 14.216}, {60.57, 14.216}}, color = {0, 0, 127}));
    connect(product1.y, y) annotation(Line(visible = true, origin = {133.637, -13.71}, points = {{-22.637, -13.71}, {3.138, -13.71}, {3.138, 13.71}, {16.363, 13.71}}, color = {0, 0, 127}));
    connect(product.y, product1.u1) annotation(Line(visible = true, origin = {78.916, -3.21}, points = {{-21.253, 18.21}, {6.084, 18.21}, {6.084, -18.21}, {9.084, -18.21}}, color = {0, 0, 127}));
    connect(const1.y, product.u2) annotation(Line(visible = true, origin = {15.997, -0.5}, points = {{-49.997, -9.5}, {15.666, -9.5}, {15.666, 9.5}, {18.666, 9.5}}, color = {0, 0, 127}));
    connect(combiTable1D.y[1], product.u1) annotation(Line(visible = true, origin = {25.165, 30.5}, points = {{-22.494, 9.5}, {6.498, 9.5}, {6.498, -9.5}, {9.497999999999999, -9.5}}, color = {0, 0, 127}));
    connect(u, division.u1) annotation(Line(visible = true, origin = {-107.472, 63}, points = {{-40.415, 17}, {12.472, 17}, {12.472, -17}, {15.472, -17}}, color = {0, 0, 127}));
    connect(division.y, gain.u) annotation(Line(visible = true, origin = {-60.5, 40}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(const.y, division.u2) annotation(Line(visible = true, origin = {-99.58, 33.673}, points = {{-16.739, -0.327}, {4.58, -0.327}, {4.58, 0.327}, {7.58, 0.327}}, color = {0, 0, 127}));
    connect(gain.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-24.665, 40}, points = {{-4.335, 0}, {4.335, 0}}, color = {0, 0, 127}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Line(visible = true, origin = {-66.92400000000001, -3.425}, points = {{0, 76.575}, {0, -76.575}}, pattern = LinePattern.Dash), Line(visible = true, origin = {-19.022, -1.729}, points = {{-48.42, -76.608}, {96.84099999999999, 1.729}, {-48.42, 74.879}}, pattern = LinePattern.Dot), Polygon(visible = true, origin = {-19.541, -1.914}, fillColor = {128, 128, 128},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-45.827, 71.914}, {91.65300000000001, 1.914}, {-45.827, -73.82899999999999}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MuscleTissue2;

  model MuscleYappariTrial
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
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 1.57, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    YappariMadaTsukutteimasu yappariMadaTsukutteimasu(k_0_a = 11000, k_0_p = 11000, x_min_a = 0.405, x_max_a = 0.528, x_min_p = 0.502, x_max_p = 0.67) annotation(Placement(visible = true, transformation(origin = {-37.747, 77.611}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp(height = 60, duration = 10) annotation(Placement(visible = true, transformation(origin = {-120, 78.31699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(ramp.y, yappariMadaTsukutteimasu.forceCValue) annotation(Line(visible = true, origin = {-65.19799999999999, 79.464}, points = {{-43.802, -1.147}, {12.438, -1.147}, {12.438, 1.147}, {18.926, 1.147}}, color = {0, 0, 127}));
    connect(yappariMadaTsukutteimasu.frame_resolve1, bodyShape1.frame_b) annotation(Line(visible = true, origin = {2.702, 19.982}, points = {{-40.449, 47.63}, {-40.449, 42.938}, {28.004, 42.938}, {28.004, -66.753}, {24.891, -66.753}}));
    connect(yappariMadaTsukutteimasu.frame_resolve, bodyShape.frame_b) annotation(Line(visible = true, origin = {-9.140000000000001, 70.38500000000001}, points = {{-28.607, 17.226}, {-28.607, 21.772}, {20.109, 21.772}, {20.109, -30.385}, {16.996, -30.385}}, color = {95, 95, 95}));
    connect(yappariMadaTsukutteimasu.frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {21.507, 21.306}, points = {{-49.254, 46.306}, {15.381, 46.306}, {15.381, -46.306}, {18.493, -46.306}}));
    connect(yappariMadaTsukutteimasu.frame_a1, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-70.032, 28.69}, points = {{22.478, 38.921}, {22.478, 34.229}, {-16.023, 34.229}, {-16.023, -53.69}, {-12.91, -53.69}}));
    connect(yappariMadaTsukutteimasu.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-69.858, 61.698}, points = {{22.11, 25.913}, {22.11, 30.459}, {-15.778, 30.459}, {-15.778, -43.415}, {-12.665, -43.415}}));
    connect(yappariMadaTsukutteimasu.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {6.987, 63.766}, points = {{-34.734, 24.089}, {-34.734, 28.391}, {22.119, 28.391}, {22.119, -40.435}, {25.231, -40.435}}));
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
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MuscleYappariTrial;

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

  model NGWorld "World component with the parameter for gravityType preset to NoGravity"
    import Modelica.Mechanics.MultiBody.Types.GravityTypes;
    import Modelica.Mechanics.MultiBody.Types;
    import Modelica.SIunits;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed in the origin of the world frame" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
    parameter Boolean enableAnimation = true "= true, if animation of all components is enabled";
    parameter Boolean animateWorld = true "= true, if world coordinate system shall be visualized" annotation(Dialog(enable = enableAnimation));
    parameter Boolean animateGravity = true "= true, if gravity field shall be visualized (acceleration vector or field center)" annotation(Dialog(enable = enableAnimation));
    parameter Types.AxisLabel label1 = "x" "Label of horizontal axis in icon";
    parameter Types.AxisLabel label2 = "y" "Label of vertical axis in icon";
    parameter Types.GravityTypes gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity "Type of gravity field" annotation(Evaluate = true);
    parameter Modelica.SIunits.Acceleration g = 9.81 "Constant gravity acceleration" annotation(Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity));
    parameter Types.Axis n = {0, -1, 0} "Direction of gravity resolved in world frame (gravity = g*n/length(n))" annotation(Evaluate = true, Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity));
    parameter Real mue(unit = "m3/s2", min = 0) = 398600000000000.0 "Gravity field constant (default = field constant of earth)" annotation(Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity));
    parameter Boolean driveTrainMechanics3D = true "= true, if 3-dim. mechanical effects of Parts.Mounting1D/Rotor1D/BevelGear1D shall be taken into account";
    parameter Modelica.SIunits.Distance axisLength = nominalLength / 2 "Length of world axes arrows" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
    parameter Modelica.SIunits.Distance axisDiameter = axisLength / defaultFrameDiameterFraction "Diameter of world axes arrows" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
    parameter Boolean axisShowLabels = true "= true, if labels shall be shown" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
    input Types.Color axisColor_x = Modelica.Mechanics.MultiBody.Types.Defaults.FrameColor "Color of x-arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
    input Types.Color axisColor_y = axisColor_x annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
    input Types.Color axisColor_z = axisColor_x "Color of z-arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
    parameter Modelica.SIunits.Position gravityArrowTail[3] = {0, 0, 0} "Position vector from origin of world frame to arrow tail, resolved in world frame" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
    parameter Modelica.SIunits.Length gravityArrowLength = axisLength / 2 "Length of gravity arrow" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
    parameter Modelica.SIunits.Diameter gravityArrowDiameter = gravityArrowLength / defaultWidthFraction "Diameter of gravity arrow" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
    input Types.Color gravityArrowColor = {0, 230, 0} "Color of gravity arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
    parameter Modelica.SIunits.Diameter gravitySphereDiameter = 12742000 "Diameter of sphere representing gravity center (default = mean diameter of earth)" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = PointGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity));
    input Types.Color gravitySphereColor = {0, 230, 0} "Color of gravity sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateGravity = true and gravityType = PointGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity));
    parameter Modelica.SIunits.Length nominalLength = 1 "\"Nominal\" length of multi-body system" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultAxisLength = nominalLength / 5 "Default for length of a frame axis (but not world frame)" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultJointLength = nominalLength / 10 "Default for the fixed length of a shape representing a joint" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultJointWidth = nominalLength / 20 "Default for the fixed width of a shape representing a joint" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultForceLength = nominalLength / 10 "Default for the fixed length of a shape representing a force (e.g., damper)" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultForceWidth = nominalLength / 20 "Default for the fixed width of a shape representing a force (e.g., spring, bushing)" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultBodyDiameter = nominalLength / 9 "Default for diameter of sphere representing the center of mass of a body" annotation(Dialog(tab = "Defaults"));
    parameter Real defaultWidthFraction = 20 "Default for shape width as a fraction of shape length (e.g., for Parts.FixedTranslation)" annotation(Dialog(tab = "Defaults"));
    parameter Modelica.SIunits.Length defaultArrowDiameter = nominalLength / 40 "Default for arrow diameter (e.g., of forces, torques, sensors)" annotation(Dialog(tab = "Defaults"));
    parameter Real defaultFrameDiameterFraction = 40 "Default for arrow diameter of a coordinate system as a fraction of axis length" annotation(Dialog(tab = "Defaults"));
    parameter Real defaultSpecularCoefficient(min = 0) = 0.7 "Default reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Defaults"));
    parameter Real defaultN_to_m(unit = "N/m", min = 0) = 1000 "Default scaling of force arrows (length = force/defaultN_to_m)" annotation(Dialog(tab = "Defaults"));
    parameter Real defaultNm_to_m(unit = "N.m/m", min = 0) = 1000 "Default scaling of torque arrows (length = torque/defaultNm_to_m)" annotation(Dialog(tab = "Defaults"));
    /* adrpo: 2012-09-04 -> replace gravityAcceleration function with the one in MSL 3.1 (not replaceable)
          replaceable function gravityAcceleration =
               Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration
              (    gravityType=gravityType, g=g*Modelica.Math.Vectors.normalizeWithAssert(n), mue=mue)
               constrainedby
            Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration
            "Function to compute the gravity acceleration, resolved in world frame"
               annotation(choicesAllMatching=true,Dialog(enable=gravityType==
                           Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity),
            Documentation(info="<html>
        <p>Replaceable function to define the gravity field.
           Default is function
           <a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration\">standardGravityAcceleration</a>
           that provides some simple gravity fields (no gravity, constant parallel gravity field,
           point gravity field).
           By redeclaring this function, any type of gravity field can be defined, see example
             <a href=\"modelica://Modelica.Mechanics.MultiBody.Examples.Elementary.UserDefinedGravityField\">Examples.Elementary.UserDefinedGravityField</a>.
        </p>
        </html>"));
          */
    function gravityAcceleration = gravityAccelerationTypes(gravityType = gravityType, g = g * Modelica.Math.Vectors.normalize(n), mue = mue);
  protected
    function gravityAccelerationTypes "Gravity field acceleration depending on field type and position"
      import Modelica.Mechanics.MultiBody.Types.GravityTypes;
      extends Modelica.Icons.Function;
      input Modelica.SIunits.Position r[3] "Position vector from world frame to actual point, resolved in world frame";
      input GravityTypes gravityType "Type of gravity field";
      input Modelica.SIunits.Acceleration g[3] "Constant gravity acceleration, resolved in world frame, if gravityType=1";
      input Real mue(unit = "m3/s2") "Field constant of point gravity field, if gravityType=2";
      output Modelica.SIunits.Acceleration gravity[3] "Gravity acceleration at point r, resolved in world frame";
    algorithm
      gravity := if gravityType == GravityTypes.UniformGravity then g else if gravityType == GravityTypes.PointGravity then -mue / (r * r) * r / Modelica.Math.Vectors.length(r) else zeros(3);
      annotation(Inline = true);
    end gravityAccelerationTypes;

    /* The World object can only use the Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape model, but no
             other models in package Modelica.Mechanics.MultiBody.Visualizers, since the other models access
             data of the "outer Modelica.Mechanics.MultiBody.World world" object, i.e., there are
             mutually dependent classes. For this reason, the higher level visualization
             objects cannot be used.
          */
    parameter Integer ndim = if enableAnimation and animateWorld then 1 else 0;
    parameter Integer ndim2 = if enableAnimation and animateWorld and axisShowLabels then 1 else 0;
    // Parameters to define axes
    parameter Modelica.SIunits.Length headLength = min(axisLength, axisDiameter * Types.Defaults.FrameHeadLengthFraction);
    parameter Modelica.SIunits.Length headWidth = axisDiameter * Types.Defaults.FrameHeadWidthFraction;
    parameter Modelica.SIunits.Length lineLength = max(0, axisLength - headLength);
    parameter Modelica.SIunits.Length lineWidth = axisDiameter;
    // Parameters to define axes labels
    parameter Modelica.SIunits.Length scaledLabel = Modelica.Mechanics.MultiBody.Types.Defaults.FrameLabelHeightFraction * axisDiameter;
    parameter Modelica.SIunits.Length labelStart = 1.05 * axisLength;
    // x-axis
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape x_arrowLine(shapeType = "cylinder", length = lineLength, width = lineWidth, height = lineWidth, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, color = axisColor_x, specularCoefficient = 0) if enableAnimation and animateWorld;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape x_arrowHead(shapeType = "cone", length = headLength, width = headWidth, height = headWidth, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, color = axisColor_x, r = {lineLength, 0, 0}, specularCoefficient = 0) if enableAnimation and animateWorld;
    Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines x_label(lines = scaledLabel * {[0, 0; 1, 1], [0, 1; 1, 0]}, diameter = axisDiameter, color = axisColor_x, r_lines = {labelStart, 0, 0}, n_x = {1, 0, 0}, n_y = {0, 1, 0}, specularCoefficient = 0) if enableAnimation and animateWorld and axisShowLabels;
    // y-axis
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape y_arrowLine(shapeType = "cylinder", length = lineLength, width = lineWidth, height = lineWidth, lengthDirection = {0, 1, 0}, widthDirection = {1, 0, 0}, color = axisColor_y, specularCoefficient = 0) if enableAnimation and animateWorld;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape y_arrowHead(shapeType = "cone", length = headLength, width = headWidth, height = headWidth, lengthDirection = {0, 1, 0}, widthDirection = {1, 0, 0}, color = axisColor_y, r = {0, lineLength, 0}, specularCoefficient = 0) if enableAnimation and animateWorld;
    Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines y_label(lines = scaledLabel * {[0, 0; 1, 1.5], [0, 1.5; 0.5, 0.75]}, diameter = axisDiameter, color = axisColor_y, r_lines = {0, labelStart, 0}, n_x = {0, 1, 0}, n_y = {-1, 0, 0}, specularCoefficient = 0) if enableAnimation and animateWorld and axisShowLabels;
    // z-axis
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape z_arrowLine(shapeType = "cylinder", length = lineLength, width = lineWidth, height = lineWidth, lengthDirection = {0, 0, 1}, widthDirection = {0, 1, 0}, color = axisColor_z, specularCoefficient = 0) if enableAnimation and animateWorld;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape z_arrowHead(shapeType = "cone", length = headLength, width = headWidth, height = headWidth, lengthDirection = {0, 0, 1}, widthDirection = {0, 1, 0}, color = axisColor_z, r = {0, 0, lineLength}, specularCoefficient = 0) if enableAnimation and animateWorld;
    Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines z_label(lines = scaledLabel * {[0, 0; 1, 0], [0, 1; 1, 1], [0, 1; 1, 0]}, diameter = axisDiameter, color = axisColor_z, r_lines = {0, 0, labelStart}, n_x = {0, 0, 1}, n_y = {0, 1, 0}, specularCoefficient = 0) if enableAnimation and animateWorld and axisShowLabels;
    // Uniform gravity visualization
    parameter Modelica.SIunits.Length gravityHeadLength = min(gravityArrowLength, gravityArrowDiameter * Types.Defaults.ArrowHeadLengthFraction);
    parameter Modelica.SIunits.Length gravityHeadWidth = gravityArrowDiameter * Types.Defaults.ArrowHeadWidthFraction;
    parameter Modelica.SIunits.Length gravityLineLength = max(0, gravityArrowLength - gravityHeadLength);
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravityArrowLine(shapeType = "cylinder", length = gravityLineLength, width = gravityArrowDiameter, height = gravityArrowDiameter, lengthDirection = n, widthDirection = {0, 1, 0}, color = gravityArrowColor, r_shape = gravityArrowTail, specularCoefficient = 0) if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravityArrowHead(shapeType = "cone", length = gravityHeadLength, width = gravityHeadWidth, height = gravityHeadWidth, lengthDirection = n, widthDirection = {0, 1, 0}, color = gravityArrowColor, r_shape = gravityArrowTail + Modelica.Math.Vectors.normalize(n) * gravityLineLength, specularCoefficient = 0) if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity;
    // Point gravity visualization
    parameter Integer ndim_pointGravity = if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity then 1 else 0;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravitySphere(shapeType = "sphere", r_shape = {-gravitySphereDiameter / 2, 0, 0}, lengthDirection = {1, 0, 0}, length = gravitySphereDiameter, width = gravitySphereDiameter, height = gravitySphereDiameter, color = gravitySphereColor, specularCoefficient = 0) if enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity;
    /*
          function gravityAcceleration = gravityAccelerationTypes (
              gravityType=gravityType,
              g=g*Modelica.Math.Vectors.normalize(
                                             n),
              mue=mue);
        */
  equation
    Connections.root(frame_b.R);
    assert(Modelica.Math.Vectors.length(n) > 1e-10, "Parameter n of World object is wrong (length(n) > 0 required)");
    frame_b.r_0 = zeros(3);
    frame_b.R = Frames.nullRotation();
    annotation(defaultComponentName = "world", defaultComponentPrefixes = "inner", missingInnerMessage = "No \"world\" component is defined. A default world
    component with the default gravity field will be used
    (g=9.81 in negative y-axis). If this is not desired,
    drag Modelica.Mechanics.MultiBody.World into the top level of your model.",   Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Line(points = {{-100, -118}, {-100, 61}}, color = {0, 0, 0}, thickness = 0.5), Polygon(points = {{-100, 100}, {-120, 60}, {-80, 60}, {-100, 100}, {-100, 100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Line(points = {{-119, -100}, {59, -100}}, color = {0, 0, 0}, thickness = 0.5), Polygon(points = {{99, -100}, {59, -80}, {59, -120}, {99, -100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Text(extent = {{-150, 145}, {150, 105}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{95, -113}, {144, -162}}, lineColor = {0, 0, 0}, textString = "%label1"), Text(extent = {{-170, 127}, {-119, 77}}, lineColor = {0, 0, 0}, textString = "%label2"), Line(points = {{-56, 78}, {-56, -26}}, color = {0, 0, 255}), Polygon(points = {{-68, -26}, {-56, -66}, {-44, -26}, {-68, -26}}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{2, 78}, {2, -26}}, color = {0, 0, 255}), Polygon(points = {{-10, -26}, {2, -66}, {14, -26}, {-10, -26}}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{66, 80}, {66, -26}}, color = {0, 0, 255}), Polygon(points = {{54, -26}, {66, -66}, {78, -26}, {54, -26}}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, lineColor = {0, 0, 255})}), Documentation(info = "<HTML>
    <p>
    Model <b>World</b> represents a global coordinate system fixed in
    ground. This model serves several purposes:
    <ul>
    <li> It is used as <b>inertial system</b> in which
         the equations of all elements of the MultiBody library
         are defined.</li>
    <li> It is the world frame of an <b>animation window</b> in which
         all elements of the MultiBody library are visualized.</li>
    <li> It is used to define the <b>gravity field</b> in which a
         multi-body model is present. Default is a uniform gravity
         field where the gravity acceleration vector g is the
         same at every position. Additionally, a point gravity field or no
         gravity can be selected. Also, function gravityAcceleration can
         be redeclared to a user-defined function that computes the gravity
         acceleration, see example
         <a href=\"modelica://Modelica.Mechanics.MultiBody.Examples.Elementary.UserDefinedGravityField\">Examples.Elementary.UserDefinedGravityField</a>.
         </li>
    <li> It is used to define <b>default settings</b> of animation properties
         (e.g., the diameter of a sphere representing by default
         the center of mass of a body, or the diameters of the cylinders
         representing a revolute joint).</li>
    <li> It is used to define a <b>visual representation</b> of the
         world model (= 3 coordinate axes with labels) and of the defined
         gravity field.<br>
        <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/world.png\" ALT=\"MultiBody.World\">
    </li>
    </ul>
    <p>
    Since the gravity field function is required from all bodies with mass
    and the default settings of animation properties are required
    from nearly every component, exactly one instance of model World needs
    to be present in every model on the top level. The basic declaration
    needs to be:
    </p>
    <pre>
        <b>inner</b> Modelica.Mechanics.MultiBody.World world
    </pre>
    <p>
    Note, it must be an <b>inner</b> declaration with instance name <b>world</b>
    in order that this world object can be accessed from all objects in the
    model. When dragging the \"World\" object from the package browser into
    the diagram layer, this declaration is automatically generated
    (this is defined via annotations in model World).
    </p>
    <p>
    All vectors and tensors of a mechanical system are resolved in a
    frame that is local to the corresponding component. Usually,
    if all relative joint coordinates vanish, the local frames
    of all components are parallel to each other, as well as to the
    world frame (this holds as long as a Parts.FixedRotation,
    component is <b>not</b> used). In this \"reference configuration\"
    it is therefore
    alternatively possible to resolve all vectors in the world
    frame, since all frames are parallel to each other.
    This is often very convenient. In order to give some visual
    support in such a situation, in the icon of a World instance
    two axes of the world frame are shown and the labels
    of these axes can be set via parameters.
    </p>
    </html>"));
  end NGWorld;

  model NonLinearRotationalSpring
    extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliant(phi_rel(
                                                                      start =         0.5, fixed =         false));
    Modelica.SIunits.RotationalSpringConstant c(final min = 0, start = 100000.0) "Spring constant";
    parameter Modelica.SIunits.Angle phi_rel0 = 0 "Unstretched spring angle";
    parameter Modelica.SIunits.Angle brake_left = 0;
    parameter Modelica.SIunits.Angle brake_right = 5;
  equation
    tau = c * (phi_rel - phi_rel0);
    if phi_rel - brake_left < 1e-06 then
      c = 10000;
    elseif brake_right - phi_rel < 1e-06 then
      c = 10000;
    else
      c = 0;
    end if annotation(Documentation(info = "<html>
             <p>
             A <b>non-linear 1D rotational spring</b>. The component can be connected either
             between two inertias/gears to describe the shaft elasticity, or between
             a inertia/gear and the housing (component Fixed), to describe
             a coupling of the element with the housing via a spring.
             </p>
             
             </html>"),   Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Text(extent = {{-150, 80}, {150, 40}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-150, -40}, {150, -80}}, lineColor = {0, 0, 0}, textString = "c=%c"), Line(points = {{-100, 0}, {-58, 0}, {-43, -30}, {-13, 30}, {17, -30}, {47, 30}, {62, 0}, {100, 0}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-68, 0}, {-68, 65}}, color = {128, 128, 128}), Line(points = {{72, 0}, {72, 65}}, color = {128, 128, 128}), Line(points = {{-68, 60}, {72, 60}}, color = {128, 128, 128}), Polygon(points = {{62, 63}, {72, 60}, {62, 57}, {62, 63}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-22, 62}, {18, 87}}, lineColor = {0, 0, 255}, textString = "phi_rel"), Line(points = {{-96, 0}, {-60, 0}, {-42, -32}, {-12, 30}, {18, -30}, {48, 28}, {62, 0}, {96, 0}}, color = {0, 0, 255})}));
  end NonLinearRotationalSpring;

  model NonLinearSpringDamper
    import Modelica.Mechanics.MultiBody.Types;
    parameter Boolean animation = true "= true, if animation shall be enabled";
    input Modelica.SIunits.Distance width = world.defaultForceWidth "Width of spring" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.SIunits.Distance coilWidth = width / 10 "Width of spring coil" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    parameter Integer numberOfWindings = 5 "Number of spring windings" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor "Color of spring" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
    input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    extends Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
    extends
      Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort(      final T = 293.15);
    Modelica.Blocks.Interfaces.RealInput k "Non-linear stiffness of the spring" annotation(Placement(visible = true, transformation(origin = {-100, -70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -57.521}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
    Modelica.Blocks.Interfaces.RealInput d annotation(Placement(visible = true, transformation(origin = {-100, 74.52500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
    parameter Modelica.SIunits.Length s_unstretched = 0 "Unstretched spring length";
    Modelica.Blocks.Interfaces.RealOutput y if fMagDesired annotation(Placement(visible = true, transformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Boolean fMagDesired = false;
  protected
    Modelica.SIunits.Force f_d "Damping force";
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape shape(shapeType = "spring", color = color, length = s, width = width, height = coilWidth * 2, lengthDirection = e_a, widthDirection = {0, 1, 0}, extra = numberOfWindings, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
  equation
    f_d = d * der(s);
    f = k * (s - s_unstretched) + f_d;
    lossPower = f_d * der(s);
    y = abs(f);
    annotation(Documentation(info = "<HTML>
                   <p>
                   <b>Linear spring</b> and <b>linear damper</b>
                   in parallel acting as line force between frame_a and frame_b.
                   A <b>force f</b> is exerted on the origin of frame_b and with opposite sign
                   on the origin of frame_a along the line from the origin of frame_a to the origin
                   of frame_b according to the equation:
                   </p>
                   <pre>
                      f = c*(s - s_unstretched) + d*<b>der</b>(s);
                   </pre>
                   <p>
                   where \"c\", \"s_unstretched\" and \"d\" are parameters, \"s\" is the
                   distance between the origin of frame_a and the origin of frame_b
                   and der(s) is the time derivative of s.
                   </p>
                   </html>"),   Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, fillColor = {192, 192, 192},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-52, -100}, {38, -40}}), Text(visible = true, textColor = {0, 0, 255}, extent = {{-150, -150}, {150, -110}}, textString = "%name"), Line(visible = true, points = {{-80, 40}, {-60, 40}, {-45, 10}, {-15, 70}, {15, 10}, {45, 70}, {60, 40}, {80, 40}}), Line(visible = true, points = {{-80, 40}, {-80, -70}}), Line(visible = true, points = {{-80, -70}, {-52, -70}}), Line(visible = true, points = {{-52, -40}, {68, -40}}), Line(visible = true, points = {{-52, -100}, {68, -100}}), Line(visible = true, points = {{38, -70}, {80, -70}}), Line(visible = true, points = {{80, 40}, {80, -70}}), Line(visible = true, points = {{-100, 0}, {-80, 0}}), Line(visible = true, points = {{80, 0}, {100, 0}}), Line(visible = useHeatPort, points = {{-100, -101}, {-100, -80}, {-6, -80}}, color = {191, 0, 0}, pattern = LinePattern.Dot), Text(visible = true, origin = {-70, 65.92100000000001}, extent = {{-8.948, -11.511}, {8.948, 11.511}}, textString = "d"), Text(visible = true, origin = {-110, -60}, extent = {{-13.378, -9.118}, {13.378, 9.118}}, textString = "k")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 32}, {-58, 32}, {-43, 2}, {-13, 62}, {17, 2}, {47, 62}, {62, 32}, {80, 32}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-68, 32}, {-68, 97}}, color = {128, 128, 128}), Line(points = {{72, 32}, {72, 97}}, color = {128, 128, 128}), Line(points = {{-68, 92}, {72, 92}}, color = {128, 128, 128}), Polygon(points = {{62, 95}, {72, 92}, {62, 89}, {62, 95}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-20, 72}, {20, 97}}, lineColor = {0, 0, 255}, textString = "s"), Rectangle(extent = {{-52, -20}, {38, -80}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-52, -80}, {68, -80}}, color = {0, 0, 0}), Line(points = {{-52, -20}, {68, -20}}, color = {0, 0, 0}), Line(points = {{38, -50}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-80, -50}, {-52, -50}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-80, -50}}, color = {0, 0, 0}), Line(points = {{80, 32}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-100, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{100, 0}, {80, 0}}, color = {0, 0, 0})}));
  end NonLinearSpringDamper;

  model OneJointFinger "Incomplete model; does not include the newer version of the muslce model"
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0, 0.8, 0}, r_shape = {0, 0.4, 0}, color = {155, 0, 0}, diameter = 0.2) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0, 0.7, 0}, r_shape = {0, 0.35, 0},
      r_0(                                                                                                   start =     {0, 0.08, 0}, fixed =     false),color = {255, 65, 65}, diameter = 0.2) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-108.479, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PrismaticRestricted prismaticRestricted(l_stop = 0.11, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {-30, 38.148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0},
      r_0(                                                                   start =     {0, 0.08, 0}),m = 0.001, r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {-7.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.1, -0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.1, -0.35, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {26.987, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass(animateLine = false) annotation(Placement(visible = true, transformation(origin = {-62.883, 57.808}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1(animateLine = false) annotation(Placement(visible = true, transformation(origin = {68.262, -27.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-62.442, 82.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {65, 12.381}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(
      phi(                                                 start =     1.71),animation = false, n = {0, 0, -1}, useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-30, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance(animation = false) annotation(Placement(visible = true, transformation(origin = {-100, 61.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance1(animation = false) annotation(Placement(visible = true, transformation(origin = {60, 61.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant k = 100;
    parameter Modelica.SIunits.Distance freeLength = 0.5;
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(elastoBacklash(
        d=50,
        phi_rel0=0,
        b=4,
        c=200)) annotation (Placement(visible=true, transformation(
          origin={-20,-8.202},
          extent={{-10,-10},{10,10}},
          rotation=0)));
  equation
    connect(force2_1.flange_b, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {75.905, -3.987}, points = {{-0.905, 16.369}, {2.095, 16.369}, {2.095, -9.804}, {-1.643, -9.804}, {-1.643, -13.129}}, color = {0, 127, 0}));
    connect(force2_1.flange_a, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {56.705, -3.987}, points = {{-1.705, 16.369}, {-4.705, 16.369}, {-4.705, -9.804}, {5.557, -9.804}, {5.557, -13.129}}, color = {0, 127, 0}));
    connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {-53.818, 74.11799999999999}, points = {{1.376, 8.140000000000001}, {2.376, 8.140000000000001}, {2.376, -4.985}, {-3.065, -4.985}, {-3.065, -6.31}}, color = {0, 127, 0}));
    connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-71.41800000000001, 74.11799999999999}, points = {{-1.024, 8.140000000000001}, {-2.024, 8.140000000000001}, {-2.024, -4.985}, {2.535, -4.985}, {2.535, -6.31}}, color = {0, 127, 0}));
    connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-43.014, -4.101}, points = {{14.933, -4.101}, {-3.974, -4.101}, {-3.974, 4.101}, {-6.986, 4.101}}));
    connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {-2.903, -4.101}, points = {{17.903, 4.101}, {-4.097, 4.101}, {-4.097, -4.101}, {-9.710000000000001, -4.101}}));
    connect(distance1.frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {16.198, 50.824}, points = {{33.802, 10.824}, {-10.23, 10.824}, {-10.23, -10.824}, {-13.342, -10.824}}));
    connect(distance.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-36.864, 50.824}, points = {{-53.136, 10.824}, {16.708, 10.824}, {16.708, -10.824}, {19.72, -10.824}}));
    connect(fixedTranslation1.frame_b, distance1.frame_b) annotation(Line(visible = true, origin = {40.306, 8.215999999999999}, points = {{-23.319, -33.216}, {-29.657, -33.216}, {-29.657, -20.216}, {29.694, -20.216}, {29.694, 53.432}, {29.694, 53.432}}));
    connect(fixedTranslation1.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {32.594, -29.333}, points = {{-15.607, 4.333}, {-20.578, 4.333}, {-20.578, -8.667}, {17.406, -8.667}, {17.406, 2.216}, {25.668, 2.216}}, color = {95, 95, 95}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {36.99, -12.5}, points = {{-0.003, -12.5}, {0.997, -12.5}, {0.997, 12.5}, {-1.99, 12.5}}));
    connect(lineForceWithMass.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-85.419, 38.046}, points = {{12.536, 19.762}, {-5.216, 19.762}, {-5.216, -19.763}, {-2.104, -19.763}}));
    connect(fixedTranslation.frame_b, distance.frame_a) annotation(Line(visible = true, origin = {-106.043, 39.965}, points = {{18.52, -21.682}, {-7.282, -21.682}, {-7.282, 21.682}, {-3.957, 21.682}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.458, 9.141999999999999}, points = {{-14.065, 9.141999999999999}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-29.676, 26.934}, points = {{9.676, -11.934}, {10.688, -11.934}, {10.688, -0.709}, {-11.324, -0.709}, {-11.324, 12.643}, {-8.404999999999999, 12.643}}));
    connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-44.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    connect(lineForceWithMass1.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {62.417, 6.442}, points = {{15.845, -33.558}, {21.858, -33.558}, {21.858, 33.558}, {-59.561, 33.558}}));
    connect(lineForceWithMass.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {-9.522, 48.904}, points = {{-43.361, 8.904}, {15.491, 8.904}, {15.491, -8.904}, {12.379, -8.904}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-19.012, 39.788}, points = {{-3.58, -0.212}, {0.856, -0.212}, {0.856, 0.212}, {1.868, 0.212}}));
    connect(world.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-84.239, 0}, points = {{-14.24, 0}, {14.239, 0}}));
    force2.f = -k * (distance.distance + distance1.distance - freeLength);
    force2_1.f = -k * (distance.distance + distance1.distance - freeLength);
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end OneJointFinger;

  model OneJointFingerDefinedLoop "Incomplete model; does not include the newer version of the muscle model"
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0.5, 0, 0}, r_shape = {0, 0, 0}, color = {155, 0, 0}, diameter = 0.2, animation = true) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0.5, 0, 0}, r_shape = {0, 0, 0},
      r_0(                                                                                                start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = 0.2, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-135, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
      r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                    m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                         fixed =     true, start =     1.5))
                                                                                                                                                      annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = 0, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                   start =     1.5,                       fixed =     true),
                                                                                                              useAxisFlange = true)                   annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
      r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                  r_CM = {0, 0.05, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-101.892, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 20) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20, phi_rel(
                                                                    fixed =         false))
                                                                                           annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PhysicalMuscle3 physicalMuscle3(d_front = 200, c_posterior = 500, d_posterior = 200, freeLength_posterior = 0, freeLength_anterior = 0.05, K_m = muscleStiffness, muscleLengthNom = 0.5013879999999999) annotation(Placement(visible = true, transformation(origin = {-16.581, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(table = [0, 1099; 0.2, 859; 0.4, 605; 0.6, 550; 0.8, 577; 1, 612; 1.2, 653; 1.4, 700; 1.6, 741]) annotation(Placement(visible = true, transformation(origin = {-131.764, 86.56699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = muscleStiffness) annotation(Placement(visible = true, transformation(origin = {-130, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant muscleStiffness = 1100;
    Modelica.Blocks.Math.Division division annotation(Placement(visible = true, transformation(origin = {-97.014, 68.43899999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 1.57, rising = 25, width = 5, falling = 25, period = 60) annotation(Placement(visible = true, transformation(origin = {80, 55}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(trapezoid.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-92.07299999999999, 70.783}, points = {{161.073, -15.783}, {-54.691, -15.783}, {-54.691, 15.783}, {-51.691, 15.783}}, color = {0, 0, 127}));
    connect(const.y, division.u2) annotation(Line(visible = true, origin = {-113.01, 53.719}, points = {{-5.99, -8.718999999999999}, {0.997, -8.718999999999999}, {0.997, 8.718999999999999}, {3.997, 8.718999999999999}}, color = {0, 0, 127}));
    connect(division.y, physicalMuscle3.kNomPercent) annotation(Line(visible = true, origin = {-42.439, 71.71899999999999}, points = {{-43.575, -3.281}, {12.858, -3.281}, {12.858, 3.281}, {17.858, 3.281}}, color = {0, 0, 127}));
    connect(combiTable1D.y[1], division.u1) annotation(Line(visible = true, origin = {-113.451, 80.503}, points = {{-7.312, 6.064}, {1.438, 6.064}, {1.438, -6.064}, {4.438, -6.064}}, color = {0, 0, 127}));
    connect(physicalMuscle3.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-70.114, 21.2}, points = {{44.71, 46.2}, {-15.941, 46.2}, {-15.941, -46.2}, {-12.828, -46.2}}));
    connect(physicalMuscle3.frame_b_p, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {26.549, 21}, points = {{-34.129, 46}, {10.339, 46}, {10.339, -46}, {13.451, -46}}));
    connect(physicalMuscle3.frame_b, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-5.387, 19.325}, points = {{-11.193, 46.435}, {-11.193, 42.675}, {8.5, 42.675}, {8.5, -65.892}, {5.387, -65.892}}));
    connect(physicalMuscle3.frame_b2, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-11.064, 67.874}, points = {{-5.516, 15.494}, {-5.516, 20.126}, {7.484, 20.126}, {7.484, -27.874}, {-3.936, -27.874}}));
    connect(physicalMuscle3.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {20.712, 52.965}, points = {{-28.293, 29.635}, {8.393000000000001, 29.635}, {8.393000000000001, -29.634}, {11.506, -29.634}}));
    connect(physicalMuscle3.frame_a1, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-69.84399999999999, 50.342}, points = {{44.263, 32.058}, {-15.792, 32.058}, {-15.792, -32.059}, {-12.679, -32.059}}));
    connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
    connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
    connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
    connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-118.446, 0}, points = {{-6.554, 0}, {6.554, -0}}));
    connect(fixedRotation.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-78.446, 0}, points = {{-13.446, 0}, {13.446, 0}}));
    connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
    connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
    connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
    connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
    connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
    connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
    connect(PalmBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.041}, points = {{19.047, -6.041}, {-5.345, -6.041}, {-5.345, 6.041}, {-8.356999999999999, 6.041}}));
    connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.041}, points = {{14.113, 6.041}, {-2.887, 6.041}, {-2.887, -6.041}, {-8.337999999999999, -6.041}}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.666}, {3.554, 11.665}, {3.554, -11.665}, {-9.663, -11.665}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end OneJointFingerDefinedLoop;

  model OneJointFingerNew "Incomplete model; does not include the newer version of the muslce model"
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0.5, 0, 0}, r_shape = {0, 0, 0}, color = {155, 0, 0}, diameter = 0.2, animation = true) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0.5, 0, 0}, r_shape = {0, 0, 0},
      r_0(                                                                                                start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = 0.2, animation = true) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-127.115, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0},
      r_0(                                                                start =     {0, 0.08, 0},                              fixed =     false),
                                                                                                    m = 0.001, r_CM = {0, 0, 0},                    shapeType = "sphere", sphereColor = {0, 230, 0}, sphereDiameter = 0.05) annotation(Placement(visible = true, transformation(origin = {-2.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.25, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                         fixed =     true, start =     1.5))
                                                                                                                                                      annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant k = 1500;
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(
      phi_0_restrained=0,
      theta_1=0,
      theta_2=2,
      d=100,
      useAxisFlange=true,
      brakePlacementAngle=(revoluteRestrained.theta_2 + revoluteRestrained.theta_1)
          /2 - 0.1,
      totalBacklashAngle=revoluteRestrained.theta_2 - revoluteRestrained.theta_1)
      annotation (Placement(visible=true, transformation(
          origin={-10,-12.083},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                   start =     1.5,                       fixed =     true),
                                                                                                              useAxisFlange = true)                   annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.1, 0},
      r_0(                                                                              start =     {0, 0.08, 0},                      fixed =     false),
                                                                                                                  r_CM = {0, 0.05, 0},                    shapeType = "box", sphereColor = {0, 230, 0}) annotation(Placement(visible = true, transformation(origin = {17.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-72.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.25, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PhysicalMuscle2 physicalMuscle2(d_front = 200, c_posterior = 50, d_posterior = 200, freeLength_anterior = 0.05, freeLength_posterior = 0) annotation(Placement(visible = true, transformation(origin = {-15, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-0.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {0.12, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-101.892, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 20) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20, phi_rel(
                                                                    fixed =         false))
                                                                                           annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position(w(
                                                            fixed =   false), a(
                                                                             fixed =   false))
                                                                                              annotation(Placement(visible = true, transformation(origin = {5, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = k) annotation(Placement(visible = true, transformation(origin = {-125, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 2, rising = 10, width = 2, falling = 10, period = 25) annotation(Placement(visible = true, transformation(origin = {80, 38.1}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(trapezoid.y, position.phi_ref) annotation(Line(visible = true, origin = {31.5, 26.55}, points = {{37.5, 11.55}, {-11.5, 11.55}, {-11.5, -11.55}, {-14.5, -11.55}}, color = {0, 0, 127}));
    connect(const.y, physicalMuscle2.kNominal) annotation(Line(visible = true, origin = {-68.5, 75}, points = {{-45.5, 0}, {45.5, 0}}, color = {0, 0, 127}));
    connect(position.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-6.669, 9.305999999999999}, points = {{1.669, 5.694}, {-0.834, 5.694}, {-0.834, -11.388}}));
    connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
    connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
    connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
    connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
    connect(physicalMuscle2.frame_b, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {-2.755, 19.325}, points = {{-12.245, 46.435}, {-7.245, 42.675}, {5.868, 42.675}, {5.868, -65.892}, {2.755, -65.892}}));
    connect(physicalMuscle2.frame_b2, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-9.800000000000001, 67.874}, points = {{-5.2, 15.494}, {-5.2, 20.126}, {7.8, 20.126}, {7.8, -27.874}, {-5.2, -27.874}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-114.503, 0}, points = {{-2.612, 0}, {2.611, 0}}));
    connect(fixedRotation.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-78.446, 0}, points = {{-13.446, 0}, {13.446, 0}}));
    connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
    connect(fixedTranslation5.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-13.572, 40}, points = {{-1.428, 0}, {1.428, 0}}));
    connect(fixedTranslation4.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {4.188, -46.669}, points = {{-4.188, 0.102}, {0.392, 0.102}, {0.392, -0.102}, {3.405, -0.102}}));
    connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
    connect(physicalMuscle2.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-68.468, 21.2}, points = {{44.645, 46.2}, {-17.586, 46.2}, {-17.586, -46.2}, {-14.474, -46.2}}));
    connect(fixedTranslation3.frame_b, physicalMuscle2.frame_b_p) annotation(Line(visible = true, origin = {11.25, 21}, points = {{28.75, -46}, {-8.25, -46}, {-8.25, 46}, {-17.25, 46}}));
    connect(physicalMuscle2.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {22.357, 52.965}, points = {{-28.357, 29.635}, {6.748, 29.635}, {6.748, -29.634}, {9.861000000000001, -29.634}}));
    connect(fixedTranslation.frame_b, physicalMuscle2.frame_a1) annotation(Line(visible = true, origin = {-68.19799999999999, 50.342}, points = {{-14.325, -32.059}, {-17.437, -32.059}, {-17.437, 32.059}, {44.198, 32.059}}));
    connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
    connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
    connect(PalmBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.041}, points = {{19.047, -6.041}, {-5.345, -6.041}, {-5.345, 6.041}, {-8.356999999999999, 6.041}}));
    connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.041}, points = {{14.113, 6.041}, {-2.887, 6.041}, {-2.887, -6.041}, {-8.337999999999999, -6.041}}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.666}, {3.554, 11.665}, {3.554, -11.665}, {-9.663, -11.665}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-48.458, 9.141999999999999}, points = {{-14.065, 9.141}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end OneJointFingerNew;

  model OneJointFingerRestricted "Incomplete model; does not include the newer version of the muslce model"
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0, 0.8, 0}, r_shape = {0, 0.8, 0}, color = {155, 0, 0}, diameter = 0.2) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0, 0.7, 0}, r_shape = {0, 0.7, 0},
      r_0(                                                                                                  start =     {0, 0.08, 0}, fixed =     false),color = {255, 65, 65}, diameter = 0.2) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-108.479, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PrismaticRestricted prismaticRestricted(l_stop = 0.001, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {-30, 38.148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0},
      r_0(                                                                   start =     {0, 0.08, 0}),m = 0.001, r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {-7.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.1, -0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.1, -0.35, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {26.987, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(
      phi(                                                 start =     1.71),animation = false, n = {0, 0, -1}, useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-30, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant k = 100;
    PowerGrab.Components.RevoluteRestrained revoluteRestrained(elastoBacklash(
        d=50,
        phi_rel0=0,
        b=4,
        c=200)) annotation (Placement(visible=true, transformation(
          origin={-20,-8.202},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, -1},
      phi(                                                                                    start =     1.71),useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-37.475, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PrismaticRestricted prismaticRestricted1(c_bottom = 2000, c_upper = 2000, d_bottom = 200, d_upper = 200, l_stop = 0.001) annotation(Placement(visible = true, transformation(origin = {-13.133, -47.863}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 0.001, r = {0, 0.01, 0},
      r_0(                                                                               start =     {0, 0.08, 0}),r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {12.593, -46.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.1, 0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.94199999999999, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(animation = false, r = {0.1, -0.35, 0}) annotation(Placement(visible = true, transformation(origin = {53.379, 22.692}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PhysicalMuscle2 physicalMuscle2 annotation(Placement(visible = true, transformation(origin = {-15, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = k) annotation(Placement(visible = true, transformation(origin = {-113.45, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const.y, physicalMuscle2.kNominal) annotation(Line(visible = true, origin = {-45.363, 70}, points = {{-57.088, -5}, {17.363, -5}, {17.363, 5}, {22.363, 5}}, color = {0, 0, 127}));
    connect(physicalMuscle2.frame_b, bodyShape1.frame_b) annotation(Line(visible = true, origin = {8.801, 19.244}, points = {{-23.801, 46.517}, {-23.801, 42.756}, {16.905, 42.756}, {16.905, -66.015}, {13.792, -66.015}}));
    connect(physicalMuscle2.frame_b2, bodyShape.frame_b) annotation(Line(visible = true, origin = {-3.041, 67.874}, points = {{-11.959, 15.494}, {-11.959, 20.126}, {9.01, 20.126}, {9.01, -27.874}, {5.897, -27.874}}));
    connect(physicalMuscle2.frame_a_P, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {-73.468, 21.2}, points = {{49.646, 46.2}, {-17.586, 46.2}, {-17.586, -46.2}, {-14.474, -46.2}}));
    connect(fixedTranslation3.frame_b, physicalMuscle2.frame_b_p) annotation(Line(visible = true, origin = {8.345000000000001, 44.846}, points = {{35.034, -22.154}, {-10.345, -22.154}, {-10.345, 22.154}, {-14.345, 22.154}}));
    connect(physicalMuscle2.frame_b1, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {9.683999999999999, 28.8}, points = {{-15.684, 53.8}, {4.191, 53.8}, {4.191, -53.8}, {7.303, -53.8}}));
    connect(fixedTranslation.frame_b, physicalMuscle2.frame_a1) annotation(Line(visible = true, origin = {-73.19799999999999, 50.342}, points = {{-14.325, -32.059}, {-17.437, -32.059}, {-17.437, 32.059}, {49.198, 32.059}}));
    connect(fixedTranslation3.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {57.784, 11.346}, points = {{5.595, 11.346}, {8.595000000000001, 11.346}, {8.595000000000001, -11.346}, {-22.784, -11.346}}));
    connect(fixedTranslation2.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.979, -12.5}, points = {{-13.963, -12.5}, {4.992, -12.5}, {4.992, 12.5}, {3.979, 12.5}}));
    connect(prismaticRestricted1.frame_b, bodyShape1.frame_a) annotation(Line(visible = true, origin = {0.007, -46.603}, points = {{-5.733, 0.168}, {1.573, 0.168}, {1.573, -0.168}, {2.586, -0.168}}));
    connect(revolute2.frame_b, prismaticRestricted1.frame_a) annotation(Line(visible = true, origin = {-24.239, -38.217}, points = {{-3.236, 8.217000000000001}, {0.106, 8.217000000000001}, {0.106, -8.217000000000001}, {3.025, -8.217000000000001}}, color = {95, 95, 95}));
    connect(PalmBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-48.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
    connect(revoluteRestrained.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-43.014, -4.101}, points = {{14.933, -4.101}, {-3.974, -4.101}, {-3.974, 4.101}, {-6.986, 4.101}}));
    connect(FingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {-2.903, -4.101}, points = {{17.903, 4.101}, {-4.097, 4.101}, {-4.097, -4.101}, {-9.710000000000001, -4.101}}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {36.99, -12.5}, points = {{-0.003, -12.5}, {0.997, -12.5}, {0.997, 12.5}, {-1.99, 12.5}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.458, 9.141999999999999}, points = {{-14.065, 9.141999999999999}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-29.676, 26.934}, points = {{9.676, -11.934}, {10.688, -11.934}, {10.688, -0.709}, {-11.324, -0.709}, {-11.324, 12.643}, {-8.404999999999999, 12.643}}));
    connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-44.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-19.012, 39.788}, points = {{-3.58, -0.212}, {0.856, -0.212}, {0.856, 0.212}, {1.868, 0.212}}));
    connect(world.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-84.239, 0}, points = {{-14.24, 0}, {14.239, 0}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end OneJointFingerRestricted;

  model OneJointFingerTongueOut
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0, 0.8, 0}, r_shape = {0, 0.4, 0}, color = {155, 0, 0}, diameter = 0.2) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0, 0.7, 0}, r_shape = {0, 0.35, 0},
      r_0(                                                                                                   start =     {0, 0.08, 0}, fixed =     false),color = {255, 65, 65}, diameter = 0.2) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute(phi(
                                                          start =     0.12),animation = false) annotation(Placement(visible = true, transformation(origin = {-10, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-108.479, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 0.075, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {-30, 38.148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0},
      r_0(                                                                   start =     {0, 0.08, 0}),m = 0.001, r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {-7.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, -0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, -0.35, 0}) annotation(Placement(visible = true, transformation(origin = {26.987, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass(animateLine = false) annotation(Placement(visible = true, transformation(origin = {-62.883, 57.808}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1(animateLine = false) annotation(Placement(visible = true, transformation(origin = {68.262, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-62.442, 77.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {67.381, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(phi(
                                                           start =     1.71),animation = false) annotation(Placement(visible = true, transformation(origin = {-30, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance(animation = false) annotation(Placement(visible = true, transformation(origin = {-100, 61.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance1(animation = false) annotation(Placement(visible = true, transformation(origin = {60, 61.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant k = 100;
    parameter Modelica.SIunits.Distance freeLength = 1.3;
  equation
    connect(distance1.frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {16.198, 50.824}, points = {{33.802, 10.824}, {-10.23, 10.824}, {-10.23, -10.824}, {-13.342, -10.824}}));
    connect(distance.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-36.864, 50.824}, points = {{-53.136, 10.824}, {16.708, 10.824}, {16.708, -10.824}, {19.72, -10.824}}));
    connect(fixedTranslation1.frame_b, distance1.frame_b) annotation(Line(visible = true, origin = {43.531, 8.215999999999999}, points = {{-26.544, -33.216}, {-29.657, -33.216}, {-29.657, -20.216}, {29.694, -20.216}, {29.694, 53.432}, {26.469, 53.432}}));
    connect(fixedTranslation1.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {34.452, -29.333}, points = {{-17.465, 4.333}, {-20.578, 4.333}, {-20.578, -8.667}, {17.406, -8.667}, {17.406, 4.333}, {23.81, 4.333}}, color = {95, 95, 95}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {36.99, -12.5}, points = {{-0.003, -12.5}, {0.997, -12.5}, {0.997, 12.5}, {-1.99, 12.5}}));
    connect(lineForceWithMass.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-85.419, 38.046}, points = {{12.536, 19.762}, {-5.216, 19.762}, {-5.216, -19.763}, {-2.104, -19.763}}));
    connect(fixedTranslation.frame_b, distance.frame_a) annotation(Line(visible = true, origin = {-106.043, 39.965}, points = {{18.52, -21.682}, {-7.282, -21.682}, {-7.282, 21.682}, {-3.957, 21.682}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.458, 9.141999999999999}, points = {{-14.065, 9.141999999999999}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-29.676, 26.934}, points = {{9.676, -11.934}, {10.688, -11.934}, {10.688, -0.709}, {-11.324, -0.709}, {-11.324, 12.643}, {-8.404999999999999, 12.643}}));
    connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-44.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    connect(revolute.frame_b, FingerExtension.frame_a) annotation(Line(visible = true, origin = {9.744, -7.5}, points = {{-9.744, -7.5}, {2.244, -7.5}, {2.244, 7.5}, {5.256, 7.5}}));
    connect(PalmBone.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-29.006, -7.5}, points = {{-20.994, 7.5}, {5.994, 7.5}, {5.994, -7.5}, {9.006, -7.5}}));
    connect(force2_1.flange_a, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {76.342, -11.667}, points = {{1.04, 6.667}, {1.04, -3.333}, {-2.079, -3.333}}, color = {0, 127, 0}));
    connect(lineForceWithMass1.flange_a, force2_1.flange_b) annotation(Line(visible = true, origin = {60.635, -8.333}, points = {{1.627, -6.667}, {1.627, 3.333}, {-3.254, 3.333}}, color = {0, 127, 0}));
    connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {-53.922, 70.958}, points = {{1.481, 6.3}, {1.481, -3.15}, {-2.961, -3.15}}, color = {0, 127, 0}));
    connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-71.256, 70.958}, points = {{-1.186, 6.3}, {-1.186, -3.15}, {2.372, -3.15}}, color = {0, 127, 0}));
    connect(lineForceWithMass1.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {62.417, 7.5}, points = {{15.845, -32.5}, {21.858, -32.5}, {21.858, 32.5}, {-59.561, 32.5}}));
    connect(lineForceWithMass.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {-9.522, 48.904}, points = {{-43.361, 8.904}, {15.491, 8.904}, {15.491, -8.904}, {12.379, -8.904}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-19.012, 39.788}, points = {{-3.58, -0.212}, {0.856, -0.212}, {0.856, 0.212}, {1.868, 0.212}}));
    connect(world.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-84.239, 0}, points = {{-14.24, 0}, {14.239, 0}}));
    force2.f = -k * (distance.distance + distance1.distance - freeLength);
    force2_1.f = -k * (distance.distance + distance1.distance - freeLength);
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end OneJointFingerTongueOut;

  model OneJointFingerWrittenEquation
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder PalmBone(r = {0, 0.8, 0}, r_shape = {0, 0.4, 0}, color = {155, 0, 0}, diameter = 0.2) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyCylinder FingerExtension(r = {0, 0.7, 0}, r_shape = {0, 0.35, 0},
      r_0(                                                                                                   start =     {0, 0.08, 0}, fixed =     false),color = {255, 65, 65}, diameter = 0.2) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute(phi(
                                                          start =     0.12),animation = false) annotation(Placement(visible = true, transformation(origin = {-10, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(enableAnimation = true, animateWorld = true, animateGravity = false, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-108.479, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 0.075, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {-30, 38.148}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0},
      r_0(                                                                   start =     {0, 0.08, 0}),m = 0.001, r_CM = {0, 0.005, 0}) annotation(Placement(visible = true, transformation(origin = {-7.144, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, -0.4, 0}) annotation(Placement(visible = true, transformation(origin = {-77.523, 18.283}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, -0.35, 0}) annotation(Placement(visible = true, transformation(origin = {26.987, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass(animateLine = false) annotation(Placement(visible = true, transformation(origin = {-62.883, 57.808}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1(animateLine = false) annotation(Placement(visible = true, transformation(origin = {68.262, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-62.442, 77.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {67.381, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(phi(
                                                           start =     1.71),animation = false) annotation(Placement(visible = true, transformation(origin = {-30, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance(animation = false) annotation(Placement(visible = true, transformation(origin = {-100, 61.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance1(animation = false) annotation(Placement(visible = true, transformation(origin = {60, 61.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant k = 1e-07;
    parameter Modelica.SIunits.Distance freeLength = 1.4;
  equation
    connect(distance1.frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {16.198, 50.824}, points = {{33.802, 10.824}, {-10.23, 10.824}, {-10.23, -10.824}, {-13.342, -10.824}}));
    connect(distance.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-36.864, 50.824}, points = {{-53.136, 10.824}, {16.708, 10.824}, {16.708, -10.824}, {19.72, -10.824}}));
    connect(fixedTranslation1.frame_b, distance1.frame_b) annotation(Line(visible = true, origin = {43.531, 8.215999999999999}, points = {{-26.544, -33.216}, {-29.657, -33.216}, {-29.657, -20.216}, {29.694, -20.216}, {29.694, 53.432}, {26.469, 53.432}}));
    connect(fixedTranslation1.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {34.452, -29.333}, points = {{-17.465, 4.333}, {-20.578, 4.333}, {-20.578, -8.667}, {17.406, -8.667}, {17.406, 4.333}, {23.81, 4.333}}, color = {95, 95, 95}));
    connect(fixedTranslation1.frame_a, FingerExtension.frame_b) annotation(Line(visible = true, origin = {36.99, -12.5}, points = {{-0.003, -12.5}, {0.997, -12.5}, {0.997, 12.5}, {-1.99, 12.5}}));
    connect(lineForceWithMass.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-85.419, 38.046}, points = {{12.536, 19.762}, {-5.216, 19.762}, {-5.216, -19.763}, {-2.104, -19.763}}));
    connect(fixedTranslation.frame_b, distance.frame_a) annotation(Line(visible = true, origin = {-106.043, 39.965}, points = {{18.52, -21.682}, {-7.282, -21.682}, {-7.282, 21.682}, {-3.957, 21.682}}));
    connect(fixedTranslation.frame_a, PalmBone.frame_b) annotation(Line(visible = true, origin = {-53.458, 9.141999999999999}, points = {{-14.065, 9.141999999999999}, {5.304, 9.141999999999999}, {5.304, -9.141999999999999}, {3.458, -9.141999999999999}}));
    connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-29.676, 26.934}, points = {{9.676, -11.934}, {10.688, -11.934}, {10.688, -0.709}, {-11.324, -0.709}, {-11.324, 12.643}, {-8.404999999999999, 12.643}}));
    connect(PalmBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-44.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
    connect(revolute.frame_b, FingerExtension.frame_a) annotation(Line(visible = true, origin = {9.744, -7.5}, points = {{-9.744, -7.5}, {2.244, -7.5}, {2.244, 7.5}, {5.256, 7.5}}));
    connect(PalmBone.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-29.006, -7.5}, points = {{-20.994, 7.5}, {5.994, 7.5}, {5.994, -7.5}, {9.006, -7.5}}));
    connect(force2_1.flange_a, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {76.342, -11.667}, points = {{1.04, 6.667}, {1.04, -3.333}, {-2.079, -3.333}}, color = {0, 127, 0}));
    connect(lineForceWithMass1.flange_a, force2_1.flange_b) annotation(Line(visible = true, origin = {60.635, -8.333}, points = {{1.627, -6.667}, {1.627, 3.333}, {-3.254, 3.333}}, color = {0, 127, 0}));
    connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {-53.922, 70.958}, points = {{1.481, 6.3}, {1.481, -3.15}, {-2.961, -3.15}}, color = {0, 127, 0}));
    connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-71.256, 70.958}, points = {{-1.186, 6.3}, {-1.186, -3.15}, {2.372, -3.15}}, color = {0, 127, 0}));
    connect(lineForceWithMass1.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {62.417, 7.5}, points = {{15.845, -32.5}, {21.858, -32.5}, {21.858, 32.5}, {-59.561, 32.5}}));
    connect(lineForceWithMass.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {-9.522, 48.904}, points = {{-43.361, 8.904}, {15.491, 8.904}, {15.491, -8.904}, {12.379, -8.904}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-19.012, 39.788}, points = {{-3.58, -0.212}, {0.856, -0.212}, {0.856, 0.212}, {1.868, 0.212}}));
    connect(world.frame_b, PalmBone.frame_a) annotation(Line(visible = true, origin = {-84.239, 0}, points = {{-14.24, 0}, {14.239, 0}}));
    force2.f = k * (distance.distance + distance1.distance - freeLength);
    force2_1.f = k * (distance.distance + distance1.distance - freeLength);
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end OneJointFingerWrittenEquation;

  model PhysicalMuscle
    Modelica.Blocks.Interfaces.RealInput kNominal "Nominal k, as determined through the muscle activation signal (from the brain)" annotation(Placement(visible = true, transformation(origin = {-127.523, 6.815}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(tableOnFile = false, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 0.1, 0; 0.2, 0; 0.5, 0; 0.7, 0; 0.9, 0; 1, 0; 1.5, 0.4; 1.67, 0.83; 2, 1; 2.25, 1; 2.5, 0.77; 2.7, 0.65; 3.15, 0.5; 3.3, 0.58; 3.5, 1]) annotation(Placement(visible = true, transformation(origin = {-67.998, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel1(c = c_posterior, d = d_posterior, s_unstretched = freeLength_posterior) annotation(Placement(visible = true, transformation(origin = {0, -88.236}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a_P "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {-140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-88.22799999999999, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b_p "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-140, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-90, 74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {140, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Blocks.Math.Product product annotation(Placement(visible = true, transformation(origin = {-28.222, 12.347}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    NonLinearSpringDamper nonLinearSpringDamper(d = d_front) annotation(Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalDampingConstant d_front;
    parameter Modelica.SIunits.TranslationalSpringConstant c_posterior;
    parameter Modelica.SIunits.TranslationalDampingConstant d_posterior;
    parameter Modelica.SIunits.Distance freeLength_posterior;
    Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {-66.675, -25}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  equation
    connect(combiTable1D.y[1], product.u1) annotation(Line(visible = true, origin = {-45.916, 39.174}, points = {{-11.082, 20.826}, {2.694, 20.826}, {2.694, -20.827}, {5.694, -20.827}}, color = {0, 0, 127}));
    connect(distance.frame_b, frame_b1) annotation(Line(visible = true, origin = {81.331, -32.5}, points = {{-138.006, 7.5}, {39.669, 7.5}, {39.669, -7.5}, {58.669, -7.5}}));
    connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-114.669, -32.5}, points = {{37.994, 7.5}, {-6.331, 7.5}, {-6.331, -7.5}, {-25.331, -7.5}}));
    connect(distance.distance, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-75.869, 16.8}, points = {{9.194000000000001, -30.8}, {9.194000000000001, -27.8}, {-7.129, -27.8}, {-7.129, 43.2}, {-4.129, 43.2}}, color = {0, 0, 127}));
    connect(nonLinearSpringDamper.frame_b, frame_b1) annotation(Line(visible = true, origin = {75, -40}, points = {{-65, 0}, {65, 0}}));
    connect(frame_a1, nonLinearSpringDamper.frame_a) annotation(Line(visible = true, origin = {-75, -40}, points = {{-65, 0}, {65, 0}}));
    connect(product.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-5.741, -5.685}, points = {{-11.481, 18.032}, {5.741, 18.032}, {5.741, -36.064}}, color = {0, 0, 127}));
    connect(kNominal, product.u2) annotation(Line(visible = true, origin = {-63.547, 6.581}, points = {{-63.976, 0.234}, {20.325, 0.234}, {20.325, -0.234}, {23.325, -0.234}}, color = {0, 0, 127}));
    connect(springDamperParallel1.frame_b, frame_b_p) annotation(Line(visible = true, origin = {98, -89.11799999999999}, points = {{-88, 0.882}, {23, 0.882}, {23, -0.882}, {42, -0.882}}));
    connect(frame_a_P, springDamperParallel1.frame_a) annotation(Line(visible = true, origin = {-45.506, -89.11799999999999}, points = {{-94.494, -0.882}, {29.494, -0.882}, {29.494, 0.882}, {35.506, 0.882}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PhysicalMuscle;

  model PhysicalMuscle2
    Modelica.Blocks.Interfaces.RealInput kNominal "Nominal k, as determined through the muscle activation signal (from the brain)" annotation(Placement(visible = true, transformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a_P "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {-140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-88.22799999999999, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b_p "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-139, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-90, 74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {141, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    NonLinearSpringDamper nonLinearSpringDamper(d = d_front, s_unstretched = freeLength_anterior) annotation(Placement(visible = true, transformation(origin = {-55, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalDampingConstant d_front;
    parameter Modelica.SIunits.TranslationalSpringConstant c_posterior;
    parameter Modelica.SIunits.TranslationalDampingConstant d_posterior;
    parameter Modelica.SIunits.Distance freeLength_posterior;
    parameter Modelica.SIunits.Distance freeLength_anterior;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {0, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -92.39400000000001}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance1 annotation(Placement(visible = true, transformation(origin = {75, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance3 annotation(Placement(visible = true, transformation(origin = {-55, -90}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {0, 87.86199999999999}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, 83.678}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add annotation(Placement(visible = true, transformation(origin = {55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {100, 66.895}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    NonLinearSpringDamper nonLinearSpringDamper1(d = d_posterior) annotation(Placement(visible = true, transformation(origin = {45, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = c_posterior) annotation(Placement(visible = true, transformation(origin = {120, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {-81.871, -65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {100, 87.489}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {-81.84399999999999, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 0.5, 0.4; 0.67, 0.83; 1, 1; 1.25, 1; 1.5, 0.77; 1.7, 0.65; 2.15, 0.5; 2.3, 0.58; 2.5, 1], tableOnFile = false) annotation(Placement(visible = true, transformation(origin = {-81.86, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product annotation(Placement(visible = true, transformation(origin = {-48.266, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(kNominal, product.u2) annotation(Line(visible = true, origin = {-76.7, 57}, points = {{-43.3, 3}, {13.434, 3}, {13.434, -3}, {16.434, -3}}, color = {0, 0, 127}));
    connect(product.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-43.16, 40.85}, points = {{5.894, 19.15}, {8.894, 19.15}, {8.894, -7.85}, {-11.84, -7.85}, {-11.84, -22.599}}, color = {0, 0, 127}));
    connect(combiTable1D.y[1], product.u1) annotation(Line(visible = true, origin = {-64.414, 73}, points = {{-6.446, 7}, {1.148, 7}, {1.148, -7}, {4.148, -7}}, color = {0, 0, 127}));
    connect(add.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-35.516, 24.2}, points = {{90.51600000000001, -35.2}, {90.51600000000001, -38.2}, {-61.344, -38.2}, {-61.344, 55.8}, {-58.344, 55.8}}, color = {0, 0, 127}));
    connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {108.667, 80.426}, points = {{1.333, 7.063}, {1.333, -3.531}, {-2.667, -3.531}}, color = {0, 127, 0}));
    connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {91.333, 80.426}, points = {{-1.333, 7.063}, {-1.333, -3.531}, {2.667, -3.531}}, color = {0, 127, 0}));
    connect(nonLinearSpringDamper.springForce, force2.f) annotation(Line(visible = true, origin = {56.838, 59.744}, points = {{-103.486, -31.744}, {30.162, -31.744}, {30.162, 31.744}, {43.162, 31.744}}, color = {0, 0, 127}));
    connect(nonLinearSpringDamper1.springForce, force2_1.f) annotation(Line(visible = true, origin = {-45.721, -51.5}, points = {{82.37, -10.5}, {-23.123, -10.5}, {-23.123, 10.5}, {-36.123, 10.5}}, color = {0, 0, 127}));
    connect(force2_1.flange_b, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-73.187, -51.667}, points = {{1.342, 6.667}, {1.342, -3.333}, {-2.684, -3.333}}, color = {0, 127, 0}));
    connect(force2_1.flange_a, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {-90.52, -51.667}, points = {{-1.324, 6.667}, {-1.324, -3.333}, {2.649, -3.333}}, color = {0, 127, 0}));
    connect(lineForceWithMass1.frame_a, frame_b) annotation(Line(visible = true, origin = {-27.468, -78}, points = {{-44.403, 13}, {8.468, 13}, {8.468, -13}, {27.468, -13}}));
    connect(lineForceWithMass1.frame_b, frame_a_P) annotation(Line(visible = true, origin = {-118.468, -77.5}, points = {{26.597, 12.5}, {-2.532, 12.5}, {-2.532, -12.5}, {-21.532, -12.5}}));
    connect(const.y, nonLinearSpringDamper1.k) annotation(Line(visible = true, origin = {69.006, -55.875}, points = {{39.994, 15.875}, {-7.994, 15.875}, {-7.994, -15.875}, {-24.006, -15.875}}, color = {0, 0, 127}));
    connect(nonLinearSpringDamper1.frame_a, frame_b_p) annotation(Line(visible = true, origin = {109.25, -80}, points = {{-54.25, 10}, {11.75, 10}, {11.75, -10}, {30.75, -10}}));
    connect(nonLinearSpringDamper1.frame_b, frame_b) annotation(Line(visible = true, origin = {18.25, -80.5}, points = {{16.75, 10.5}, {0.75, 10.5}, {0.75, -10.5}, {-18.25, -10.5}}));
    connect(distance3.distance, nonLinearSpringDamper1.s2) annotation(Line(visible = true, origin = {13.005, -63.4}, points = {{-68.005, -15.6}, {-68.005, 6.4}, {48.008, 6.4}, {48.008, 1.4}, {39.995, 1.4}}, color = {0, 0, 127}));
    connect(distance3.frame_b, frame_a_P) annotation(Line(visible = true, origin = {-102.5, -90}, points = {{37.5, 0}, {-37.5, 0}}));
    connect(lineForceWithMass.frame_b, frame_b1) annotation(Line(visible = true, origin = {130.667, 51.263}, points = {{-20.667, 15.632}, {10.333, 15.632}, {10.333, -31.263}}));
    connect(lineForceWithMass.frame_a, frame_b2) annotation(Line(visible = true, origin = {32, 77.378}, points = {{58, -10.484}, {-13, -10.484}, {-13, 10.484}, {-32, 10.484}}));
    connect(nonLinearSpringDamper.frame_b, frame_b2) annotation(Line(visible = true, origin = {-15, 42.621}, points = {{-30, -22.621}, {15, -22.621}, {15, 45.241}}, color = {95, 95, 95}));
    connect(distance1.distance, nonLinearSpringDamper.s2) annotation(Line(visible = true, origin = {24.558, 29.167}, points = {{50.442, -0.167}, {50.442, -3.167}, {37.117, -3.167}, {37.117, 3.833}, {-87.55800000000001, 3.833}, {-87.55800000000001, -1.167}}, color = {0, 0, 127}));
    connect(distance.distance, add.u2) annotation(Line(visible = true, origin = {39.5, 17.75}, points = {{-9.5, 11.25}, {-9.5, -2.75}, {9.5, -2.75}, {9.5, -5.75}}, color = {0, 0, 127}));
    connect(distance1.distance, add.u1) annotation(Line(visible = true, origin = {68, 17.75}, points = {{7, 11.25}, {7, -2.75}, {-7, -2.75}, {-7, -5.75}}, color = {0, 0, 127}));
    connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-89.75, 30}, points = {{109.75, 10}, {-30.25, 10}, {-30.25, -10}, {-49.25, -10}}));
    connect(frame_b2, distance.frame_b) annotation(Line(visible = true, origin = {25.29, 61.117}, points = {{-25.29, 26.745}, {-25.29, 7.745}, {17.935, 7.745}, {17.935, -21.117}, {14.71, -21.117}}));
    connect(frame_b2, distance1.frame_a) annotation(Line(visible = true, origin = {47.087, 63.931}, points = {{-47.087, 23.931}, {14.587, 23.931}, {14.587, -23.931}, {17.913, -23.931}}));
    connect(distance3.frame_a, frame_b) annotation(Line(visible = true, origin = {-20.75, -90.5}, points = {{-24.25, 0.5}, {1.75, 0.5}, {1.75, -0.5}, {20.75, -0.5}}));
    connect(distance1.frame_b, frame_b1) annotation(Line(visible = true, origin = {117.5, 30}, points = {{-32.5, 10}, {4.5, 10}, {4.5, -10}, {23.5, -10}}));
    connect(frame_a1, nonLinearSpringDamper.frame_a) annotation(Line(visible = true, origin = {-102, 20}, points = {{-37, -0}, {37, 0}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PhysicalMuscle2;

  model PhysicalMuscle3
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a_P "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {-140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-88.22799999999999, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b_p "frame connecting to the muscle on the posterior of the finger" annotation(Placement(visible = true, transformation(origin = {140, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-139, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-90, 74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {141, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    PowerGrab.Components.NonLinearSpringDamper nonLinearSpringDamper(d = d_front, s_unstretched = freeLength_anterior) annotation(Placement(visible = true, transformation(origin = {-55, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalDampingConstant d_front;
    parameter Modelica.SIunits.TranslationalSpringConstant c_posterior;
    parameter Modelica.SIunits.TranslationalDampingConstant d_posterior;
    parameter Modelica.SIunits.Distance freeLength_posterior;
    parameter Modelica.SIunits.Distance freeLength_anterior;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {0, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -92.39400000000001}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance1 annotation(Placement(visible = true, transformation(origin = {75, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance3 annotation(Placement(visible = true, transformation(origin = {-55, -90}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {0, 87.86199999999999}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, 83.678}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add annotation(Placement(visible = true, transformation(origin = {55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {100, 66.895}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.NonLinearSpringDamper nonLinearSpringDamper1(d = d_posterior) annotation(Placement(visible = true, transformation(origin = {45, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = c_posterior) annotation(Placement(visible = true, transformation(origin = {120, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {-81.871, -65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {100, 87.489}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {-81.84399999999999, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput kNomPercent "Percent of muscle fiber activation (determined by brain, transmitted through neural impulses)" annotation(Placement(visible = true, transformation(origin = {-135, 67.782}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    PowerGrab.Components.MuscleTissue2 muscleTissue2(K_m = K_m, muscleLengthNom = muscleLengthNom) annotation(Placement(visible = true, transformation(origin = {-65, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.TranslationalSpringConstant K_m;
    parameter Modelica.SIunits.Length muscleLengthNom;
  equation
    connect(muscleTissue2.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-54.153, 42.85}, points = {{-2.613, 22.15}, {2.153, 22.15}, {2.153, -9.85}, {-0.847, -9.85}, {-0.847, -24.6}}, color = {0, 0, 127}));
    connect(add.y, muscleTissue2.u) annotation(Line(visible = true, origin = {-23.951, 21.168}, points = {{78.95099999999999, -32.168}, {78.95099999999999, -35.168}, {-54.049, -35.168}, {-54.049, 51.252}, {-49.803, 51.252}}, color = {0, 0, 127}));
    connect(kNomPercent, muscleTissue2.u1) annotation(Line(visible = true, origin = {-91.161, 63.018}, points = {{-43.839, 4.764}, {13.161, 4.764}, {13.161, -4.764}, {17.517, -4.764}}, color = {0, 0, 127}));
    connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-89.75, 30}, points = {{109.75, 10}, {-30.25, 10}, {-30.25, -10}, {-49.25, -10}}));
    connect(distance1.distance, nonLinearSpringDamper.s2) annotation(Line(visible = true, origin = {24.558, 29.167}, points = {{50.442, -0.167}, {50.442, -3.167}, {37.117, -3.167}, {37.117, 3.833}, {-87.55800000000001, 3.833}, {-87.55800000000001, -1.167}}, color = {0, 0, 127}));
    connect(force2.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {108.667, 80.426}, points = {{1.333, 7.063}, {1.333, -3.531}, {-2.667, -3.531}}, color = {0, 127, 0}));
    connect(force2.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {91.333, 80.426}, points = {{-1.333, 7.063}, {-1.333, -3.531}, {2.667, -3.531}}, color = {0, 127, 0}));
    connect(nonLinearSpringDamper.springForce, force2.f) annotation(Line(visible = true, origin = {56.838, 59.744}, points = {{-103.486, -31.744}, {30.162, -31.744}, {30.162, 31.744}, {43.162, 31.744}}, color = {0, 0, 127}));
    connect(nonLinearSpringDamper1.springForce, force2_1.f) annotation(Line(visible = true, origin = {-45.721, -51.5}, points = {{82.37, -10.5}, {-23.123, -10.5}, {-23.123, 10.5}, {-36.123, 10.5}}, color = {0, 0, 127}));
    connect(force2_1.flange_b, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-73.187, -51.667}, points = {{1.342, 6.667}, {1.342, -3.333}, {-2.684, -3.333}}, color = {0, 127, 0}));
    connect(force2_1.flange_a, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {-90.52, -51.667}, points = {{-1.324, 6.667}, {-1.324, -3.333}, {2.649, -3.333}}, color = {0, 127, 0}));
    connect(lineForceWithMass1.frame_a, frame_b) annotation(Line(visible = true, origin = {-27.468, -78}, points = {{-44.403, 13}, {8.468, 13}, {8.468, -13}, {27.468, -13}}));
    connect(lineForceWithMass1.frame_b, frame_a_P) annotation(Line(visible = true, origin = {-118.468, -77.5}, points = {{26.597, 12.5}, {-2.532, 12.5}, {-2.532, -12.5}, {-21.532, -12.5}}));
    connect(const.y, nonLinearSpringDamper1.k) annotation(Line(visible = true, origin = {69.006, -55.875}, points = {{39.994, 15.875}, {-7.994, 15.875}, {-7.994, -15.875}, {-24.006, -15.875}}, color = {0, 0, 127}));
    connect(nonLinearSpringDamper1.frame_a, frame_b_p) annotation(Line(visible = true, origin = {109.25, -80}, points = {{-54.25, 10}, {11.75, 10}, {11.75, -10}, {30.75, -10}}));
    connect(nonLinearSpringDamper1.frame_b, frame_b) annotation(Line(visible = true, origin = {18.25, -80.5}, points = {{16.75, 10.5}, {0.75, 10.5}, {0.75, -10.5}, {-18.25, -10.5}}));
    connect(distance3.distance, nonLinearSpringDamper1.s2) annotation(Line(visible = true, origin = {13.005, -63.4}, points = {{-68.005, -15.6}, {-68.005, 6.4}, {48.008, 6.4}, {48.008, 1.4}, {39.995, 1.4}}, color = {0, 0, 127}));
    connect(distance3.frame_b, frame_a_P) annotation(Line(visible = true, origin = {-102.5, -90}, points = {{37.5, 0}, {-37.5, 0}}));
    connect(lineForceWithMass.frame_b, frame_b1) annotation(Line(visible = true, origin = {130.667, 51.263}, points = {{-20.667, 15.632}, {10.333, 15.632}, {10.333, -31.263}}));
    connect(lineForceWithMass.frame_a, frame_b2) annotation(Line(visible = true, origin = {32, 77.378}, points = {{58, -10.484}, {-13, -10.484}, {-13, 10.484}, {-32, 10.484}}));
    connect(nonLinearSpringDamper.frame_b, frame_b2) annotation(Line(visible = true, origin = {-15, 42.621}, points = {{-30, -22.621}, {15, -22.621}, {15, 45.241}}, color = {95, 95, 95}));
    connect(distance.distance, add.u2) annotation(Line(visible = true, origin = {39.5, 17.75}, points = {{-9.5, 11.25}, {-9.5, -2.75}, {9.5, -2.75}, {9.5, -5.75}}, color = {0, 0, 127}));
    connect(distance1.distance, add.u1) annotation(Line(visible = true, origin = {68, 17.75}, points = {{7, 11.25}, {7, -2.75}, {-7, -2.75}, {-7, -5.75}}, color = {0, 0, 127}));
    connect(frame_b2, distance.frame_b) annotation(Line(visible = true, origin = {25.29, 61.117}, points = {{-25.29, 26.745}, {-25.29, 7.745}, {17.935, 7.745}, {17.935, -21.117}, {14.71, -21.117}}));
    connect(frame_b2, distance1.frame_a) annotation(Line(visible = true, origin = {47.087, 63.931}, points = {{-47.087, 23.931}, {14.587, 23.931}, {14.587, -23.931}, {17.913, -23.931}}));
    connect(distance3.frame_a, frame_b) annotation(Line(visible = true, origin = {-20.75, -90.5}, points = {{-24.25, 0.5}, {1.75, 0.5}, {1.75, -0.5}, {20.75, -0.5}}));
    connect(distance1.frame_b, frame_b1) annotation(Line(visible = true, origin = {117.5, 30}, points = {{-32.5, 10}, {4.5, 10}, {4.5, -10}, {23.5, -10}}));
    connect(frame_a1, nonLinearSpringDamper.frame_a) annotation(Line(visible = true, origin = {-102, 20}, points = {{-37, -0}, {37, 0}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PhysicalMuscle3;

  model PhysRotaryMuscle
    Modelica.Blocks.Interfaces.RealInput kNominal "Nominal k, as determined through the muscle activation signal (from the brain)" annotation(Placement(visible = true, transformation(origin = {-135, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -3.528}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(tableOnFile = false, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, table = [0, 0; 0.1, 0; 0.2, 0; 0.5, 0; 0.7, 0; 0.9, 0; 1, 0; 1.5, 0.4; 1.67, 0.83; 2, 1; 2.25, 1; 2.5, 0.77; 2.7, 0.65; 3.15, 0.5; 3.3, 0.58; 3.5, 1]) annotation(Placement(visible = true, transformation(origin = {-95, 73.229}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-141, 19}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-86, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {-11, 76}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {86, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Blocks.Math.Product kActual annotation(Placement(visible = true, transformation(origin = {-67.90900000000001, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.NonLinearSpringDamper nonLinearSpringDamper(d = 0) annotation(Placement(visible = true, transformation(origin = {-40, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance distance annotation(Placement(visible = true, transformation(origin = {-95, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque2 torque2 annotation(Placement(visible = true, transformation(origin = {-20, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {-128.323, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-48.489, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(Placement(visible = true, transformation(origin = {65, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Length palmBone;
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-65, 26.811}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const.y, nonLinearSpringDamper.k) annotation(Line(visible = true, origin = {-49.333, 11.104}, points = {{-4.667, 15.707}, {-4.667, -7.854}, {9.333, -7.854}}, color = {0, 0, 127}));
    connect(torque2.flange_b, flange_b) annotation(Line(visible = true, origin = {27.5, -30}, points = {{-37.5, 0}, {37.5, 0}}));
    connect(flange_a, torque2.flange_a) annotation(Line(visible = true, origin = {-79.161, -30}, points = {{-49.162, 0}, {49.161, 0}}));
    connect(nonLinearSpringDamper.frame_b, frame_b1) annotation(Line(visible = true, origin = {-17.333, 28.667}, points = {{-12.667, -23.667}, {6.333, -23.667}, {6.333, 47.333}}));
    connect(nonLinearSpringDamper.frame_a, frame_a1) annotation(Line(visible = true, origin = {-108.75, 12}, points = {{58.75, -7}, {-13.25, -7}, {-13.25, 7}, {-32.25, 7}}, color = {95, 95, 95}));
    connect(combiTable1D.y[1], kActual.u1) annotation(Line(visible = true, origin = {-81.432, 67.114}, points = {{-2.568, 6.115}, {0.523, 6.115}, {0.523, -6.114}, {1.523, -6.114}}, color = {0, 0, 127}));
    connect(distance.frame_b, frame_b1) annotation(Line(visible = true, origin = {-39, 53}, points = {{-46, -23}, {9, -23}, {9, 23}, {28, 23}}));
    connect(distance.frame_a, frame_a1) annotation(Line(visible = true, origin = {-122.5, 24.5}, points = {{17.5, 5.5}, {0.5, 5.5}, {0.5, -5.5}, {-18.5, -5.5}}));
    connect(distance.distance, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-103.4, 55.092}, points = {{8.4, -14.092}, {8.4, -11.092}, {-6.6, -11.092}, {-6.6, 18.137}, {-3.6, 18.137}}, color = {0, 0, 127}));
    connect(kNominal, kActual.u2) annotation(Line(visible = true, origin = {-95.182, 49.5}, points = {{-39.818, 0.5}, {12.273, 0.5}, {12.273, -0.5}, {15.273, -0.5}}, color = {0, 0, 127}));
    kActual.y * (nonLinearSpringDamper.s + palmBone) = torque2.tau;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.378, -0.756}, fillColor = {0, 255, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-97.896, -96.006}, {97.896, 96.006}}), Text(visible = true, origin = {-68.348, 56.318}, extent = {{-11.652, -7.938}, {11.652, 7.938}}, textString = "front_m_a")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PhysRotaryMuscle;

  model PrismaticRestricted
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          fixed =   false,             start =   0),
                                                                                                   n = axisOR,
      v(                                                                                                                    start =   0,              fixed =   false),
      a(                                                                                                                                 start =   0,                  fixed =   false))
                                                                                                                                                                                        annotation(Placement(visible = true, transformation(origin = {-16.756, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = c_upper, d = d_upper, s_rel0 = 0, n = 1,
      s_rel(                                                                                                     start =       0),
      v_rel(                                                                                                                      start =       0))
                                                                                                                                                   annotation(Placement(visible = true, transformation(origin = {40, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.Rod rod(L = l_stop) annotation(Placement(visible = true, transformation(origin = {-60, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap1(c = c_bottom, d = d_bottom, s_rel0 = 0, n = 1,
      s_rel(                                                                                                        start =       0),
      v_rel(                                                                                                                         start =       0))
                                                                                                                                                      annotation(Placement(visible = true, transformation(origin = {-60, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-80.80800000000001, 14.286}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {110, 15}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {74.074, 14.286}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Boolean useAxisFlange = false;
    parameter Modelica.SIunits.Distance l_stop;
    parameter Modelica.SIunits.TranslationalSpringConstant c_upper;
    parameter Modelica.SIunits.TranslationalDampingConstant d_upper;
    parameter Modelica.SIunits.TranslationalSpringConstant c_bottom;
    parameter Modelica.SIunits.TranslationalDampingConstant d_bottom;
    Modelica.Mechanics.Translational.Components.SpringDamper springDamper(c = 0, d = 200) annotation(Placement(visible = true, transformation(origin = {-15, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Integer[3] axisOR = {1, 0, 0};
    Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a if useAxisFlange annotation(Placement(visible = true, transformation(origin = {25, 101.961}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {16.835, 97.10599999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-30, 101.961}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-20.202, 97.10599999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(prismatic.support, flange_b) annotation(Line(visible = true, origin = {-25.378, 73.971}, points = {{4.622, -57.971}, {4.622, 14.99}, {-4.622, 14.99}, {-4.622, 27.99}}, color = {0, 127, 0}));
    connect(prismatic.axis, flange_a) annotation(Line(visible = true, origin = {13.748, 44.654}, points = {{-22.504, -28.654}, {11.252, -28.654}, {11.252, 57.308}}, color = {0, 127, 0}));
    connect(springDamper.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-23.585, 20.667}, points = {{-1.415, 9.333}, {-1.415, -4.667}, {2.829, -4.667}}, color = {0, 127, 0}));
    connect(springDamper.flange_b, prismatic.axis) annotation(Line(visible = true, origin = {-6.252, 20.667}, points = {{1.252, 9.333}, {1.252, -4.667}, {-2.504, -4.667}}, color = {0, 127, 0}));
    connect(prismatic.frame_b, frame_b) annotation(Line(visible = true, origin = {71.31100000000001, 12.5}, points = {{-78.06699999999999, -2.5}, {19.689, -2.5}, {19.689, 2.5}, {38.689, 2.5}}, color = {95, 95, 95}));
    connect(frame_a, prismatic.frame_a) annotation(Line(visible = true, origin = {-51.574, 12.5}, points = {{-68.426, 2.5}, {21.805, 2.5}, {21.805, -2.5}, {24.817, -2.5}}));
    connect(prismatic.axis, elastoGap1.flange_b) annotation(Line(visible = true, origin = {-16.455, -4.5}, points = {{7.698, 20.5}, {12.923, 20.5}, {12.923, -20.5}, {-33.545, -20.5}}, color = {0, 127, 0}));
    connect(elastoGap1.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-59.302, -4.5}, points = {{-10.698, -20.5}, {-13.923, -20.5}, {-13.923, 20.5}, {38.545, 20.5}}, color = {0, 127, 0}));
    connect(elastoGap.flange_a, prismatic.axis) annotation(Line(visible = true, origin = {36.923, 25.5}, points = {{13.077, 9.5}, {16.302, 9.5}, {16.302, -9.5}, {-45.68, -9.5}}, color = {0, 127, 0}));
    connect(rod.flange_b, elastoGap.flange_b) annotation(Line(visible = true, origin = {-10, 35}, points = {{-40, 0}, {40, 0}}, color = {0, 127, 0}));
    connect(prismatic.support, rod.flange_a) annotation(Line(visible = true, origin = {-59.302, 25.5}, points = {{38.545, -9.5}, {-13.923, -9.5}, {-13.923, 9.5}, {-10.698, 9.5}}, color = {0, 127, 0}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-5.188, 12.451}, lineColor = {255, 0, 0}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-63.292, -5.188}, {63.292, 5.188}}), Line(visible = true, origin = {-33.981, 34.079}, points = {{-33.981, -15.921}, {33.981, 15.921}}, color = {255, 0, 0}), Line(visible = true, origin = {28.793, 33.819}, points = {{28.793, -16.181}, {-28.793, 16.181}}, color = {255, 0, 0}), Line(visible = true, origin = {-35, -11.368}, points = {{-35, 18.632}, {35, -18.632}}, color = {255, 0, 0}), Line(visible = true, origin = {29.052, -11.109}, points = {{29.052, 18.891}, {-29.052, -18.891}}, color = {255, 0, 0})}), experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PrismaticRestricted;

  model RevoluteRestrainedTauControl
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true, phi(
                                                                                start =     0.19, fixed =     true))
                                                                                                                    annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque2 torque2 annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-96.57299999999999, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0.1, 0}, m = 1,
      r_0(                                                                  start =     {0, 0.5, 0}, fixed =     true))
                                                                                                                       annotation(Placement(visible = true, transformation(origin = {53.181, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {-65, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.SIunits.Angle phi_rel;
    Modelica.SIunits.Angle y;
    parameter Modelica.SIunits.Angle phi_0 = 1;
    parameter Modelica.SIunits.Torque k0 = 5;
    parameter Real a = 5;
  equation
    connect(fixedTranslation.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-32.5, 0}, points = {{-22.5, 0}, {22.5, 0}}, color = {95, 95, 95}));
    connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-80.786, 0}, points = {{-5.786, 0}, {5.786, 0}}));
    connect(revolute.frame_b, body.frame_a) annotation(Line(visible = true, origin = {26.591, 0}, points = {{-16.591, 0}, {16.591, 0}}));
    phi_rel = revolute.axis.phi - revolute.support.phi;
    connect(torque2.flange_b, revolute.axis) annotation(Line(visible = true, origin = {7.2, 19.29}, points = {{2.8, 10.71}, {5.8, 10.71}, {5.8, -6.065}, {-7.2, -6.065}, {-7.2, -9.289999999999999}}));
    connect(torque2.flange_a, revolute.support) annotation(Line(visible = true, origin = {-9.6, 19.29}, points = {{-0.4, 10.71}, {-3.4, 10.71}, {-3.4, -6.065}, {3.6, -6.065}, {3.6, -9.289999999999999}}));
    y = (phi_rel / phi_0) ^ 7;
    torque2.tau = -k0 * y / (y + a);
    annotation(experiment(StopTime = 10), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end RevoluteRestrainedTauControl;

  model YappariMadaTsukutteimasu
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
    Modelica.Blocks.Interfaces.RealInput forceCValue "Value of constant force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-85.251, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
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
    Modelica.SIunits.Length x_0_a;
    Modelica.SIunits.Length x_0_p;
    Real xPercent_a;
    Real xPercent_p;
    parameter Modelica.SIunits.TranslationalSpringConstant k_0_a;
    parameter Modelica.SIunits.TranslationalSpringConstant k_0_p;
    parameter Modelica.SIunits.Length x_min_a "Minimum value for anterior muscle unstretched length";
    parameter Modelica.SIunits.Length x_max_a "Maximum value for anterior muscle unstretched length";
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
    x_0_a = x_min_a + xPercent_a * (x_max_a - x_min_a);
    x_0_p = x_min_p + xPercent_p * (x_max_p - x_min_p);
    anteriorMuscleLowerForce.f = -k_0_a * (x_a - x_0_a);
    posteriorMuscleLowerForce.f = -k_0_p * (x_p - x_0_p);
    frame_a.f + frame_a1.f = forceCValue;
    frame_b.f + frame_b1.f = forceCValue;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}}), Text(visible = true, origin = {-83.256, 56.669}, extent = {{-23.256, -6.669}, {23.256, 6.669}}, textString = "kPercent_a"), Text(visible = true, origin = {-83.50700000000001, -17.476}, extent = {{-23.507, -7.476}, {23.507, 7.476}}, textString = "xPercent_a"), Text(visible = true, origin = {103.365, 56.086}, extent = {{-23.365, -6.086}, {23.365, 6.086}}, textString = "kPercent_p"), Text(visible = true, origin = {102.408, -15.991}, extent = {{-25.069, -8.228999999999999}, {25.069, 8.228999999999999}}, textString = "xPercent_p"), Text(visible = true, origin = {-102.083, 124.079}, extent = {{-37.917, -11.638}, {37.917, 11.638}}, textString = "Anterior Lower"), Text(visible = true, origin = {100, 125.665}, extent = {{-35.991, -7.551}, {35.991, 7.551}}, textString = "Anterior Upper"), Text(visible = true, origin = {-94.896, -123.472}, extent = {{-39.431, -10.855}, {39.431, 10.855}}, textString = "Posterior Lower"), Text(visible = true, origin = {97.35299999999999, -123.005}, extent = {{-40.366, -6.995}, {40.366, 6.995}}, textString = "Posterior Upper"), Ellipse(visible = true, origin = {-2.674, 85.142}, fillColor = {128, 0, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}}), Ellipse(visible = true, origin = {0, -86.60299999999999}, fillColor = {128, 0, 0},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end YappariMadaTsukutteimasu;

  model ObjectLFConnection
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Distance threshold;
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
    Boolean contact;
    Modelica.Mechanics.MultiBody.Sensors.Distance deltaX annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.NonLinearSpringDamper
      nonLinearSpringDamper(s_unstretched=threshold) annotation (Placement(
          visible=true, transformation(
          origin={0,55},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(shapeType = "sphere", length = 2 * threshold, width = 2 * threshold, height = 2 * threshold, r_shape = {-threshold, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(nonLinearSpringDamper.frame_b, frame_b) annotation(Line(visible = true, origin = {77.075, 27.5}, points = {{-67.075, 27.5}, {16.025, 27.5}, {16.025, -27.5}, {35.025, -27.5}}));
    connect(deltaX.frame_b, frame_b) annotation(Line(visible = true, origin = {77.075, 15}, points = {{-67.075, 15}, {16.025, 15}, {16.025, -15}, {35.025, -15}}));
    connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
    connect(nonLinearSpringDamper.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
    connect(deltaX.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
    contact = deltaX.distance < threshold;
    nonLinearSpringDamper.k = smooth(1, noEvent(if contact then k else 0));
    nonLinearSpringDamper.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true,
              fillPattern =                                                                                                                                                                   FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {3.683, 1.181}, extent = {{-13.683, -8.819000000000001}, {13.683, 8.819000000000001}}, textString = "LF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectLFConnection;

  model FingerMultipleRevoluteArray
    PowerGrab.Components.BoneJointComponent boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = true, closedLoop = mDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {5.256, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.BoneJointComponent boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, closedLoop = fDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin = {120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin = {120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin = {80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin = {40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin = {0, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin = {-40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin = {-80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin = {-120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin = {80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin = {40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin = {0, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin = {-40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin = {-80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin = {-120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaCDistal if cDistalRegularClosed annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaMDistal if mDistalClosed annotation(Placement(visible = true, transformation(origin = {25.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaFDistal if fDistalClosed annotation(Placement(visible = true, transformation(origin = {99.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-147.926, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    parameter Modelica.SIunits.Position r_IboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneFDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneFDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneFDistal;
    parameter Modelica.SIunits.Position r_IboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneMDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneMDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneMDistal;
    parameter Modelica.SIunits.Position r_IboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneCDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneCDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneCDistal;
    parameter Modelica.SIunits.Position baseAnterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position basePosterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Angle phi_0_doubleJoint;
    parameter Boolean fDistalClosed = true "If true, the far distal phalange will be in a constrained mode";
    parameter Boolean mDistalClosed = true "If true, the middle distal phalange will be in a constrained mode";
    parameter Boolean cDistalRegularClosed = true "If true, the close distal phalange's regular joint will be in a constrained mode";
    parameter Boolean cDistalSideClosed = true "If true, the close distal phalange's side joint will be in a constrained mode";
    Modelica.Blocks.Interfaces.RealInput loadForce if dirTorque annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
    PowerGrab.Components.FingerLoad fingerLoad(r2 = r_OboneMDistal[1], r3 = r_OboneCDistal[1], r1 = r_OboneFDistal[1] / 2) if dirTorque annotation(Placement(visible = true, transformation(origin = {-52.096, 71.024}, extent = {{-13.29, -13.29}, {13.29, 13.29}}, rotation = 0)));
    parameter Boolean dirTorque = true "True if direct torque upon joint is desired";
    Modelica.Blocks.Interfaces.RealInput sideTheta if cDistalSideClosed "secondary revolute joint - sideways swaying" annotation(Placement(visible = true, transformation(origin = {-20, -32.963}, extent = {{-12.963, -12.963}, {12.963, 12.963}}, rotation = 0), iconTransformation(origin = {-27.35, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    PowerGrab.Components.BoneDoubleJointComponent boneCDistal(phi_0_doubleJoint = phi_0_doubleJoint, closedDoubleJoint = cDistalSideClosed, closedRegularJoint = cDistalRegularClosed, torD = dirTorque, r_IFingerBone = r_IboneCDistal, r_shape_IFingerBone = r_shape_IboneCDistal, diameterIFingerBone = diameterIboneCDistal, r_OFingerBone = r_OboneCDistal, r_shape_OFingerBone = r_shape_OboneCDistal, diameterOFingerBone = diameterOboneCDistal, phi_0_regularJoint = phi_0_boneCDistal) annotation(Placement(visible = true, transformation(origin = {-86.959, -2.646}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin = {-123.296, 21.696}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin = {-123.175, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(sideTheta, boneCDistal.doubleJointControl) annotation(Line(visible = true, origin = {-53.457, -5.883}, points={{33.457,
            -27.08},{17.494,-27.08},{17.494,20.462},{-34.2425,20.462},{-34.2425,
            14.237}},                                                                                                                                                                                                     color = {0, 0, 127}));
    connect(sidePosterior, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.437, -1.291}, points={{-25.738,
            -18.709},{-4.288,-18.709},{-4.288,13.87},{17.1572,13.87},{17.1572,
            9.6784}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(sideAnterior, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.197, 17.302}, points={{-26.099,
            4.394},{13.0488,4.394},{13.0488,-8.7877}},                                                                                                                                       color = {0, 0, 127}));
    connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-56.449, -1.323}, points={{51.705,
            1.323},{-15.717,1.323},{-15.717,-1.323},{-20.2708,-1.323}}));
    connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.186, -42.431}, points = {{-24.373, 30.785}, {12.186, 30.785}, {12.186, -61.569}}));
    connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.26, 38.903}, points={{
            -24.5186,-32.549},{12.26,-32.549},{12.26,65.097}}));
    connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-58.959, 34.732}, points={{18.6164,
            33.3524},{23.153,33.3524},{23.153,-20.153},{-32.4609,-20.153},{
            -32.4609,-26.3981}},                                                                                                                                                                                           color = {0, 0, 127}));
    connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-84.545, 20.409}, points = {{20.827, 6.027}, {-10.414, 6.027}, {-10.414, -12.055}}, color = {0, 0, 127}));
    connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-91.992, -59.458}, points = {{-4.967, 47.812}, {-9.507999999999999, 47.812}, {-9.507999999999999, -25.542}, {11.992, -25.542}, {11.992, -44.542}}));
    connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-91.992, 57.342}, points={{-4.967,
            -50.988},{-9.508,-50.988},{-9.508,27.658},{11.992,27.658},{11.992,
            46.658}},                                                                                                                                                                                                        color = {95, 95, 95}));
    connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.477, -22.198}, points = {{-13.471, -19.552}, {2.977, -19.552}, {2.977, 19.552}, {7.518, 19.552}}));
    connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.46, 19.552}, points = {{-13.422, 22.198}, {2.96, 22.198}, {2.96, -22.198}, {7.501, -22.198}}));
    connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-111.971, -1.323}, points = {{-35.955, 1.323}, {10.471, 1.323}, {10.471, -1.323}, {15.012, -1.323}}));
    connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-10.011, 46.846}, points={{
            -30.5344,25.9226},{15.267,25.9226},{15.267,-51.846}},                                                                                                                   color = {0, 0, 127}));
    connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {35.073, 36.21}, points={{
            -75.6979,41.2107},{20.386,41.2107},{20.386,-41.21},{34.927,-41.21}},                                                                                                                            color = {0, 0, 127}));
    connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-51.343, 28.568}, points={{47.099,
            -34.568},{-17.043,-34.568},{-17.043,34.5676},{-13.0134,34.5676}},                                                                                                                     color = {0, 0, 127}));
    connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-35.112, 32.959}, points={{95.612,
            -38.959},{-33.274,-38.959},{-33.274,38.9581},{-29.0658,38.9581}},                                                                                                                                color = {0, 0, 127}));
    connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points={{-25.963,
            -7.71},{7.251,-7.71},{7.251,7.71004},{11.4592,7.71004}},                                                                                                                       color = {0, 0, 127}));
    connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
    connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.628, 71}, points = {{2.628, -61}, {2.628, 14}, {-2.628, 14}, {-2.628, 33}}));
    connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.786, 40.381}, points={{-16.429,
            -31.8096},{8.214,-31.8096},{8.214,63.619}}));
    connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {75, 71}, points = {{-5, -61}, {-5, 14}, {5, 14}, {5, 33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {106.7, 40.381}, points={{-26.599,
            -31.8096},{13.3,-31.8096},{13.3,63.619}}));
    connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.628, -71}, points = {{2.628, 61}, {2.628, -14}, {-2.628, -14}, {-2.628, -33}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.752, -39.6}, points = {{-16.496, 32.2}, {8.247999999999999, 32.2}, {8.247999999999999, -64.40000000000001}}));
    connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {75, -71}, points = {{-5, 61}, {-5, -14}, {5, -14}, {5, -33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {106.667, -39.6}, points = {{-26.667, 32.2}, {13.333, 32.2}, {13.333, -64.40000000000001}}));
    connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {84.79600000000001, 14.736}, points={{14.803,
            11.737},{-0.003,11.737},{-0.003,-11.736},{-14.796,-11.736}},                                                                                                                                        color = {0, 0, 127}));
    connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {15.236, 13.27}, points={{9.979,
            12.784},{9.979,-1.257},{-9.98,-1.257},{-9.98,-10.27}},                                                                                                                                                                             color = {0, 0, 127}));
    connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {46.569, 0.238}, points={{-31.212,
            0.2382},{8.89,0.2382},{8.89,-0.238},{13.431,-0.238}}));
    annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
  end FingerMultipleRevoluteArray;

  model FinalFingerArray
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.FingerMultipleRevoluteArray
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
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
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

  model ObjectPrismConnection
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter Modelica.SIunits.Length boneLength;
    parameter Modelica.SIunits.Distance threshold;
    parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
    Boolean contact;
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {12.261, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.Distance deltaX annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.NonLinearSpringDamper
      nonLinearSpringDamper(s_unstretched=threshold) annotation (Placement(
          visible=true, transformation(
          origin={0,55},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s(
                                                            fixed =   false),useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {61.951, -1.936}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {43.416, -15.468}, points = {{-21.155, -19.532}, {5.31, -19.532}, {5.31, 19.532}, {10.535, 19.532}}, color = {0, 127, 0}));
    connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {19.596, 3.043}, points = {{-56.364, -3.043}, {-53.364, -3.043}, {-53.364, 8.021000000000001}, {55.368, 8.021000000000001}, {55.368, -4.979}, {52.355, -4.979}}));
    connect(nonLinearSpringDamper.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 26.532}, points = {{-29.851, 28.468}, {8.875, 28.468}, {8.875, -28.468}, {12.1, -28.468}}));
    connect(deltaX.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 14.032}, points = {{-29.851, 15.968}, {8.875, 15.968}, {8.875, -15.968}, {12.1, -15.968}}));
    connect(prismatic.frame_a, frame_b) annotation(Line(visible = true, origin = {92.563, -0.968}, points = {{-20.612, -0.968}, {0.537, -0.968}, {0.537, 0.968}, {19.537, 0.968}}));
    connect(relativePosition.frame_a, frame_a) annotation(Line(visible = true, origin = {-84.782, 0}, points = {{28.014, 0}, {-28.014, 0}}));
    connect(deltaX.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
    connect(nonLinearSpringDamper.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
    connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
    contact = deltaX.distance < threshold;
    nonLinearSpringDamper.k = smooth(1, noEvent(if contact then k else 0));
    nonLinearSpringDamper.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
    position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true,
              fillPattern =                                                                                                                                                                   FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {0.286, -0}, extent = {{-29.714, -7.55}, {29.714, 7.55}}, textString = "PRISM")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectPrismConnection;

  model BodyCylinder
    "Rigid body with cylinder shape. Mass and animation properties are computed from cylinder data and density (12 potential states)"
    import NonSI = Modelica.SIunits.Conversions.NonSIunits;
    import Modelica.Mechanics.MultiBody.Types;
    import Modelica.Math.Vectors.normalizeWithAssert;
    import Modelica.SIunits.Conversions.to_unit1;
    import Modelica.Mechanics.MultiBody.Frames;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
    parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder between frame_a and frame_b)";
    parameter Real multAnimate "scaling factor for animation";
    parameter Modelica.SIunits.Position r[3](start = {0.1, 0, 0}) "Vector from frame_a to frame_b, resolved in frame_a";
    parameter Modelica.SIunits.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to cylinder origin, resolved in frame_a";
    parameter Modelica.Mechanics.MultiBody.Types.Axis lengthDirection = to_unit1(r - r_shape) "Vector in length direction of cylinder, resolved in frame_a" annotation(Evaluate = true);
    parameter Modelica.SIunits.Length length = Modelica.Math.Vectors.length(r - r_shape) "Length of cylinder";
    parameter Modelica.SIunits.Distance diameter = length / world.defaultWidthFraction "Diameter of cylinder";
    parameter Modelica.SIunits.Distance innerDiameter = 0 "Inner diameter of cylinder (0 <= innerDiameter <= Diameter)";
    parameter Modelica.SIunits.Density density = 7700 "Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800)";
    input Modelica.Mechanics.MultiBody.Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of cylinder" annotation(Dialog(colorSelector = true, enable = animation));
    input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(enable = animation));
    Modelica.SIunits.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
    parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
    parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
    parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Dialog(tab = "Advanced"));
    parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Dialog(tab = "Advanced"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
    constant Real pi = Modelica.Constants.pi;
    final parameter Modelica.SIunits.Distance radius = diameter / 2 "Radius of cylinder";
    final parameter Modelica.SIunits.Distance innerRadius = innerDiameter / 2 "Inner-Radius of cylinder";
    final parameter Modelica.SIunits.Mass mo(min = 0) = density *pi               * length * radius * radius "Mass of cylinder without hole";
    final parameter Modelica.SIunits.Mass mi(min = 0) = density *pi               * length * innerRadius * innerRadius "Mass of hole of cylinder";
    final parameter Modelica.SIunits.Inertia I22 = (mo * (length * length + 3 * radius * radius) - mi * (length * length + 3 * innerRadius * innerRadius)) / 12 "Inertia with respect to axis through center of mass, perpendicular to cylinder axis";
    final parameter Modelica.SIunits.Mass m(min = 0) = mo - mi "Mass of cylinder";
    final parameter Modelica.Mechanics.MultiBody.Frames.Orientation R = Frames.from_nxy(r, {0, 1, 0}) "Orientation object from frame_a to frame spanned by cylinder axis and axis perpendicular to cylinder axis";
    final parameter Modelica.SIunits.Position r_CM[3] = r_shape + normalizeWithAssert(lengthDirection) * length / 2 "Position vector from frame_a to center of mass, resolved in frame_a";
    final parameter Modelica.SIunits.Inertia I[3, 3] = Frames.resolveDyade1(R, diagonal({(mo * radius * radius - mi * innerRadius * innerRadius) / 2, I22, I22})) "Inertia tensor of cylinder with respect to center of mass, resolved in frame parallel to frame_a";
    Body body(
      r_CM=r_CM,
      m=m,
      I_11=I[1, 1],
      I_22=I[2, 2],
      I_33=I[3, 3],
      I_21=I[2, 1],
      I_31=I[3, 1],
      I_32=I[3, 2],
      animation=true,
      sequence_start=sequence_start,
      angles_fixed=angles_fixed,
      angles_start=angles_start,
      w_0_fixed=w_0_fixed,
      w_0_start=w_0_start,
      z_0_fixed=z_0_fixed,
      z_0_start=z_0_start,
      useQuaternions=useQuaternions,
      sequence_angleStates=sequence_angleStates,
      enforceStates=false,
      multAnimate=multAnimate) annotation (Placement(transformation(extent={{-30,
              -80},{10,-40}}, rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation frameTranslation(r = r, animation = animation, shapeType = "pipecylinder", r_shape = r_shape, lengthDirection = lengthDirection, length = length, width = diameter, height = diameter, extra = innerDiameter / diameter, color = color, specularCoefficient = specularCoefficient, widthDirection = {0, 1, 0}) annotation(Placement(transformation(extent = {{-30, -20}, {10, 20}}, rotation = 0)));
  protected
    outer Modelica.Mechanics.MultiBody.World world;
  equation
    r_0 = frame_a.r_0;
    v_0 = der(r_0);
    a_0 = der(v_0);
    assert(innerDiameter < diameter, "parameter innerDiameter is greater than parameter diameter");
    connect(frameTranslation.frame_a, frame_a) annotation(Line(points = {{-30, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5));
    connect(frameTranslation.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5));
    connect(frame_a, body.frame_a) annotation(Line(points = {{-100, 0}, {-70, 0}, {-70, -60}, {-30, -60}}, color = {95, 95, 95}, thickness = 0.5));
    annotation(Documentation(info = "<HTML>
       <p>
       <b>Rigid body</b> with <b>cylinder</b> shape.
       The mass properties of the body (mass, center of mass,
       inertia tensor) are computed
       from the cylinder data. Optionally, the cylinder may be hollow.
       The cylinder shape is by default used in the animation.
       The two connector frames <b>frame_a</b> and <b>frame_b</b>
       are always parallel to each other. Example of component
       animation (note, that
       the animation may be switched off via parameter animation = <b>false</b>):
       </p>
       
       <p>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyCylinder.png\" ALT=\"Parts.BodyCylinder\">
       </p>
       
       <p>
       A BodyCylinder component has potential states. For details of these
       states and of the \"Advanced\" menu parameters, see model
       <a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Body\">MultiBody.Parts.Body</a>.</html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Text(extent = {{-150, 90}, {150, 50}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{150, -80}, {-150, -50}}, lineColor = {0, 0, 0}, textString = "%=r"), Rectangle(extent = {{-100, 40}, {100, -40}}, lineColor = {0, 24, 48},
              fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{-87, 13}, {-51, -12}}, lineColor = {0, 0, 0}, textString = "a"), Text(extent = {{51, 12}, {87, -13}}, lineColor = {0, 0, 0}, textString = "b")}));
  end BodyCylinder;

  model Body
    "Rigid body with mass, inertia tensor and one frame connector (12 potential states)"
    import Modelica.Mechanics.MultiBody.Types;
    import Modelica.Mechanics.MultiBody.Frames;
    import Modelica.SIunits.Conversions.to_unit1;
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed at body" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
    parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder and sphere)";
    parameter Real multAnimate "scaling factor for animation";
    parameter Modelica.SIunits.Position r_CM[3](start = {0, 0, 0}) "Vector from frame_a to center of mass, resolved in frame_a";
    parameter Modelica.SIunits.Mass m(min = 0, start = 1) "Mass of rigid body";
    parameter Modelica.SIunits.Inertia I_11(min = 0) = 0.001 "(1,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_22(min = 0) = 0.001 "(2,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_33(min = 0) = 0.001 "(3,3) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_21(min = -Modelica.Constants.inf) = 0 "(2,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_31(min = -Modelica.Constants.inf) = 0 "(3,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    parameter Modelica.SIunits.Inertia I_32(min = -Modelica.Constants.inf) = 0 "(3,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
    Modelica.SIunits.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    Modelica.SIunits.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
    parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
    parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
    parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
    parameter Modelica.SIunits.Diameter sphereDiameter = 0.001 "Diameter of sphere" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.Mechanics.MultiBody.Types.Color sphereColor = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
    parameter Modelica.SIunits.Diameter cylinderDiameter = sphereDiameter / Modelica.Mechanics.MultiBody.Types.Defaults.BodyCylinderDiameterFraction "Diameter of cylinder" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.Mechanics.MultiBody.Types.Color cylinderColor = sphereColor "Color of cylinder" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
    input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
    parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Evaluate = true, Dialog(tab = "Advanced"));
    parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced"));
    parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
    final parameter Modelica.SIunits.Inertia I[3, 3] = [I_11, I_21, I_31; I_21, I_22, I_32; I_31, I_32, I_33] "inertia tensor";
    final parameter Modelica.Mechanics.MultiBody.Frames.Orientation R_start = Modelica.Mechanics.MultiBody.Frames.axesRotations(sequence_start, angles_start, zeros(3)) "Orientation object from world frame to frame_a at initial time";
    final parameter Modelica.SIunits.AngularAcceleration z_a_start[3] = Frames.resolve2(R_start, z_0_start) "Initial values of angular acceleration z_a = der(w_a), i.e., time derivative of angular velocity resolved in frame_a";
    Modelica.SIunits.AngularVelocity w_a[3](start = Frames.resolve2(R_start, w_0_start), fixed = fill(w_0_fixed, 3), each stateSelect = if enforceStates then if useQuaternions then StateSelect.always else StateSelect.never else StateSelect.avoid) "Absolute angular velocity of frame_a resolved in frame_a";
    Modelica.SIunits.AngularAcceleration z_a[3](start = Frames.resolve2(R_start, z_0_start), fixed = fill(z_0_fixed, 3)) "Absolute angular acceleration of frame_a resolved in frame_a";
    Modelica.SIunits.Acceleration g_0[3] "Gravity acceleration resolved in world frame";
  protected
    outer Modelica.Mechanics.MultiBody.World world;
    // Declarations for quaternions (dummies, if quaternions are not used)
    parameter Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation Q_start = Frames.to_Q(R_start) "Quaternion orientation object from world frame to frame_a at initial time";
    Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation Q(start = Q_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.prefer else StateSelect.never else StateSelect.avoid) "Quaternion orientation object from world frame to frame_a (dummy value, if quaternions are not used as states)";
    // Declaration for 3 angles
    parameter Modelica.SIunits.Angle phi_start[3] = if sequence_start[1] == sequence_angleStates[1] and sequence_start[2] == sequence_angleStates[2] and sequence_start[3] == sequence_angleStates[3] then angles_start else Frames.axesRotationsAngles(R_start, sequence_angleStates) "Potential angle states at initial time";
    Modelica.SIunits.Angle phi[3](start = phi_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "Dummy or 3 angles to rotate world frame into frame_a of body";
    Modelica.SIunits.AngularVelocity phi_d[3](each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "= der(phi)";
    Modelica.SIunits.AngularAcceleration phi_dd[3] "= der(phi_d)";
    // Declarations for animation
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinder(shapeType = "cylinder", color = cylinderColor, specularCoefficient = specularCoefficient, length = 100 * (if Modelica.Math.Vectors.length(r_CM) > sphereDiameter / 2 then Modelica.Math.Vectors.length(r_CM) - (if cylinderDiameter > 1.1 * sphereDiameter then sphereDiameter / 2 else 0) else 0), width = 100 * cylinderDiameter, height = 100 * cylinderDiameter, lengthDirection = to_unit1(r_CM), widthDirection = {0, 1, 0}, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
    Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape sphere(shapeType = "sphere", color = sphereColor, specularCoefficient = specularCoefficient, length = sphereDiameter, width = sphereDiameter, height = sphereDiameter, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, r_shape = r_CM - {1, 0, 0} * sphereDiameter / 2, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation and sphereDiameter > 0;
  initial equation
    if angles_fixed then
      if not Connections.isRoot(frame_a.R) then
        zeros(3) = Frames.Orientation.equalityConstraint(frame_a.R, R_start);
      elseif useQuaternions then
        zeros(3) = Frames.Quaternions.Orientation.equalityConstraint(Q, Q_start);
      else
        phi = phi_start;
      end if;
    end if;
    // Initialize positional variables
    // frame_a.R is computed somewhere else
    // frame_a.R is computed from quaternions Q
    // frame_a.R is computed from the 3 angles 'phi'
  equation
    if enforceStates then
      Connections.root(frame_a.R);
    else
      Connections.potentialRoot(frame_a.R);
    end if;
    r_0 = frame_a.r_0;
    if not Connections.isRoot(frame_a.R) then
      Q = {0, 0, 0, 1};
      phi = zeros(3);
      phi_d = zeros(3);
      phi_dd = zeros(3);
    elseif useQuaternions then
      frame_a.R = Frames.from_Q(Q, Frames.Quaternions.angularVelocity2(Q, der(Q)));
      {0} = Frames.Quaternions.orientationConstraint(Q);
      phi = zeros(3);
      phi_d = zeros(3);
      phi_dd = zeros(3);
    else
      phi_d = der(phi);
      phi_dd = der(phi_d);
      frame_a.R = Frames.axesRotations(sequence_angleStates, phi, phi_d);
      Q = {0, 0, 0, 1};
    end if;
    // Body does not have states
    // Dummies
    // Use Quaternions as states (with dynamic state selection)
    // Dummies
    // Use Cardan angles as states
    // Dummies
    // gravity acceleration at center of mass resolved in world frame
    g_0 = world.gravityAcceleration(frame_a.r_0 + Frames.resolve1(frame_a.R, r_CM));
    // translational kinematic differential equations
    v_0 = der(frame_a.r_0);
    a_0 = der(v_0);
    // rotational kinematic differential equations
    w_a = Frames.angularVelocity2(frame_a.R);
    z_a = der(w_a);
    /* Newton/Euler equations with respect to center of mass
                                    a_CM = a_a + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM));
                                    f_CM = m*(a_CM - g_a);
                                    t_CM = I*z_a + cross(w_a, I*w_a);
                               frame_a.f = f_CM
                               frame_a.t = t_CM + cross(r_CM, f_CM);
                            Inserting the first three equations in the last two results in:
                          */
    frame_a.f = m * (Frames.resolve2(frame_a.R, a_0 - g_0) + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM)));
    frame_a.t = I * z_a + cross(w_a, I * w_a) + cross(r_CM, frame_a.f);
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 30}, {-3, -31}}, lineColor = {0, 24, 48},
              fillPattern =                                                                                                                                                                           FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{150, -100}, {-150, -70}}, lineColor = {0, 0, 0}, textString = "m=%m"), Text(extent = {{-150, 110}, {150, 70}}, textString = "%name", lineColor = {0, 0, 255}), Ellipse(extent = {{-20, 60}, {100, -60}}, lineColor = {0, 24, 48},
              fillPattern =                                                                                                                                                                                                        FillPattern.Sphere, fillColor = {0, 127, 255})}), Documentation(info = "<HTML>
       <p>
       <b>Rigid body</b> with mass and inertia tensor.
       All parameter vectors have to be resolved in frame_a.
       The <b>inertia tensor</b> has to be defined with respect to a
       coordinate system that is parallel to frame_a with the
       origin at the center of mass of the body.
       </p>
       <p>
       By default, this component is visualized by a <b>cylinder</b> located
       between frame_a and the center of mass and by a <b>sphere</b> that has
       its center at the center of mass. If the cylinder length is smaller as
       the radius of the sphere, e.g., since frame_a is located at the
       center of mass, the cylinder is not displayed. Note, that
       the animation may be switched off via parameter animation = <b>false</b>.
       </p>
       <p>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Body.png\" ALT=\"Parts.Body\">
       </p>
       
       <p>
       <b>States of Body Components</b>
       </p>
       <p>
       Every body has potential states. If possible a tool will select
       the states of joints and not the states of bodies because this is
       usually the most efficient choice. In this case the position, orientation,
       velocity and angular velocity of frame_a of the body will be computed
       by the component that is connected to frame_a. However, if a body is moving
       freely in space, variables of the body have to be used as states. The potential
       states of the body are:
       </p>
       <ul>
       <li> The <b>position vector</b> frame_a.r_0 from the origin of the
            world frame to the origin of frame_a of the body, resolved in
            the world frame and the <b>absolute velocity</b> v_0 of the origin of
            frame_a, resolved in the world frame (= der(frame_a.r_0)).
       </li>
       <li> If parameter <b>useQuaternions</b> in the \"Advanced\" menu
            is <b>true</b> (this is the default), then <b>4 quaternions</b>
            are potential states. Additionally, the coordinates of the
            absolute angular velocity vector of the
            body are 3 potential states.<br>
            If <b>useQuaternions</b> in the \"Advanced\" menu
            is <b>false</b>, then <b>3 angles</b> and the derivatives of
            these angles are potential states. The orientation of frame_a
            is computed by rotating the world frame along the axes defined
            in parameter vector \"sequence_angleStates\" (default = {1,2,3}, i.e.,
            the Cardan angle sequence) around the angles used as potential states.
            For example, the default is to rotate the x-axis of the world frame
            around angles[1], the new y-axis around angles[2] and the new z-axis
            around angles[3], arriving at frame_a.
        </li>
       </ul>
       <p>
       The quaternions have the slight disadvantage that there is a
       non-linear constraint equation between the 4 quaternions.
       Therefore, at least one non-linear equation has to be solved
       during simulation. A tool might, however, analytically solve this
       simple constraint equation. Using the 3 angles as states has the
       disadvantage that there is a singular configuration in which a
       division by zero will occur. If it is possible to determine in advance
       for an application class that this singular configuration is outside
       of the operating region, the 3 angles might be used as potential
       states by setting <b>useQuaternions</b> = <b>false</b>.
       </p>
       <p>
       In text books about 3-dimensional mechanics often 3 angles and the
       angular velocity are used as states. This is not the case here, since
       3 angles and their derivatives are used as potential states
       (if useQuaternions = false). The reason
       is that for real-time simulation the discretization formula of the
       integrator might be \"inlined\" and solved together with the body equations.
       By appropriate symbolic transformation the performance is
       drastically increased if angles and their
       derivatives are used as states, instead of angles and the angular
       velocity.
       </p>
       <p>
       Whether or not variables of the body are used as states is usually
       automatically selected by the Modelica translator. If parameter
       <b>enforceStates</b> is set to <b>true</b> in the \"Advanced\" menu,
       then body variables are forced to be used as states according
       to the setting of parameters \"useQuaternions\" and
       \"sequence_angleStates\".
       </p>
       </HTML>"));
  end Body;

  model RealFingerStructure
    PowerGrab.Components.RealBoneJoint boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = true, closedLoop = mDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {5.256, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.RealBoneJoint boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, closedLoop = fDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin = {120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin = {120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin = {80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin = {40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin = {0, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin = {-40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin = {-80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin = {-120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin = {80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin = {40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin = {0, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin = {-40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin = {-80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin = {-120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput thetaCDistal if cDistalRegularClosed annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaMDistal if mDistalClosed annotation(Placement(visible = true, transformation(origin = {25.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput thetaFDistal if fDistalClosed annotation(Placement(visible = true, transformation(origin = {99.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-147.926, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    parameter Modelica.SIunits.Position r_IboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneFDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneFDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneFDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneFDistal;
    parameter Modelica.SIunits.Position r_IboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneMDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneMDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneMDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneMDistal;
    parameter Modelica.SIunits.Position r_IboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_IboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterIboneCDistal = 0.02;
    parameter Modelica.SIunits.Position r_OboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
    parameter Modelica.SIunits.Position r_shape_OboneCDistal[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position diameterOboneCDistal = 0.02;
    parameter Modelica.SIunits.Angle phi_0_boneCDistal;
    parameter Modelica.SIunits.Position baseAnterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Position basePosterior[3] = {0, 0, 0};
    parameter Modelica.SIunits.Angle phi_0_doubleJoint;
    parameter Boolean fDistalClosed = true "If true, the far distal phalange will be in a constrained mode";
    parameter Boolean mDistalClosed = true "If true, the middle distal phalange will be in a constrained mode";
    parameter Boolean cDistalRegularClosed = true "If true, the close distal phalange's regular joint will be in a constrained mode";
    parameter Boolean cDistalSideClosed = true "If true, the close distal phalange's side joint will be in a constrained mode";
    Modelica.Blocks.Interfaces.RealInput loadForce if dirTorque annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
    PowerGrab.Components.FingerLoad fingerLoad(r2 = r_OboneMDistal[1], r3 = r_OboneCDistal[1], r1 = r_OboneFDistal[1] / 2) if dirTorque annotation(Placement(visible = true, transformation(origin = {-52.096, 71.024}, extent = {{-13.29, -13.29}, {13.29, 13.29}}, rotation = 0)));
    parameter Boolean dirTorque = true "True if direct torque upon joint is desired";
    Modelica.Blocks.Interfaces.RealInput sideTheta if cDistalSideClosed "secondary revolute joint - sideways swaying" annotation(Placement(visible = true, transformation(origin = {-20, -32.963}, extent = {{-12.963, -12.963}, {12.963, 12.963}}, rotation = 0), iconTransformation(origin = {-27.35, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    PowerGrab.Components.RealBoneDoubleJoint boneCDistal(phi_0_doubleJoint = phi_0_doubleJoint, closedDoubleJoint = cDistalSideClosed, closedRegularJoint = cDistalRegularClosed, torD = dirTorque, r_IFingerBone = r_IboneCDistal, r_shape_IFingerBone = r_shape_IboneCDistal, diameterIFingerBone = diameterIboneCDistal, r_OFingerBone = r_OboneCDistal, r_shape_OFingerBone = r_shape_OboneCDistal, diameterOFingerBone = diameterOboneCDistal, phi_0_regularJoint = phi_0_boneCDistal) annotation(Placement(visible = true, transformation(origin = {-86.959, -2.646}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin = {-123.296, 21.696}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin = {-123.175, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(sideTheta, boneCDistal.doubleJointControl) annotation(Line(visible = true, origin = {-53.457, -5.883}, points={{33.457,
            -27.08},{17.494,-27.08},{17.494,20.462},{-34.2425,20.462},{-34.2425,
            14.237}},                                                                                                                                                                                                     color = {0, 0, 127}));
    connect(sidePosterior, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.437, -1.291}, points={{-25.738,
            -18.709},{-4.288,-18.709},{-4.288,13.87},{17.1572,13.87},{17.1572,
            9.6784}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(sideAnterior, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.197, 17.302}, points={{-26.099,
            4.394},{13.0488,4.394},{13.0488,-8.7877}},                                                                                                                                       color = {0, 0, 127}));
    connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-56.449, -1.323}, points={{51.705,
            1.323},{-15.717,1.323},{-15.717,-1.323},{-20.2708,-1.323}}));
    connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.186, -42.431}, points = {{-24.373, 30.785}, {12.186, 30.785}, {12.186, -61.569}}));
    connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.26, 38.903}, points={{
            -24.5186,-32.549},{12.26,-32.549},{12.26,65.097}}));
    connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-58.959, 34.732}, points={{18.6164,
            33.3524},{23.153,33.3524},{23.153,-20.153},{-32.4609,-20.153},{
            -32.4609,-26.3981}},                                                                                                                                                                                           color = {0, 0, 127}));
    connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-84.545, 20.409}, points = {{20.827, 6.027}, {-10.414, 6.027}, {-10.414, -12.055}}, color = {0, 0, 127}));
    connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-91.992, -59.458}, points = {{-4.967, 47.812}, {-9.507999999999999, 47.812}, {-9.507999999999999, -25.542}, {11.992, -25.542}, {11.992, -44.542}}));
    connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-91.992, 57.342}, points={{-4.967,
            -50.988},{-9.508,-50.988},{-9.508,27.658},{11.992,27.658},{11.992,
            46.658}},                                                                                                                                                                                                        color = {95, 95, 95}));
    connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.477, -22.198}, points = {{-13.471, -19.552}, {2.977, -19.552}, {2.977, 19.552}, {7.518, 19.552}}));
    connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.46, 19.552}, points = {{-13.422, 22.198}, {2.96, 22.198}, {2.96, -22.198}, {7.501, -22.198}}));
    connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-111.971, -1.323}, points = {{-35.955, 1.323}, {10.471, 1.323}, {10.471, -1.323}, {15.012, -1.323}}));
    connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-10.011, 46.846}, points={{
            -30.5344,25.9226},{15.267,25.9226},{15.267,-51.846}},                                                                                                                   color = {0, 0, 127}));
    connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {35.073, 36.21}, points={{
            -75.6979,41.2107},{20.386,41.2107},{20.386,-41.21},{34.927,-41.21}},                                                                                                                            color = {0, 0, 127}));
    connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-51.343, 28.568}, points={{47.099,
            -34.568},{-17.043,-34.568},{-17.043,34.5676},{-13.0134,34.5676}},                                                                                                                     color = {0, 0, 127}));
    connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-35.112, 32.959}, points={{95.612,
            -38.959},{-33.274,-38.959},{-33.274,38.9581},{-29.0658,38.9581}},                                                                                                                                color = {0, 0, 127}));
    connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points={{-25.963,
            -7.71},{7.251,-7.71},{7.251,7.71004},{11.4592,7.71004}},                                                                                                                       color = {0, 0, 127}));
    connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
    connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.628, 71}, points = {{2.628, -61}, {2.628, 14}, {-2.628, 14}, {-2.628, 33}}));
    connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.786, 40.381}, points={{-16.429,
            -31.8096},{8.214,-31.8096},{8.214,63.619}}));
    connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {75, 71}, points = {{-5, -61}, {-5, 14}, {5, 14}, {5, 33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {106.7, 40.381}, points={{-26.599,
            -31.8096},{13.3,-31.8096},{13.3,63.619}}));
    connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.628, -71}, points = {{2.628, 61}, {2.628, -14}, {-2.628, -14}, {-2.628, -33}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.752, -39.6}, points = {{-16.496, 32.2}, {8.247999999999999, 32.2}, {8.247999999999999, -64.40000000000001}}));
    connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {75, -71}, points = {{-5, 61}, {-5, -14}, {5, -14}, {5, -33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {106.667, -39.6}, points = {{-26.667, 32.2}, {13.333, 32.2}, {13.333, -64.40000000000001}}));
    connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {84.79600000000001, 14.736}, points={{14.803,
            11.737},{-0.003,11.737},{-0.003,-11.736},{-14.796,-11.736}},                                                                                                                                        color = {0, 0, 127}));
    connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {15.236, 13.27}, points={{9.979,
            12.784},{9.979,-1.257},{-9.98,-1.257},{-9.98,-10.27}},                                                                                                                                                                             color = {0, 0, 127}));
    connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {46.569, 0.238}, points={{-31.212,
            0.2382},{8.89,0.2382},{8.89,-0.238},{13.431,-0.238}}));
    annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
  end RealFingerStructure;

  model RealTestFinger
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 20, maxMDistal = 20, maxCDistal = 20) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.RealFingerStructure
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
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 50, maxMDistal = 20, maxCDistal = 20) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
    parameter Boolean contact = true;
    parameter Boolean fDistalClosed = false;
    parameter Boolean mDistalClosed = false;
    parameter Boolean cDistalRegularClosed = false;
    parameter Boolean cDistalSideClosed = false;
    parameter Modelica.SIunits.Length fingerLength[4] = {0.07000000000000001, 0.064, 0.04, 0.03} "Length of bone from Palm, Proximal, Middle, and Distal";
    parameter Modelica.SIunits.Distance threshold = 0.0275 "radius of contact sphere";
    parameter Modelica.SIunits.TranslationalSpringConstant k = 100 "Stiffness of contact spring";
    parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection3(boneLength = fingerLength[1], dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta) if contact annotation(Placement(visible = true, transformation(origin = {-125, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Real mu = 0;
    parameter Modelica.SIunits.Length delta = 0.01;
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.015, 0}) if contact annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection(
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
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection1(
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
    PowerGrab.Components.PrismDampingOC objectPrismDampConnection2(
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

  model WholeFingerArray
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    PowerGrabStructure.OldComponents.OldComponents.FingerMultipleRevoluteArray
      fingerArray(
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
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
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
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end OldComponents;
