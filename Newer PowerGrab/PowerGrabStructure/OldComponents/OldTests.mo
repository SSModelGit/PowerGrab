within PowerGrabStructure.OldComponents;
package OldTests

  model MuscleComponentTesting
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-128.385, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(r = {0, 0, 0}, angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-95, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.5, 0.8, 0}) annotation(Placement(visible = true, transformation(origin = {-16.744, -17.273}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(m = 1, r_CM = {0.001, 0, 0},
      r_0(                                                                    fixed =     false))
                                                                                                 annotation(Placement(visible = true, transformation(origin = {135, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.5, -0.8, 0}) annotation(Placement(visible = true, transformation(origin = {-16.771, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PhysicalMuscle physicalMuscle(d_front = 20, c_posterior = 50, d_posterior = 100, freeLength_posterior = 0) annotation(Placement(visible = true, transformation(origin = {35, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp(height = 500, duration = 90) annotation(Placement(visible = true, transformation(origin = {-60, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(ramp.y, physicalMuscle.kNominal) annotation(Line(visible = true, origin = {5.5, 17.5}, points = {{-54.5, 17.5}, {16.5, 17.5}, {16.5, -17.5}, {21.5, -17.5}}, color = {0, 0, 127}));
    connect(physicalMuscle.frame_a_P, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {3.043, -12.436}, points = {{23.135, 4.836}, {-6.674, 4.836}, {-6.674, -4.837}, {-9.787000000000001, -4.837}}));
    connect(physicalMuscle.frame_b_p, body.frame_a) annotation(Line(visible = true, origin = {103.244, -4}, points = {{-59.244, -4}, {18.744, -4}, {18.744, 4}, {21.756, 4}}));
    connect(physicalMuscle.frame_b1, body.frame_a) annotation(Line(visible = true, origin = {103.244, 3.8}, points = {{-59.244, 3.8}, {18.744, 3.8}, {18.744, -3.8}, {21.756, -3.8}}));
    connect(fixedTranslation1.frame_b, physicalMuscle.frame_a1) annotation(Line(visible = true, origin = {15.807, 11.2}, points = {{-22.578, 3.8}, {6.193, 3.8}, {6.193, -3.8}, {10.193, -3.8}}));
    connect(fixedRotation.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {-42.828, 7.5}, points = {{-42.172, -7.5}, {13.057, -7.5}, {13.057, 7.5}, {16.057, 7.5}}, smooth = Smooth.Bezier, color = {95, 95, 95}));
    connect(fixedRotation.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-42.808, -8.635999999999999}, points = {{-42.192, 8.635999999999999}, {13.064, 8.635999999999999}, {13.064, -8.635999999999999}, {16.064, -8.635999999999999}}, smooth = Smooth.Bezier, color = {95, 95, 95}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-111.693, 0}, points = {{-6.693, 0}, {6.693, 0}}, color = {95, 95, 95}));
    annotation(experiment(StopTime = 200.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end MuscleComponentTesting;

  model MuscleTissueTest
    Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 0.5) annotation(Placement(visible = true, transformation(origin = {-90, 62.037}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.MuscleTissue2 muscleTissue2(K_m = 1, muscleLengthNom = 0.5) annotation(Placement(visible = true, transformation(origin = {12.306, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-88.361, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const.y, muscleTissue2.u1) annotation(Line(visible = true, origin = {-18.772, -3.373}, points = {{-58.589, -6.627}, {18.078, -6.627}, {18.078, 6.627}, {22.434, 6.627}}, color = {0, 0, 127}));
    connect(ramp.y, muscleTissue2.u) annotation(Line(visible = true, origin = {-19.209, 39.728}, points = {{-59.791, 22.309}, {18.515, 22.309}, {18.515, -22.309}, {22.761, -22.309}}, color = {0, 0, 127}));
    annotation(experiment(StopTime = 15.0));
  end MuscleTissueTest;

  model PrismaticRestrictedTest
    inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-115, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute(phi(
                                                          start =     1.57, fixed =     true))
                                                                                              annotation(Placement(visible = true, transformation(origin = {-80, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(density = 1100, r_shape = {0.5, 0, 0}, r = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-50, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Spring spring(c = 50) annotation(Placement(visible = true, transformation(origin = {-61.736, 13.053}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {-20, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 0.5, c_upper = 2000, d_upper = 1000, c_bottom = 2000, d_bottom = 1000) annotation(Placement(visible = true, transformation(origin = {7.056, -27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(m = 1, r_CM = {0, 0.005, 0}, r = {0, 0.01, 0},
      r_0(                                                                                                fixed =     false))
                                                                                                                             annotation(Placement(visible = true, transformation(origin = {12.7, -5}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  equation
    connect(bodyShape.frame_b, spring.frame_b) annotation(Line(visible = true, origin = {-35.121, 4.026}, points = {{37.821, -9.026}, {-10.603, -9.026}, {-10.603, 9.026}, {-16.615, 9.026}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {21.147, -15.544}, points = {{-6.684, -10.544}, {2.566, -10.544}, {2.566, 10.544}, {1.553, 10.544}}));
    connect(revolute1.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-5.729, -25.544}, points = {{-4.271, 0.544}, {-0.216, 0.544}, {-0.216, -0.544}, {4.703, -0.544}}));
    connect(bodyBox.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-35, -25}, points = {{-5, 0}, {5, 0}}));
    connect(fixedTranslation.frame_b, spring.frame_a) annotation(Line(visible = true, origin = {-73.91200000000001, 18.702}, points = {{-1.088, 11.298}, {-1.088, -5.649}, {2.176, -5.649}}));
    connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-99, 15}, points = {{-6, -15}, {1, -15}, {1, 15}, {4, 15}}));
    connect(revolute.frame_b, bodyBox.frame_a) annotation(Line(visible = true, origin = {-65, -25}, points = {{-5, 0}, {5, 0}}));
    connect(world.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {-95.256, -12.5}, points = {{-9.744, 12.5}, {2.244, 12.5}, {2.244, -12.5}, {5.256, -12.5}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end PrismaticRestrictedTest;

  model TableUseTest
    Modelica.Blocks.Tables.CombiTable1D combiTable1D(tableOnFile = false, table = [0, 1; 1, 1], smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp ramp(height = 150, duration = 90) annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(ramp.y, combiTable1D.u[1]) annotation(Line(visible = true, origin = {-75.5, 0}, points = {{-23.5, 0}, {23.5, 0}}, color = {0, 0, 127}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TableUseTest;

  model TestHingeMuscleJointComponent
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity, g = 0) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-1, 3, 0}, animation = false) annotation(Placement(visible = true, transformation(origin = {-77.215, 51.837}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = -1) annotation(Placement(visible = true, transformation(origin = {-70, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {-55, -1.852}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {0, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {-55, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain(k = 1) annotation(Placement(visible = true, transformation(origin = {-30, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {1, 3, 0}) annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 2, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {70, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0.01, 0}, r_CM = {0, 0.005, 0}, m = 1,
      r_0(                                                                                                fixed =     true, start =     {0, 1, 0}))
                                                                                                                                                   annotation(Placement(visible = true, transformation(origin = {101.6, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {0, 58.208}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(force2.flange_a, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-8.800000000000001, 50.813}, points = {{-1.2, 7.395}, {-2.2, 7.395}, {-2.2, -4.488}, {2.8, -4.488}, {2.8, -5.813}}, color = {0, 127, 0}));
    connect(force2.flange_b, lineForceWithMass1.flange_b) annotation(Line(visible = true, origin = {8.800000000000001, 50.813}, points = {{1.2, 7.395}, {2.2, 7.395}, {2.2, -4.488}, {-2.8, -4.488}, {-2.8, -5.813}}, color = {0, 127, 0}));
    connect(gain.y, force2.f) annotation(Line(visible = true, origin = {-6.333, 77.40300000000001}, points = {{-12.667, 7.597}, {6.333, 7.597}, {6.333, -15.194}}, color = {0, 0, 127}));
    connect(lineForceWithMass1.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {87.756, 20}, points = {{-77.756, 15}, {26.956, 15}, {26.956, -15}, {23.844, -15}}));
    connect(lineForceWithMass.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {36.342, -1.617}, points = {{-81.342, -0.235}, {-75.32899999999999, -0.235}, {-75.32899999999999, -6.383}, {78.371, -6.383}, {78.371, 6.617}, {75.258, 6.617}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {86.54600000000001, 5.714}, points = {{-9.138, 0.714}, {2.042, 0.714}, {2.042, -0.714}, {5.054, -0.714}}));
    connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {13.98, 3.214}, points = {{-133.98, -3.214}, {43.02, -3.214}, {43.02, 3.214}, {47.939, 3.214}}));
    connect(fixedTranslation1.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-105, 0}, points = {{15, -0}, {-15, 0}}));
    connect(fixedTranslation1.frame_b, lineForceWithMass.frame_a) annotation(Line(visible = true, origin = {-68.333, -1.235}, points = {{-1.667, 1.235}, {-1.667, -0.617}, {3.333, -0.617}}));
    connect(const.y, gain.u) annotation(Line(visible = true, origin = {-50.5, 85}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(fixedTranslation.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {-27.31, 43.419}, points = {{-39.905, 8.419}, {11.297, 8.419}, {11.297, -8.419}, {17.31, -8.419}}));
    connect(const.y, force2_1.f) annotation(Line(visible = true, origin = {-56.333, 64.667}, points = {{-2.667, 20.333}, {1.333, 20.333}, {1.333, -40.667}}, color = {0, 0, 127}));
    connect(force2_1.flange_b, lineForceWithMass.flange_b) annotation(Line(visible = true, origin = {-46.333, 12.099}, points = {{1.333, 7.901}, {1.333, -3.951}, {-2.667, -3.951}}, color = {0, 127, 0}));
    connect(force2_1.flange_a, lineForceWithMass.flange_a) annotation(Line(visible = true, origin = {-63.667, 12.099}, points = {{-1.333, 7.901}, {-1.333, -3.951}, {2.667, -3.951}}, color = {0, 127, 0}));
    connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-106.911, 25.919}, points = {{-13.089, -25.919}, {6.696, -25.919}, {6.696, 25.919}, {19.696, 25.919}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestHingeMuscleJointComponent;

  model TestHingeMuscleJointLineForceWMBSC
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(
      r_0(                                                 start =     {0, 0.5, 0},                                                  fixed =     true),
                                                                                    r = {0, 0.001, 0}, r_CM = {0, 0.0005, 0}, m = 1)                   annotation(Placement(visible = true, transformation(origin = {36.777, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = -1) annotation(Placement(visible = true, transformation(origin = {-50, 58.094}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {65, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {43.771, 47.619}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {-7.673, 37.306}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-8.202, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(lineForceWithMass.flange_b, force2.flange_b) annotation(Line(visible = true, origin = {0.8100000000000001, 52.914}, points = {{-2.482, -5.608}, {-2.482, -4.282}, {1.988, -4.282}, {1.988, 7.086}, {0.988, 7.086}}, color = {0, 127, 0}));
    connect(lineForceWithMass.flange_a, force2.flange_a) annotation(Line(visible = true, origin = {-16.79, 52.914}, points = {{3.117, -5.608}, {3.117, -4.282}, {-2.412, -4.282}, {-2.412, 7.086}, {-1.412, 7.086}}, color = {0, 127, 0}));
    connect(const1.y, force2.f) annotation(Line(visible = true, origin = {-22.402, 61.047}, points = {{-16.598, -2.953}, {1.199, -2.953}, {1.199, 2.953}, {14.199, 2.953}}, color = {0, 0, 127}));
    connect(lineForceWithMass.frame_b, frame_a) annotation(Line(visible = true, origin = {39.832, 43.653}, points = {{-37.505, -6.347}, {6.168, -6.347}, {6.168, 6.347}, {25.168, 6.347}}));
    connect(lineForceWithMass.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-40.356, 18.653}, points = {{22.683, 18.653}, {-6.519, 18.653}, {-6.519, -18.653}, {-9.644, -18.653}}));
    connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {58.926, 16.667}, points = {{6.074, 33.333}, {6.074, -16.667}, {-12.149, -16.667}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {20.428, -0.33}, points = {{-13.021, -0.33}, {3.336, -0.33}, {3.336, 0.33}, {6.349, 0.33}}));
    connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestHingeMuscleJointLineForceWMBSC;

  model TestHingeMuscleJointLineForceWMTwoBSC
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(
      r_0(                                                 start =     {0, 0.5, 0},                                                  fixed =     true),
                                                                                    r = {0, 0.001, 0}, r_CM = {0, 0.0005, 0}, m = 1)                   annotation(Placement(visible = true, transformation(origin = {36.777, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = -1) annotation(Placement(visible = true, transformation(origin = {-50, 58.094}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {65, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {43.771, 47.619}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass annotation(Placement(visible = true, transformation(origin = {-7.673, 37.306}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2 annotation(Placement(visible = true, transformation(origin = {-8.202, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.LineForceWithMass lineForceWithMass1 annotation(Placement(visible = true, transformation(origin = {0, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Force2 force2_1 annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {66.94, -23.019}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {45.077, -21.923}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 2, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -32.015}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixedTranslation.frame_b, lineForceWithMass1.frame_a) annotation(Line(visible = true, origin = {-15.506, -31.007}, points = {{-4.494, -1.007}, {-0.506, -1.007}, {-0.506, 1.007}, {5.506, 1.007}}));
    connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-44, -16.007}, points = {{-6, 16.007}, {1, 16.007}, {1, -16.007}, {4, -16.007}}));
    connect(frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {60.219, -7.673}, points = {{6.721, -15.346}, {6.721, 7.673}, {-13.442, 7.673}}));
    connect(lineForceWithMass1.frame_b, frame_b) annotation(Line(visible = true, origin = {43.205, -26.509}, points = {{-33.205, -3.491}, {4.735, -3.491}, {4.735, 3.491}, {23.735, 3.491}}));
    connect(force2_1.f, const1.y) annotation(Line(visible = true, origin = {-26.154, 2.047}, points = {{26.154, -56.047}, {-6.654, -56.047}, {-6.654, 56.047}, {-12.846, 56.047}}, color = {0, 0, 127}));
    connect(lineForceWithMass1.flange_b, force2_1.flange_b) annotation(Line(visible = true, origin = {7.333, -46.667}, points = {{-1.333, 6.667}, {-1.333, -3.333}, {2.667, -3.333}}, color = {0, 127, 0}));
    connect(force2_1.flange_a, lineForceWithMass1.flange_a) annotation(Line(visible = true, origin = {-8.667, -43.333}, points = {{-1.333, -6.667}, {-1.333, 3.333}, {2.667, 3.333}}, color = {0, 127, 0}));
    connect(lineForceWithMass.flange_b, force2.flange_b) annotation(Line(visible = true, origin = {0.8100000000000001, 52.914}, points = {{-2.482, -5.608}, {-2.482, -4.282}, {1.988, -4.282}, {1.988, 7.086}, {0.988, 7.086}}, color = {0, 127, 0}));
    connect(lineForceWithMass.flange_a, force2.flange_a) annotation(Line(visible = true, origin = {-16.79, 52.914}, points = {{3.117, -5.608}, {3.117, -4.282}, {-2.412, -4.282}, {-2.412, 7.086}, {-1.412, 7.086}}, color = {0, 127, 0}));
    connect(const1.y, force2.f) annotation(Line(visible = true, origin = {-22.402, 61.047}, points = {{-16.598, -2.953}, {1.199, -2.953}, {1.199, 2.953}, {14.199, 2.953}}, color = {0, 0, 127}));
    connect(lineForceWithMass.frame_b, frame_a) annotation(Line(visible = true, origin = {39.832, 43.653}, points = {{-37.505, -6.347}, {6.168, -6.347}, {6.168, 6.347}, {25.168, 6.347}}));
    connect(lineForceWithMass.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-40.356, 18.653}, points = {{22.683, 18.653}, {-6.519, 18.653}, {-6.519, -18.653}, {-9.644, -18.653}}));
    connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {58.926, 16.667}, points = {{6.074, 33.333}, {6.074, -16.667}, {-12.149, -16.667}}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {20.428, -0.33}, points = {{-13.021, -0.33}, {3.336, -0.33}, {3.336, 0.33}, {6.349, 0.33}}));
    connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestHingeMuscleJointLineForceWMTwoBSC;

  model TestHingeMuscleJointUpwrdsBsc
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-100, 65}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-67.34, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {100, 65}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {73.05, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-0, -74}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -26.206}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0, 0, 0}, r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                                         start =     {0, 0.5, 0}))
                                                                                                                            annotation(Placement(visible = true, transformation(origin = {-0, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-105, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force1 annotation(Placement(visible = true, transformation(origin = {110, 21.519}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, c_upper = 2000, d_upper = 200, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {1, 0, 0}, angle = 0) annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-105, -31.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-82.55, -2.117}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {67.381, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-40, 85}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {31.75, 87.842}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -72.319}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const1.y, force.force[3]) annotation(Line(visible = true, origin = {-17.55, 60.798}, points = {{60.3, 27.043}, {63.3, 27.043}, {63.3, -12.644}, {-93.45, -12.644}, {-93.45, -28.798}}, color = {0, 0, 127}));
    connect(const1.y, force.force[1]) annotation(Line(visible = true, origin = {-17.55, 55.537}, points = {{60.3, 32.305}, {63.3, 32.305}, {63.3, -20.537}, {-93.45, -20.537}, {-93.45, -23.537}}, color = {0, 0, 127}));
    connect(const1.y, force1.force[3]) annotation(Line(visible = true, origin = {60.324, 60.68}, points = {{-17.574, 27.161}, {-13.051, 27.161}, {-13.051, -27.161}, {43.676, -27.161}}, color = {0, 0, 127}));
    connect(const1.y, force1.force[2]) annotation(Line(visible = true, origin = {70.02500000000001, 60.68}, points = {{-27.275, 27.161}, {-3.35, 27.161}, {-3.35, -27.161}, {33.975, -27.161}}, color = {0, 0, 127}));
    connect(const.y, force.force[2]) annotation(Line(visible = true, origin = {-60.6, 54.4}, points = {{31.6, 30.6}, {34.6, 30.6}, {34.6, -19.4}, {-50.4, -19.4}, {-50.4, -22.4}}, color = {0, 0, 127}));
    connect(fixedTranslation2.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-79.688, -52.035}, points = {{39.688, -20.285}, {-12.188, -20.285}, {-12.188, 20.285}, {-15.312, 20.285}}));
    connect(fixedTranslation2.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-13.5, -73.16}, points = {{-6.5, 0.84}, {-3.5, 0.84}, {-3.5, -0.84}, {13.5, -0.84}}));
    connect(const1.y, force1.force[1]) annotation(Line(visible = true, origin = {83.583, 69.73399999999999}, points = {{-40.833, 18.108}, {20.417, 18.108}, {20.417, -36.215}}, color = {0, 0, 127}));
    connect(fixedTranslation.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-76.66200000000001, -16.933}, points = {{4.112, 14.817}, {7.112, 14.817}, {7.112, -14.817}, {-18.338, -14.817}}));
    connect(fixedTranslation.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-109.888, 8.942}, points = {{17.338, -11.058}, {-6.112, -11.058}, {-6.112, 11.058}, {-5.112, 11.058}}));
    connect(world.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {17.785, -5.875}, points = {{-112.785, -25.875}, {36.595, -25.875}, {36.595, 25.875}, {39.595, 25.875}}, color = {95, 95, 95}));
    connect(fixedTranslation1.frame_b, force1.frame_a) annotation(Line(visible = true, origin = {92.845, 20.759}, points = {{-15.465, -0.759}, {4.155, -0.759}, {4.155, 0.759}, {7.155, 0.759}}));
    connect(fixedRotation.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-0.714, -26.02}, points = {{0.714, -13.98}, {0.714, 3.02}, {-0.714, 3.02}, {-0.714, 7.939}}));
    connect(frame_resolve, fixedRotation.frame_a) annotation(Line(visible = true, origin = {0, -67}, points = {{0, -7}, {0, 7}}, color = {95, 95, 95}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-7.776, 26.681}, points = {{6.348, -29.274}, {6.348, -23.681}, {-5.236, -23.681}, {-5.236, 38.319}, {-2.224, 38.319}}, color = {95, 95, 95}));
    connect(force1.frame_b, frame_b) annotation(Line(visible = true, origin = {113.2, 40.008}, points = {{6.8, -18.488}, {9.800000000000001, -18.488}, {9.800000000000001, 5.992}, {-13.2, 5.992}, {-13.2, 24.992}}));
    connect(force.frame_b, frame_a) annotation(Line(visible = true, origin = {-95.8, 39.4}, points = {{0.8, -19.4}, {3.8, -19.4}, {3.8, 6.6}, {-4.2, 6.6}, {-4.2, 25.6}}));
    connect(bodyShape.frame_b, frame_b) annotation(Line(visible = true, origin = {55, 65}, points = {{-45, 0}, {45, 0}}));
    connect(frame_a, bodyShape.frame_a) annotation(Line(visible = true, origin = {-55, 65}, points = {{-45, 0}, {45, 0}}));
    abs(frame_a.f) = abs(frame_b.f);
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestHingeMuscleJointUpwrdsBsc;

  model TestHingeMuscleJointWorldForce
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(
      r_0(                                                 start =     {0, 0.5, 0},                                         fixed =     true),
                                                                                    r = {0, 0, 0}, r_CM = {0, 0, 0}, m = 1)                   annotation(Placement(visible = true, transformation(origin = {36.777, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.WorldForce force annotation(Placement(visible = true, transformation(origin = {3.175, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 2) annotation(Placement(visible = true, transformation(origin = {-50, 62.442}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {-5, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 0) annotation(Placement(visible = true, transformation(origin = {-50, 32.544}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {65, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {43.771, 47.619}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  equation
    connect(frame_a, bodyShape.frame_b) annotation(Line(visible = true, origin = {58.926, 16.667}, points = {{6.074, 33.333}, {6.074, -16.667}, {-12.149, -16.667}}));
    connect(force.frame_b, frame_a) annotation(Line(visible = true, origin = {42.544, 37.5}, points = {{-29.369, -12.5}, {3.456, -12.5}, {3.456, 12.5}, {22.456, 12.5}}, color = {95, 95, 95}));
    connect(const2.y, force.force[3]) annotation(Line(visible = true, origin = {-17.869, 28.772}, points = {{-21.131, 3.772}, {6.044, 3.772}, {6.044, -3.772}, {9.044, -3.772}}, color = {0, 0, 127}));
    connect(const.y, force.force[2]) annotation(Line(visible = true, origin = {-17.869, 43.721}, points = {{-21.131, 18.721}, {6.044, 18.721}, {6.044, -18.721}, {9.044, -18.721}}, color = {0, 0, 127}));
    connect(const1.y, force.force[1]) annotation(Line(visible = true, origin = {-1.413, 50.663}, points = {{7.413, 19.337}, {10.413, 19.337}, {10.413, 6.325}, {-10.413, 6.325}, {-10.413, -25.663}, {-7.413, -25.663}}, color = {0, 0, 127}));
    connect(prismaticRestricted.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {20.428, -0.33}, points = {{-13.021, -0.33}, {3.336, -0.33}, {3.336, 0.33}, {6.349, 0.33}}));
    connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestHingeMuscleJointWorldForce;

  model TestPrismaticRestrictedComponent
    PowerGrab.Components.PrismaticRestricted prismaticRestricted(l_stop = 1, d_upper = 200, c_upper = 2000, c_bottom = 2000, d_bottom = 200) annotation(Placement(visible = true, transformation(origin = {0, -2.089}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                start =     {0, 0.5, 0}, fixed =     true))
                                                                                                                     annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = -9.81) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(world.frame_b, prismaticRestricted.frame_a) annotation(Line(visible = true, origin = {-21.02, -0.33}, points = {{-28.98, 0.33}, {8.02, 0.33}, {8.02, -0.33}, {12.939, -0.33}}));
    connect(prismaticRestricted.frame_b, body.frame_a) annotation(Line(visible = true, origin = {15.346, -0.33}, points = {{-7.938, -0.33}, {1.642, -0.33}, {1.642, 0.33}, {4.654, 0.33}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestPrismaticRestrictedComponent;

  model TestPrismaticRestrictedDoubleStopDownwards
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          fixed =   false),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-2.469, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                start =     {0, 0.5, 0}, fixed =     true))
                                                                                                                     annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-45, 27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-116.946, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = -2) annotation(Placement(visible = true, transformation(origin = {-120, 67.20399999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {0, 21.852}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.Rod rod(L = 1) annotation(Placement(visible = true, transformation(origin = {-28.046, 7.144}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap1(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {-2.117, -22.49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(prismatic.axis, elastoGap1.flange_b) annotation(Line(visible = true, origin = {7.808, -8.244999999999999}, points = {{-2.277, 14.245}, {1.101, 14.245}, {1.101, -14.245}, {0.076, -14.245}}, color = {0, 127, 0}));
    connect(elastoGap1.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-10.348, -12.196}, points = {{-1.769, -10.294}, {-2.994, -10.294}, {-2.994, 1.196}, {3.879, 1.196}, {3.879, 18.196}}, color = {0, 127, 0}));
    connect(elastoGap.flange_a, prismatic.axis) annotation(Line(visible = true, origin = {8.51, 11.284}, points = {{1.49, 10.568}, {1.49, -5.284}, {-2.979, -5.284}}, color = {0, 127, 0}));
    connect(rod.flange_b, elastoGap.flange_b) annotation(Line(visible = true, origin = {-13.524, 14.498}, points = {{-4.522, -7.354}, {0.499, -7.354}, {0.499, 7.354}, {3.524, 7.354}}, color = {0, 127, 0}));
    connect(prismatic.support, rod.flange_a) annotation(Line(visible = true, origin = {-25.003, 3.021}, points = {{18.534, 2.979}, {11.522, 2.979}, {11.522, -7.102}, {-14.268, -7.102}, {-14.268, 4.123}, {-13.043, 4.123}}, color = {0, 127, 0}));
    connect(const1.y, force.force[2]) annotation(Line(visible = true, origin = {-70.333, 57.975}, points = {{-38.667, 9.228999999999999}, {19.333, 9.228999999999999}, {19.333, -18.458}}, color = {0, 0, 127}));
    connect(const.y, force.force[3]) annotation(Line(visible = true, origin = {-79.236, 27.258}, points = {{-26.709, -12.258}, {-0.764, -12.258}, {-0.764, 12.258}, {28.236, 12.258}}, color = {0, 0, 127}));
    connect(const.y, force.force[1]) annotation(Line(visible = true, origin = {-82.767, 30.91}, points = {{-23.178, -15.91}, {-20.178, -15.91}, {-20.178, 11.607}, {31.767, 11.607}, {31.767, 8.606999999999999}}, color = {0, 0, 127}));
    connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-35.858, -22.5}, points = {{-64.142, -22.5}, {20.376, -22.5}, {20.376, 22.5}, {23.389, 22.5}}));
    connect(world.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-67.75, -8.742000000000001}, points = {{-32.25, -36.258}, {9.75, -36.258}, {9.75, 36.258}, {12.75, 36.258}}));
    connect(force.frame_b, body.frame_a) annotation(Line(visible = true, origin = {4.744, 13.758}, points = {{-39.744, 13.758}, {12.244, 13.758}, {12.244, -13.758}, {15.256, -13.758}}));
    connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.765, 0}, points = {{-6.234, 0}, {6.235, 0}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestPrismaticRestrictedDoubleStopDownwards;

  model TestPrismaticRestrictedDoubleStopUpwards
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          fixed =   false),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-2.469, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                start =     {0, 0.5, 0}, fixed =     true))
                                                                                                                     annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-45, 27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-116.946, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 2) annotation(Placement(visible = true, transformation(origin = {-120, 67.20399999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {0, 21.852}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.Rod rod(L = 1) annotation(Placement(visible = true, transformation(origin = {-28.046, 7.144}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap1(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {-2.117, -22.49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(prismatic.axis, elastoGap1.flange_b) annotation(Line(visible = true, origin = {7.808, -8.244999999999999}, points = {{-2.277, 14.245}, {1.101, 14.245}, {1.101, -14.245}, {0.076, -14.245}}, color = {0, 127, 0}));
    connect(elastoGap1.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-10.348, -12.196}, points = {{-1.769, -10.294}, {-2.994, -10.294}, {-2.994, 1.196}, {3.879, 1.196}, {3.879, 18.196}}, color = {0, 127, 0}));
    connect(elastoGap.flange_a, prismatic.axis) annotation(Line(visible = true, origin = {8.51, 11.284}, points = {{1.49, 10.568}, {1.49, -5.284}, {-2.979, -5.284}}, color = {0, 127, 0}));
    connect(rod.flange_b, elastoGap.flange_b) annotation(Line(visible = true, origin = {-13.524, 14.498}, points = {{-4.522, -7.354}, {0.499, -7.354}, {0.499, 7.354}, {3.524, 7.354}}, color = {0, 127, 0}));
    connect(prismatic.support, rod.flange_a) annotation(Line(visible = true, origin = {-25.003, 3.021}, points = {{18.534, 2.979}, {11.522, 2.979}, {11.522, -7.102}, {-14.268, -7.102}, {-14.268, 4.123}, {-13.043, 4.123}}, color = {0, 127, 0}));
    connect(const1.y, force.force[2]) annotation(Line(visible = true, origin = {-70.333, 57.975}, points = {{-38.667, 9.228999999999999}, {19.333, 9.228999999999999}, {19.333, -18.458}}, color = {0, 0, 127}));
    connect(const.y, force.force[3]) annotation(Line(visible = true, origin = {-79.236, 27.258}, points = {{-26.709, -12.258}, {-0.764, -12.258}, {-0.764, 12.258}, {28.236, 12.258}}, color = {0, 0, 127}));
    connect(const.y, force.force[1]) annotation(Line(visible = true, origin = {-82.767, 30.91}, points = {{-23.178, -15.91}, {-20.178, -15.91}, {-20.178, 11.607}, {31.767, 11.607}, {31.767, 8.606999999999999}}, color = {0, 0, 127}));
    connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-35.858, -22.5}, points = {{-64.142, -22.5}, {20.376, -22.5}, {20.376, 22.5}, {23.389, 22.5}}));
    connect(world.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-67.75, -8.742000000000001}, points = {{-32.25, -36.258}, {9.75, -36.258}, {9.75, 36.258}, {12.75, 36.258}}));
    connect(force.frame_b, body.frame_a) annotation(Line(visible = true, origin = {4.744, 13.758}, points = {{-39.744, 13.758}, {12.244, 13.758}, {12.244, -13.758}, {15.256, -13.758}}));
    connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.765, 0}, points = {{-6.234, 0}, {6.235, 0}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestPrismaticRestrictedDoubleStopUpwards;

  model TestPrismaticRestrictedOneDirectionalNegativeStop
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          fixed =   false),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-2.469, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                start =     {0, 1, 0}, fixed =     true))
                                                                                                                   annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-45, 27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-116.946, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {-1.587, 18.256}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = -5) annotation(Placement(visible = true, transformation(origin = {-120, 67.20399999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(const1.y, force.force[2]) annotation(Line(visible = true, origin = {-70.333, 57.975}, points = {{-38.667, 9.228999999999999}, {19.333, 9.228999999999999}, {19.333, -18.458}}, color = {0, 0, 127}));
    connect(elastoGap.flange_b, prismatic.axis) annotation(Line(visible = true, origin = {7.452, 10.085}, points = {{0.96, 8.170999999999999}, {0.96, -4.085}, {-1.921, -4.085}}, color = {0, 127, 0}));
    connect(elastoGap.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-9.881, 10.085}, points = {{-1.706, 8.170999999999999}, {-1.706, -4.085}, {3.412, -4.085}}, color = {0, 127, 0}));
    connect(const.y, force.force[3]) annotation(Line(visible = true, origin = {-79.236, 27.258}, points = {{-26.709, -12.258}, {-0.764, -12.258}, {-0.764, 12.258}, {28.236, 12.258}}, color = {0, 0, 127}));
    connect(const.y, force.force[1]) annotation(Line(visible = true, origin = {-82.767, 30.91}, points = {{-23.178, -15.91}, {-20.178, -15.91}, {-20.178, 11.607}, {31.767, 11.607}, {31.767, 8.606999999999999}}, color = {0, 0, 127}));
    connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-35.858, -22.5}, points = {{-64.142, -22.5}, {20.376, -22.5}, {20.376, 22.5}, {23.389, 22.5}}));
    connect(world.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-67.75, -8.742000000000001}, points = {{-32.25, -36.258}, {9.75, -36.258}, {9.75, 36.258}, {12.75, 36.258}}));
    connect(force.frame_b, body.frame_a) annotation(Line(visible = true, origin = {4.744, 13.758}, points = {{-39.744, 13.758}, {12.244, 13.758}, {12.244, -13.758}, {15.256, -13.758}}));
    connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.765, 0}, points = {{-6.234, 0}, {6.235, 0}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestPrismaticRestrictedOneDirectionalNegativeStop;

  model TestPrismaticRestrictedOneDTranslation
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          fixed =   false),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-2.469, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                start =     {0, 2, 0}, fixed =     true))
                                                                                                                   annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-45, 27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-116.946, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = -2) annotation(Placement(visible = true, transformation(origin = {-120, 67.20399999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {0, 21.852}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.Rod rod(L = 1) annotation(Placement(visible = true, transformation(origin = {-28.046, 7.144}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(elastoGap.flange_b, prismatic.axis) annotation(Line(visible = true, origin = {8.51, 11.284}, points = {{1.49, 10.568}, {1.49, -5.284}, {-2.979, -5.284}}, color = {0, 127, 0}));
    connect(rod.flange_b, elastoGap.flange_a) annotation(Line(visible = true, origin = {-13.624, 14.498}, points = {{-4.422, -7.354}, {0.399, -7.354}, {0.399, 7.354}, {3.624, 7.354}}, color = {0, 127, 0}));
    connect(prismatic.support, rod.flange_a) annotation(Line(visible = true, origin = {-25.003, 3.021}, points = {{18.534, 2.979}, {11.522, 2.979}, {11.522, -7.102}, {-14.268, -7.102}, {-14.268, 4.123}, {-13.043, 4.123}}, color = {0, 127, 0}));
    connect(const1.y, force.force[2]) annotation(Line(visible = true, origin = {-70.333, 57.975}, points = {{-38.667, 9.228999999999999}, {19.333, 9.228999999999999}, {19.333, -18.458}}, color = {0, 0, 127}));
    connect(const.y, force.force[3]) annotation(Line(visible = true, origin = {-79.236, 27.258}, points = {{-26.709, -12.258}, {-0.764, -12.258}, {-0.764, 12.258}, {28.236, 12.258}}, color = {0, 0, 127}));
    connect(const.y, force.force[1]) annotation(Line(visible = true, origin = {-82.767, 30.91}, points = {{-23.178, -15.91}, {-20.178, -15.91}, {-20.178, 11.607}, {31.767, 11.607}, {31.767, 8.606999999999999}}, color = {0, 0, 127}));
    connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-35.858, -22.5}, points = {{-64.142, -22.5}, {20.376, -22.5}, {20.376, 22.5}, {23.389, 22.5}}));
    connect(world.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-67.75, -8.742000000000001}, points = {{-32.25, -36.258}, {9.75, -36.258}, {9.75, 36.258}, {12.75, 36.258}}));
    connect(force.frame_b, body.frame_a) annotation(Line(visible = true, origin = {4.744, 13.758}, points = {{-39.744, 13.758}, {12.244, 13.758}, {12.244, -13.758}, {15.256, -13.758}}));
    connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.765, 0}, points = {{-6.234, 0}, {6.235, 0}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestPrismaticRestrictedOneDTranslation;

  model TestPrismaticRestrictedOneDTranslationReverse
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          fixed =   false),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-2.469, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0, 0}, m = 1,
      r_0(                                                                start =     {0, 0, 0}, fixed =     true))
                                                                                                                   annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-45, 27.517}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-116.946, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 2) annotation(Placement(visible = true, transformation(origin = {-120, 67.20399999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = 2000, d = 200) annotation(Placement(visible = true, transformation(origin = {0, 21.852}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Components.Rod rod(L = 1) annotation(Placement(visible = true, transformation(origin = {-28.046, 7.144}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(elastoGap.flange_a, prismatic.axis) annotation(Line(visible = true, origin = {8.51, 11.284}, points = {{1.49, 10.568}, {1.49, -5.284}, {-2.979, -5.284}}, color = {0, 127, 0}));
    connect(rod.flange_b, elastoGap.flange_b) annotation(Line(visible = true, origin = {-13.524, 14.498}, points = {{-4.522, -7.354}, {0.499, -7.354}, {0.499, 7.354}, {3.524, 7.354}}, color = {0, 127, 0}));
    connect(prismatic.support, rod.flange_a) annotation(Line(visible = true, origin = {-25.003, 3.021}, points = {{18.534, 2.979}, {11.522, 2.979}, {11.522, -7.102}, {-14.268, -7.102}, {-14.268, 4.123}, {-13.043, 4.123}}, color = {0, 127, 0}));
    connect(const1.y, force.force[2]) annotation(Line(visible = true, origin = {-70.333, 57.975}, points = {{-38.667, 9.228999999999999}, {19.333, 9.228999999999999}, {19.333, -18.458}}, color = {0, 0, 127}));
    connect(const.y, force.force[3]) annotation(Line(visible = true, origin = {-79.236, 27.258}, points = {{-26.709, -12.258}, {-0.764, -12.258}, {-0.764, 12.258}, {28.236, 12.258}}, color = {0, 0, 127}));
    connect(const.y, force.force[1]) annotation(Line(visible = true, origin = {-82.767, 30.91}, points = {{-23.178, -15.91}, {-20.178, -15.91}, {-20.178, 11.607}, {31.767, 11.607}, {31.767, 8.606999999999999}}, color = {0, 0, 127}));
    connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-35.858, -22.5}, points = {{-64.142, -22.5}, {20.376, -22.5}, {20.376, 22.5}, {23.389, 22.5}}));
    connect(world.frame_b, force.frame_a) annotation(Line(visible = true, origin = {-67.75, -8.742000000000001}, points = {{-32.25, -36.258}, {9.75, -36.258}, {9.75, 36.258}, {12.75, 36.258}}));
    connect(force.frame_b, body.frame_a) annotation(Line(visible = true, origin = {4.744, 13.758}, points = {{-39.744, 13.758}, {12.244, 13.758}, {12.244, -13.758}, {15.256, -13.758}}));
    connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.765, 0}, points = {{-6.234, 0}, {6.235, 0}}));
    annotation(experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestPrismaticRestrictedOneDTranslationReverse;

  model ObjectConnectionTest
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}, r = {-0.1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-100, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.ObjectLFConnection objectConnection annotation (Placement(
          visible=true, transformation(
          origin={-35,0},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0.01, 0}, m = 1,
      r_0(                                                                   start =     {0.1, 1, 0}, fixed =     true),angles_fixed = true) annotation(Placement(visible = true, transformation(origin = {65, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(objectConnection.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-66.298, -0}, points={{23.7023,
            0},{-23.702,0}},                                                                                                                                color = {95, 95, 95}));
    connect(objectConnection.frame_b, body.frame_a) annotation(Line(visible = true, origin = {13.774, 0}, points={{
            -41.2252,0},{41.226,0}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-115, -0}, points = {{-5, 0}, {5, -0}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectConnectionTest;

  model ObjectConnectionToFingerTest
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 200, maxMDistal = 200, maxCDistal = 200) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    OldComponents.FingerMultipleRevoluteArray fingerBoneStructureArray(
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
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 200, maxMDistal = 200, maxCDistal = 200) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
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
    OldComponents.ObjectLFConnection objectLFConnection(
      dampingCoefficient=5000,
      k=5000,
      threshold=0.25) annotation (Placement(visible=true, transformation(
          origin={-193.09,92.32299999999999},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, -0.1, 0}) annotation(Placement(visible = true, transformation(origin = {-157.061, 92.32299999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.2, 1.2, 0}) annotation(Placement(visible = true, transformation(origin = {-230, 92.32299999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(ramp1.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-184.537, 33.171}, points = {{-29.463, -19.764}, {7.519, -19.764}, {7.519, 19.764}, {14.425, 19.764}}, color = {0, 0, 127}));
    connect(fixedTranslation1.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-157.555, 32.215}, points = {{-82.44499999999999, 60.108}, {-85.44499999999999, 60.108}, {-85.44499999999999, 47.108}, {86.986, 47.108}, {86.986, -107.215}, {79.361, -107.215}}));
    connect(fixedTranslation.frame_b, fingerBoneStructureArray.frame_1A) annotation(Line(visible = true, origin = {-72.60299999999999, 82.425}, points = {{-74.458, 9.898}, {37.229, 9.898}, {37.229, -19.796}}));
    connect(objectLFConnection.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-176.301, 92.32299999999999}, points = {{-9.24, 0}, {9.24, 0}}));
    connect(fixedTranslation1.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-210.343, 92.32299999999999}, points = {{-9.657, 0}, {9.657, 0}}));
    connect(ramp.y, fingerBoneStructureArray.sideAnterior) annotation(Line(visible = true, origin = {-17.983, 98.298}, points = {{-41.017, 31.702}, {20.508, 31.702}, {20.508, -63.404}}, color = {0, 0, 127}));
    connect(ramp.y, fingerBoneStructureArray.sideTheta) annotation(Line(visible = true, origin = {-33.662, 72.5}, points = {{-25.338, 57.5}, {-4.849, 57.5}, {-4.849, -57.5}, {35.035, -57.5}}, color = {0, 0, 127}));
    connect(ramp.y, fingerBoneStructureArray.sidePosterior) annotation(Line(visible = true, origin = {-33.151, 36.526}, points = {{-25.849, 93.474}, {-22.849, 93.474}, {-22.849, -73.167}, {35.774, -73.167}, {35.774, -40.614}}, color = {0, 0, 127}));
    connect(ramp2.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-184.839, -25.714}, points = {{-29.161, -1.108}, {7.822, -1.108}, {7.822, 1.108}, {13.517, 1.108}}, color = {0, 0, 127}));
    connect(ramp1.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-184.839, 12.981}, points = {{-29.161, 0.425}, {7.822, 0.425}, {7.822, -0.425}, {13.517, -0.425}}, color = {0, 0, 127}));
    connect(const5.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {198.57, 54.403}, points = {{15.43, 0.597}, {-2.812, 0.597}, {-2.812, -0.597}, {-9.807, -0.597}}, color = {0, 0, 127}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-105.711, -75}, points = {{-7.516, 0}, {7.517, 0}}));
    connect(fixedRotation.frame_b, fingerBoneStructureArray.frame_a) annotation(Line(visible = true, origin = {-23.2, -59.589}, points = {{-54.994, -15.411}, {27.497, -15.411}, {27.498, 30.823}}));
    connect(const8.y, fingerBoneStructureArray.loadForce) annotation(Line(visible = true, origin = {39.089, -46.945}, points = {{15.911, -34.111}, {15.911, 10.305}, {-15.911, 10.305}, {-15.911, 13.501}}, color = {0, 0, 127}));
    connect(posteriorMuscleArray.frame_7, fingerBoneStructureArray.frame_7P) annotation(Line(visible = true, origin = {72.417, -37.811}, points = {{12.583, 0.311}, {12.583, -2.689}, {-12.583, -2.689}, {-12.583, 5.066}}));
    connect(posteriorMuscleArray.frame_6, fingerBoneStructureArray.frame_6P) annotation(Line(visible = true, origin = {67.75, -18.709}, points = {{17.25, -1.731}, {-4.75, -1.731}, {-4.75, 1.731}, {-7.75, 1.731}}));
    connect(posteriorMuscleArray.frame_5, fingerBoneStructureArray.frame_5P) annotation(Line(visible = true, origin = {67.73699999999999, -2.194}, points = {{17.263, -1.227}, {-4.737, -1.227}, {-4.737, 1.227}, {-7.789, 1.227}}));
    connect(anteriorMuscleArray.frame_7, fingerBoneStructureArray.frame_7A) annotation(Line(visible = true, origin = {-51.999, -36.885}, points = {{-16.679, 0.5629999999999999}, {-16.679, -2.437}, {16.679, -2.437}, {16.679, 4.31}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_6, fingerBoneStructureArray.frame_6A) annotation(Line(visible = true, origin = {-45.27, -18.183}, points = {{-23.408, -1.462}, {6.759, -1.462}, {6.759, 1.462}, {9.888999999999999, 1.462}}));
    connect(anteriorMuscleArray.frame_5, fingerBoneStructureArray.frame_5A) annotation(Line(visible = true, origin = {-45.295, -1.957}, points = {{-23.383, -1.051}, {6.784, -1.051}, {6.784, 1.051}, {9.815, 1.051}}, color = {95, 95, 95}));
    connect(debug7A.frame_b, fingerBoneStructureArray.frame_5A) annotation(Line(visible = true, origin = {-37.713, -33.877}, points = {{-2.287, -22.986}, {0.825, -22.986}, {0.825, -9.986000000000001}, {-0.798, -9.986000000000001}, {-0.798, 32.972}, {2.232, 32.972}}));
    connect(debug7P.frame_a, fingerBoneStructureArray.frame_5P) annotation(Line(visible = true, origin = {68.98699999999999, -30.484}, points = {{21.013, -29.516}, {-5.987, -29.516}, {-5.987, 29.516}, {-9.039, 29.516}}));
    connect(debug6P.frame_a, fingerBoneStructureArray.frame_6P) annotation(Line(visible = true, origin = {66.5, 37.373}, points = {{13.5, 54.35}, {-3.5, 54.35}, {-3.5, -54.35}, {-6.5, -54.35}}));
    connect(debug6A.frame_b, fingerBoneStructureArray.frame_6A) annotation(Line(visible = true, origin = {-51.471, 39.14}, points = {{-42.011, 55.86}, {12.96, 55.86}, {12.96, -55.86}, {16.09, -55.86}}));
    connect(posteriorMuscleArray.frame_4, fingerBoneStructureArray.frame_4P) annotation(Line(visible = true, origin = {67.69, 14.126}, points = {{17.31, -0.636}, {-4.69, -0.636}, {-4.69, 0.636}, {-7.929, 0.636}}, color = {95, 95, 95}));
    connect(posteriorMuscleArray.frame_3, fingerBoneStructureArray.frame_3P) annotation(Line(visible = true, origin = {67.732, 30.796}, points = {{17.268, -0.046}, {-4.732, -0.046}, {-4.732, 0.046}, {-7.804, 0.046}}));
    connect(posteriorMuscleArray.frame_2, fingerBoneStructureArray.frame_2P) annotation(Line(visible = true, origin = {67.81699999999999, 47.453}, points = {{17.183, 0.623}, {-4.728, 0.623}, {-4.728, -0.623}, {-7.728, -0.623}}));
    connect(posteriorMuscleArray.frame_1, fingerBoneStructureArray.frame_1P) annotation(Line(visible = true, origin = {67.81100000000001, 64.376}, points = {{17.189, 1.549}, {-4.73, 1.549}, {-4.73, -1.549}, {-7.73, -1.549}}, color = {95, 95, 95}));
    connect(anteriorMuscleArray.frame_4, fingerBoneStructureArray.frame_4A) annotation(Line(visible = true, origin = {-45.298, 14.261}, points = {{-23.38, -0.737}, {6.787, -0.737}, {6.787, 0.737}, {9.805999999999999, 0.737}}));
    connect(anteriorMuscleArray.frame_3, fingerBoneStructureArray.frame_3A) annotation(Line(visible = true, origin = {-45.274, 30.609}, points = {{-23.404, -0.212}, {6.763, -0.212}, {6.763, 0.212}, {9.878, 0.212}}));
    connect(anteriorMuscleArray.frame_2, fingerBoneStructureArray.frame_2A) annotation(Line(visible = true, origin = {-45.297, 47.081}, points = {{-23.381, 0.251}, {6.787, 0.251}, {6.787, -0.251}, {9.807, -0.251}}));
    connect(anteriorMuscleArray.frame_1, fingerBoneStructureArray.frame_1A) annotation(Line(visible = true, origin = {-54.156, 65.095}, points = {{-14.522, -0.313}, {-11.522, -0.313}, {-11.522, 1.545}, {18.782, 1.545}, {18.782, -2.466}}));
    connect(const3.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {200.129, -23.888}, points = {{18.871, 1.628}, {-4.371, 1.628}, {-4.371, -1.628}, {-10.129, -1.628}}, color = {0, 0, 127}));
    connect(const4.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {197.629, 13.75}, points = {{11.371, 1.25}, {-1.871, 1.25}, {-1.871, -1.25}, {-7.629, -1.25}}, color = {0, 0, 127}));
    annotation(experiment(StopTime = 10.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectConnectionToFingerTest;

  model ObjectConnectionToBareBoneTest
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-100, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.25, 0.5, -0.4}) annotation(Placement(visible = true, transformation(origin = {-78.05200000000001, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {45, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid4(amplitude = 1, period = 10, width = 5, offset = 0) annotation(Placement(visible = true, transformation(origin = {72.15900000000001, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.ObjectLFConnection objectLFConnection(
      threshold=0.25,
      k=5000,
      dampingCoefficient=5000) annotation (Placement(visible=true,
          transformation(
          origin={-42.837,30},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    PowerGrab.Components.BoneDoubleJointComponent boneDoubleJointComponent(
        closedDoubleJoint=false, closedRegularJoint=false) annotation (
        Placement(visible=true, transformation(
          origin={-20,0},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, period = 1) annotation(Placement(visible = true, transformation(origin = {-70, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1, period = 5, startTime = 5, width = 5) annotation(Placement(visible = true, transformation(origin = {-37.056, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

    model TestOCLFtoWholeFingerArray
      OldComponents.ObjectLFConnection objectLFConnection(threshold=0.25)
        annotation (Placement(visible=true, transformation(
            origin={-10,27.15},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      OldComponents.WholeFingerArray wholeFingerArray(
        fDistalClosed=false,
        mDistalClosed=false,
        cDistalSideClosed=false,
        cDistalRegularClosed=false) annotation (Placement(visible=true,
            transformation(
            origin={17.5,70},
            extent={{-12.5,-12.5},{12.5,12.5}},
            rotation=0)));
      inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-132.292, -21.955}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-65, 53.311}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.2, 1.2, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -21.693}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-117.828, 77.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-118.181, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      OldComponents.ObjectLFConnection objectLFConnection1(threshold=0.25)
        annotation (Placement(visible=true, transformation(
            origin={5,7.491},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      OldComponents.ObjectLFConnection objectLFConnection2(threshold=0.25)
        annotation (Placement(visible=true, transformation(
            origin={5,-20},
            extent={{-10,-10},{10,10}},
            rotation=0)));
    equation
      connect(objectLFConnection2.frame_b, wholeFingerArray.frame_a1) annotation(Line(visible = true, origin = {9.590999999999999, 11.3}, points={{2.9578,
              -31.3},{8.409,-31.3},{8.409,-18.3},{-7.591,-18.3},{-7.591,49.6},{
              -4.591,49.6}}));
      connect(objectLFConnection1.frame_b, wholeFingerArray.frame_a2) annotation(Line(visible = true, origin = {9.590999999999999, 32.661}, points={{2.9578,
              -25.17},{8.409,-25.17},{8.409,-12.17},{-7.591,-12.17},{-7.591,
              37.339},{-4.591,37.339}}));
      connect(fixedTranslation.frame_b, objectLFConnection2.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -20.846}, points={{-10.351,
              -0.847},{1.649,-0.847},{1.649,0.846},{7.0533,0.846}}));
      connect(fixedTranslation.frame_b, objectLFConnection1.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -7.101}, points={{-10.351,
              -14.592},{1.649,-14.592},{1.649,14.592},{7.0533,14.592}}));
      connect(objectLFConnection.frame_b, wholeFingerArray.frame_a3) annotation(Line(visible = true, origin = {2.118, 48.8}, points={{-4.5692,
              -21.65},{0.882,-21.65},{0.882,-8.65},{-0.118,-8.65},{-0.118,30.3},
              {3.0413,30.3}}));
      connect(fixedRotation.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-45.25, 15.809}, points = {{-9.75, 37.502}, {2.25, 37.502}, {2.25, -37.502}, {5.25, -37.502}}));
      connect(one.y, wholeFingerArray.anteriorInput[3]) annotation(Line(visible = true, origin = {-21.789, 75.72799999999999}, points={{-85.039,
              1.53},{23.789,1.53},{23.789,-1.0304},{37.4588,-1.0304}},                                                                                                                                       color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.anteriorInput[4]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
              -14.599},{23.878,-14.599},{23.878,16.0986},{37.5478,16.0986}},                                                                                                                               color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.anteriorInput[2]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
              -14.599},{23.878,-14.599},{23.878,14.0986},{37.5478,14.0986}},                                                                                                                               color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.anteriorInput[1]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
              -14.599},{23.878,-14.599},{23.878,13.0986},{37.5478,13.0986}},                                                                                                                               color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.posteriorInput[4]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
              -9.86},{23.854,-9.86},{23.854,11.3606},{37.6166,11.3606}},                                                                                                                                                                                          color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.posteriorInput[3]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
              -9.86},{23.854,-9.86},{23.854,10.3606},{37.6166,10.3606}},                                                                                                                                                                                          color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.posteriorInput[2]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
              -9.86},{23.854,-9.86},{23.854,9.3606},{37.6166,9.3606}},                                                                                                                                                                                            color = {0, 0, 127}));
      connect(zero.y, wholeFingerArray.posteriorInput[1]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
              -9.86},{23.854,-9.86},{23.854,8.3606},{37.6166,8.3606}},                                                                                                                                                                                            color = {0, 0, 127}));
      connect(fixedTranslation.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-19.562, -1.079}, points={{-0.438,
              -20.614},{2.674,-20.614},{2.674,-7.614},{-3.438,-7.614},{-3.438,
              28.229},{1.9663,28.229}}));
      connect(fixedRotation.frame_b, wholeFingerArray.frame_a) annotation(Line(visible = true, origin = {-8.109, 55.146}, points={{-46.891,
              -1.835},{23.4455,-1.835},{23.4455,3.669}}));
      connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-88.32899999999999, 15.678}, points={{-33.963,
              -37.633},{10.317,-37.633},{10.317,37.633},{13.329,37.633}}));
      annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end TestOCLFtoWholeFingerArray;
  equation
    connect(trapezoid1.y, boneDoubleJointComponent.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-20.145, 57.053}, points={{-5.911,
            22.947},{2.9558,22.947},{2.9558,-45.8927}},                                                                                                                                                   color = {0, 0, 127}));
    connect(trapezoid.y, boneDoubleJointComponent.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-28.547, 43.678}, points={{-30.453,
            16.322},{15.2262,16.322},{15.2262,-32.6446}},                                                                                                                                                    color = {0, 0, 127}));
    connect(trapezoid4.y, boneDoubleJointComponent.LoadTorque) annotation(Line(visible = true, origin = {41.311, 7.086}, points={{41.848,
            -12.086},{44.848,-12.086},{44.848,10.139},{-65.7719,10.139},{
            -65.7719,3.8939}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(boneDoubleJointComponent.frame_b2, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {12.62, 0}, points={{
            -22.3808,0},{22.38,0}}));
    connect(fixedRotation.frame_b, boneDoubleJointComponent.frame_a) annotation(Line(visible = true, origin = {-60, 0}, points = {{-30, 0}, {30, 0}}));
    connect(objectLFConnection.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {33.984, 15}, points={{
            -69.2722,15},{24.128,15},{24.128,-15},{21.016,-15}}));
    connect(fixedTranslation.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-59.243, 30}, points={{-8.809,
            0},{8.8103,0}}));
    connect(fixedTranslation.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-87.48399999999999, 15.667}, points = {{-0.5679999999999999, 14.333}, {-3.568, 14.333}, {-3.568, 1.333}, {5.109, 1.333}, {5.109, -15.667}, {-2.516, -15.667}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-115, -0}, points = {{-5, 0}, {5, -0}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end ObjectConnectionToBareBoneTest;

  model stepZeroContactConceptTest
    inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 9.81, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Body body(r_CM = {0, 0.01, 0}, m = 1,
      r_0(                                                                   start =     {0, 1, 0}, fixed =     true),angles_fixed = true) annotation(Placement(visible = true, transformation(origin = {65, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true,
      s(                                                                          start =   1, fixed =   true),n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-85, -16.778}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {-107.124, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Sine sine(freqHz = 1, amplitude = 0, offset = 1) annotation(Placement(visible = true, transformation(origin = {-152.942, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(sine.y, position.s_ref) annotation(Line(visible = true, origin = {-130.533, -55}, points = {{-11.409, 0}, {11.409, 0}}, color = {0, 0, 127}));
    connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {-79.41800000000001, -32.889}, points = {{-17.705, -22.111}, {7.643, -22.111}, {7.643, 22.111}, {2.418, 22.111}}, color = {0, 127, 0}));
    connect(prismatic.frame_b, body.frame_a) annotation(Line(visible = true, origin = {20.994, -8.388999999999999}, points = {{-95.994, -8.388999999999999}, {30.994, -8.388999999999999}, {30.994, 8.388999999999999}, {34.006, 8.388999999999999}}));
    connect(world.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-102.756, -8.388999999999999}, points = {{-17.244, 8.388999999999999}, {4.744, 8.388999999999999}, {4.744, -8.388999999999999}, {7.756, -8.388999999999999}}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end stepZeroContactConceptTest;

  model TestObjCPrism
    PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 200, maxMDistal = 200, maxCDistal = 200) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
    OldComponents.FingerMultipleRevoluteArray fingerBoneStructureArray(
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
    PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 200, maxMDistal = 200, maxCDistal = 200) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
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
    OldComponents.ObjectPrismConnection objectPRISMConnection(
      dampingCoefficient=5000,
      k=5000,
      threshold=0.25,
      boneLength=0.25) annotation (Placement(visible=true, transformation(
          origin={-193.09,92.32299999999999},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-0.125, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-157.061, 92.32299999999999}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0.2, 1.2, 0}) annotation(Placement(visible = true, transformation(origin = {-230, 92.32299999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixedTranslation.frame_b, objectPRISMConnection.frame_b) annotation(Line(visible = true, origin = {-176.301, 92.32299999999999}, points={{9.24,0},
            {-9.2402,0}}));
    connect(fingerBoneStructureArray.frame_1A, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-72.60299999999999, 82.425}, points={{37.2288,
            -19.7958},{37.2288,9.898},{-74.458,9.898}}));
    connect(fixedTranslation1.frame_b, objectPRISMConnection.frame_a) annotation(Line(visible = true, origin = {-210.343, 92.32299999999999}, points={{-9.657,
            0},{9.6573,0}}));
    connect(fixedTranslation1.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-157.555, 32.215}, points = {{-82.44499999999999, 60.108}, {-85.44499999999999, 60.108}, {-85.44499999999999, 47.108}, {86.986, 47.108}, {86.986, -107.215}, {79.361, -107.215}}));
    connect(ramp1.y, anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-184.537, 33.171}, points={{-29.463,
            -19.764},{7.519,-19.764},{7.519,19.7637},{14.4247,19.7637}},                                                                                                                              color = {0, 0, 127}));
    connect(ramp.y, fingerBoneStructureArray.sideAnterior) annotation(Line(visible = true, origin = {-17.983, 98.298}, points={{-41.017,
            31.702},{20.5084,31.702},{20.5084,-63.4043}},                                                                                                                                 color = {0, 0, 127}));
    connect(ramp.y, fingerBoneStructureArray.sideTheta) annotation(Line(visible = true, origin = {-33.662, 72.5}, points={{-25.338,
            57.5},{-4.849,57.5},{-4.849,-57.5},{35.0351,-57.5}},                                                                                                                                color = {0, 0, 127}));
    connect(ramp.y, fingerBoneStructureArray.sidePosterior) annotation(Line(visible = true, origin = {-33.151, 36.526}, points={{-25.849,
            93.474},{-22.849,93.474},{-22.849,-73.167},{35.7738,-73.167},{
            35.7738,-40.6137}},                                                                                                                                                                                                    color = {0, 0, 127}));
    connect(ramp2.y, anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-184.839, -25.714}, points={{-29.161,
            -1.108},{7.822,-1.108},{7.822,1.10779},{13.517,1.10779}},                                                                                                                              color = {0, 0, 127}));
    connect(ramp1.y, anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-184.839, 12.982}, points={{-29.161,
            0.425},{7.822,0.425},{7.822,-0.425954},{13.517,-0.425954}},                                                                                                                           color = {0, 0, 127}));
    connect(const5.y, posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {198.57, 54.403}, points={{15.43,
            0.597},{-2.812,0.597},{-2.812,-0.597625},{-9.80742,-0.597625}},                                                                                                                       color = {0, 0, 127}));
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
            -0.31266},{-11.522,-0.31266},{-11.522,1.545},{18.7818,1.545},{
            18.7818,-2.46578}}));
    connect(const3.y, posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {200.129, -23.888}, points={{18.871,
            1.628},{-4.371,1.628},{-4.371,-1.6273},{-10.129,-1.6273}},                                                                                                                                color = {0, 0, 127}));
    connect(const4.y, posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {197.629, 13.75}, points={{11.371,
            1.25},{-1.871,1.25},{-1.871,-1.25005},{-7.629,-1.25005}},                                                                                                                          color = {0, 0, 127}));
    annotation(experiment(StopTime = 10.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestObjCPrism;

  model TestFingerMultipleRevolute
    PowerGrab.Components.OpenBoneJointComponent boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = false) annotation(Placement(visible = true, transformation(origin = {4.693, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PowerGrab.Components.OpenBoneJointComponent boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, stateSelect = false) annotation(Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
    Modelica.Blocks.Interfaces.RealInput loadForce annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
    PowerGrab.Components.FingerLoad fingerLoad(r2 = r_OboneMDistal[1], r3 = r_OboneCDistal[1], r1 = r_OboneFDistal[1] / 2) annotation(Placement(visible = true, transformation(origin = {-52.096, 71.024}, extent = {{-13.29, -13.29}, {13.29, 13.29}}, rotation = 0)));
    PowerGrab.Components.BoneDoubleJointComponent boneCDistal(phi_0_doubleJoint = phi_0_doubleJoint, closedDoubleJoint = false, closedRegularJoint = false) annotation(Placement(visible = true, transformation(origin = {-87.761, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput anteriorSideP annotation(Placement(visible = true, transformation(origin = {-91.72199999999999, -31.722}, extent = {{-11.722, -11.722}, {11.722, 11.722}}, rotation = 0), iconTransformation(origin = {-26.064, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput posteriorSideP annotation(Placement(visible = true, transformation(origin = {-67.86799999999999, -32.132}, extent = {{-12.132, -12.132}, {12.132, 12.132}}, rotation = 0), iconTransformation(origin = {-26.453, -16.562}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(boneCDistal.posteriorDoubleJointMuscle, posteriorSideP) annotation(Line(visible = true, origin = {-74.47499999999999, 3.338}, points={{-6.6068,
            7.6954},{-6.6068,13.887},{6.607,13.887},{6.607,-35.47}},                                                                                                                                                      color = {0, 0, 127}));
    connect(boneCDistal.anteriorDoubleJointMuscle, anteriorSideP) annotation(Line(visible = true, origin = {-92.991, -3.352}, points={{8.0408,
            14.5123},{8.0408,20.577},{-9.31,20.577},{-9.31,-13.648},{1.269,
            -13.648},{1.269,-28.37}},                                                                                                                                                                                                        color = {0, 0, 127}));
    connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-41.414, 0}, points = {{36.107, 0}, {-36.107, 0}}));
    connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.454, -40.667}, points = {{-24.907, 31.667}, {12.454, 31.667}, {12.454, -63.333}}));
    connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.527, 40.667}, points={{
            -25.0536,-31.667},{12.527,-31.667},{12.527,63.333}}));
    connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-59.28, 36.32}, points={{18.9374,
            31.7644},{23.474,31.7644},{23.474,-19.095},{-32.9419,-19.095},{
            -32.9419,-25.3401}},                                                                                                                                                                                        color = {0, 0, 127}));
    connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-92.473, -58.4}, points = {{-5.288, 49.4}, {-9.829000000000001, 49.4}, {-9.829000000000001, -26.6}, {12.473, -26.6}, {12.473, -45.6}}));
    connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-92.473, 58.4}, points = {{-5.288, -49.4}, {-9.829000000000001, -49.4}, {-9.829000000000001, 26.6}, {12.473, 26.6}, {12.473, 45.6}}, color = {95, 95, 95}));
    connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-105.078, -20.875}, points = {{-12.87, -20.875}, {2.776, -20.875}, {2.776, 20.875}, {7.317, 20.875}}));
    connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-105.061, 20.875}, points={{-12.821,
            20.875},{2.76,20.875},{2.76,-20.875},{7.3,-20.875}}));
    connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-122.843, 0}, points={{-25.083,
            0},{25.082,0}}));
    connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-18.272, 36.384}, points = {{-22.274, 36.384}, {6.425, 36.384}, {6.425, -36.384}, {9.425000000000001, -36.384}}, color = {0, 0, 127}));
    connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {60.688, 38.71}, points = {{-101.313, 38.71}, {32.771, 38.71}, {32.771, -38.71}, {35.771, -38.71}}, color = {0, 0, 127}));
    connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-23.278, 25.826}, points = {{41.765, -25.497}, {44.765, -25.497}, {44.765, -11.813}, {-45.108, -11.813}, {-45.108, 37.31}, {-41.078, 37.31}}, color = {0, 0, 127}));
    connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {29.405, 28.753}, points = {{94.38800000000001, -28.424}, {97.38800000000001, -28.424}, {97.38800000000001, -14.74}, {-97.791, -14.74}, {-97.791, 43.164}, {-93.583, 43.164}}, color = {0, 0, 127}));
    connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points={{-25.963,
            -7.71},{7.251,-7.71},{7.251,7.71004},{11.4592,7.71004}},                                                                                                                       color = {0, 0, 127}));
    connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
    connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.347, 71}, points = {{2.347, -61}, {2.347, 14}, {-2.347, 14}, {-2.347, 33}}));
    connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.598, 40.381}, points = {{-16.804, -31.81}, {8.401999999999999, -31.81}, {8.401999999999999, 63.619}}));
    connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {95, 71}, points = {{15, -61}, {15, 14}, {-15, 14}, {-15, 33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {121.937, 58.229}, points = {{-1.836, -49.657}, {2.855, -49.657}, {2.855, 26.771}, {-1.937, 26.771}, {-1.937, 45.771}}));
    connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.347, -71}, points = {{2.347, 61}, {2.347, -14}, {-2.347, -14}, {-2.347, -33}}, color = {95, 95, 95}));
    connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.564, -39.6}, points = {{-16.871, 32.2}, {8.436, 32.2}, {8.436, -64.40000000000001}}));
    connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {95, -71}, points = {{15, 61}, {15, -14}, {-15, -14}, {-15, -33}}, color = {95, 95, 95}));
    connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {121.917, -57.76}, points = {{-1.917, 50.36}, {2.876, 50.36}, {2.876, -27.24}, {-1.917, -27.24}, {-1.917, -46.24}}));
    connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {76.428, 0.238}, points = {{-61.634, 0.238}, {19.031, 0.238}, {19.031, -0.238}, {23.572, -0.238}}));
    annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
  end TestFingerMultipleRevolute;

  model BoneMuscleJointExperimentalComponentTest
    "Testing the experimental fundamental unit component for validity"
    PowerGrab.Components.BoneMuscleJointExperimentalComponent boneMuscleJointComponent annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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

  model TestOneJointFingerModel
    PowerGrab.Components.OpenLoopComponent openLoopComponent(K_m = 1100, muscleLengthNom = 0.5013879999999999, r_IFingerBone = {0.5, 0, 0}, r_OFingerBone = {0.5, 0, 0}) annotation(Placement(visible = true, transformation(origin = {0, -1.936}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity) annotation(Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-66.675, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixedRotation.frame_b, openLoopComponent.frame_a) annotation(Line(visible = true, origin = {-23.032, -15.968}, points = {{-33.643, -14.032}, {10.019, -14.032}, {10.019, 14.032}, {13.604, 14.032}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-88.33799999999999, -30}, points = {{-11.662, 0}, {11.663, 0}}));
    connect(const.y, openLoopComponent.u) annotation(Line(visible = true, origin = {-23.361, 7.493}, points = {{-35.639, 2.507}, {10.348, 2.507}, {10.348, -2.507}, {14.943, -2.507}}, color = {0, 0, 127}));
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestOneJointFingerModel;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end OldTests;
