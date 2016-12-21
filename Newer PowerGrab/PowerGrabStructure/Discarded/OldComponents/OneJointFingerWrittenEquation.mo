within PowerGrabStructure.Discarded.OldComponents;
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
