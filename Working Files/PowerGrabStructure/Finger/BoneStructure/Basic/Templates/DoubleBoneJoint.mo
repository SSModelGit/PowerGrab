within PowerGrabStructure.Finger.BoneStructure.Basic.Templates;
partial model DoubleBoneJoint
  import PowerGrabStructure;
  extends Interfaces.DoubleBoneJoint;
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone                                                                                                                               "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin={-41,10},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin={44,10},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1 annotation(Placement(visible = true, transformation(origin={56.218,
            33.331},                                                                                                                                                                                                  extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin={4,45},      extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3 annotation(Placement(visible = true, transformation(origin={64,-15},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5 annotation(Placement(visible = true, transformation(origin={4,70},      extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin={-21,65},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin={104,20},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin={76.653,
            45},                                                                                                                     extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin={114,50},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin={151,61},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation annotation(Placement(visible = true, transformation(origin={-71,85},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2 annotation(Placement(visible = true, transformation(origin={-51,-70},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6 annotation(Placement(visible = true, transformation(origin={64,80},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7 annotation(Placement(visible = true, transformation(origin={65,
            -88.736},                                                                                                                                                                                            extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin={-9.775,
            165},                                                                                                                                                    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8 annotation(Placement(visible = true, transformation(origin={15.225,
            170},                                                                                                                                                                         extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3 annotation(Placement(visible = true, transformation(origin={15.225,
            145},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin={-116,185},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin={-91,
            136.351},                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin={-121,
            146.117},                                                                                                             extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin={-93.443,
            163.649},                                                                                                               extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9 annotation(Placement(visible = true, transformation(origin={29,-25},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10 annotation(Placement(visible = true, transformation(origin={-18.821,
            -21.96},                                                                                                                                                                             extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  replaceable
    PowerGrabStructure.Finger.BoneStructure.Joints.Templates.TwoDegreeJoint
    twoDegreeJoint
    annotation (Placement(transformation(extent={{-6,0},{14,20}})));
  replaceable
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.MagnitudeMuscle
    magnitudeMuscle1
    annotation (Placement(transformation(extent={{-120,80},{-100,100}})));
  replaceable
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.DirMuscle
    dirMuscle annotation (Placement(transformation(extent={{-52,74},{-32,94}})));
  replaceable
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.DirMuscle
    dirMuscle1 annotation (Placement(transformation(extent={{28,70},{48,90}})));
  replaceable
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.MagnitudeMuscle
    magnitudeMuscle
    annotation (Placement(transformation(extent={{-122,-92},{-102,-72}})));
  replaceable
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.DirMuscle
    dirMuscle2
    annotation (Placement(transformation(extent={{-30,-96},{-10,-76}})));
  replaceable
    PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.DirMuscle
    dirMuscle3
    annotation (Placement(transformation(extent={{16,-88},{36,-68}})));
equation
  connect(fixedTranslation9.frame_a,revolute3. frame_b) annotation(Line(visible = true, origin={20.117,
          36},                                                                                                            points={{-1.117,
          -61},{-6.117,-61},{-6.117,-48},{6.121,-48},{6.121,109},{5.108,109}}));
  connect(revolute1.frame_b,fixedTranslation10. frame_a) annotation(Line(visible = true, origin={-7.406,
          18.347},                                                                                                  points = {{21.406, 26.653}, {24.419, 26.653}, {24.419, 13.653}, {-24.415, 13.653}, {-24.415, -40.307}, {-21.415, -40.307}}));
  connect(fixedTranslation7.frame_a,OFingerExtension. frame_b) annotation(Line(visible = true, origin={75.25,
          -38.368},                                                                                                       points={{-0.25,
          -50.368},{2.75,-50.368},{2.75,48.368},{-21.25,48.368}}));
  connect(fixedTranslation6.frame_a,OFingerExtension. frame_b) annotation(Line(visible = true, origin={70.5,45},    points = {{3.5, 35}, {6.5, 35}, {6.5, -35}, {-16.5, -35}}, color = {95, 95, 95}));
  connect(IFingerBone.frame_b,fixedTranslation2. frame_a) annotation(Line(visible = true, origin={-45.996,
          -21},                                                                                                    points = {{14.996, 31}, {18.008, 31}, {18.008, 18}, {-18.004, 18}, {-18.004, -49}, {-15.004, -49}}));
  connect(IFingerBone.frame_b,fixedTranslation. frame_a) annotation(Line(visible = true, origin={-55.996,
          39.333},                                                                                                   points = {{24.996, -29.333}, {28.008, -29.333}, {28.008, -16.333}, {-28.004, -16.333}, {-28.004, 45.667}, {-25.004, 45.667}}));
  connect(position4.flange,revolute3. axis) annotation(Line(visible = true, origin={-41.305,
          148.83},                                                                                      points = {{-39.695, -12.479}, {-36.683, -12.479}, {-36.683, 9.395}, {56.53, 9.395}, {56.53, 6.17}}));
  connect(relAngleSensor2.phi_rel,add3. u1) annotation(Line(visible = true, origin={-112.481,
          171.099},                                                                                       points = {{-3.519, 2.901}, {-3.519, -1.45}, {7.038, -1.45}}, color = {0, 0, 127}));
  connect(add3.y,position4. phi_ref) annotation(Line(visible = true, origin={-92.721,
          150.212},                                                                                points = {{10.278, 13.437}, {13.278, 13.437}, {13.278, 0.424}, {-13.279, 0.424}, {-13.279, -13.861}, {-10.279, -13.861}}, color = {0, 0, 127}));
  connect(const4.y,add3. u2) annotation(Line(visible = true, origin={-107.082,
          151.883},                                                                        points = {{-2.918, -5.766}, {0.639, -5.766}, {0.639, 5.766}, {1.639, 5.766}}, color = {0, 0, 127}));
  connect(revolute3.frame_a,IFingerBone. frame_b) annotation(Line(visible = true, origin={-20.438,
          77.5},                                                                                            points = {{25.663, 67.5}, {-7.55, 67.5}, {-7.55, -67.5}, {-10.562, -67.5}}));
  connect(damper2.flange_b,revolute3. axis) annotation(Line(visible = true, origin={10.225,
          161.667},                                                                                     points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
  connect(damper2.flange_a,revolute3. support) annotation(Line(visible = true, origin={-5.839,
          157.857},                                                                                         points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
  connect(revolute3.frame_b,fixedTranslation8. frame_a) annotation(Line(visible = true, origin={15.229,
          157.075},                                                                                                points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
  connect(position.flange,revolute1. axis) annotation(Line(visible = true, origin={40.387,
          52.29},                                                                                    points = {{26.266, -7.29}, {23.254, -7.29}, {23.254, 5.935}, {-36.387, 5.935}, {-36.387, 2.71}}));
  connect(const2.y,add1. u1) annotation(Line(visible = true, origin={130.5,
          65.5},                                                                     points={{9.5,
          -4.5},{-1.5,-4.5},{-1.5,-9.5},{-4.5,-9.5}},                                                                                                color = {0, 0, 127}));
  connect(add1.y,position. phi_ref) annotation(Line(visible = true, origin={93.74,
          47.5},                                                                                        points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
  connect(relAngleSensor.phi_rel,add1. u2) annotation(Line(visible = true, origin={118.4,
          21.8},                                                                                   points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
  connect(damper.flange_b,revolute1. axis) annotation(Line(visible = true, origin={-1,
          61.667},                                                                                 points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
  connect(damper.flange_a,revolute1. support) annotation(Line(visible = true, origin={-17.064,
          57.857},                                                                                        points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
  connect(revolute1.frame_b,fixedTranslation5. frame_a) annotation(Line(visible = true, origin={4.004,
          57.075},                                                                                                 points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
  connect(fixedTranslation3.frame_a,OFingerExtension. frame_b) annotation(Line(visible = true, origin={69.5,
          -2.5},                                                                                                       points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
  connect(fixedTranslation1.frame_a,OFingerExtension. frame_b) annotation(Line(visible = true, origin={63.663,
          21.665},                                                                                                        points={{2.555,
          11.666},{3.555,11.666},{3.555,-11.665},{-9.663,-11.665}}));
  connect(OFingerExtension.frame_a, twoDegreeJoint.frame_b) annotation (
      Line(
      points={{34,10},{14,10}},
      color={95,95,95},
      thickness=0.5));
  connect(IFingerBone.frame_b, twoDegreeJoint.frame_a) annotation (Line(
      points={{-31,10},{-6,10}},
      color={95,95,95},
      thickness=0.5));
  connect(twoDegreeJoint.flange_a2, relAngleSensor.flange_b)
    annotation (Line(points={{8.4971,20},{114,20}}, color={0,0,0}));
  connect(relAngleSensor.flange_a, twoDegreeJoint.flange_b2)
    annotation (Line(points={{94,20},{5.3448,20}}, color={0,0,0}));
  connect(relAngleSensor2.flange_b, twoDegreeJoint.flange_a1) annotation (
      Line(points={{-106,185},{-52,185},{-52,20},{1.6971,20}}, color={0,0,0}));
  connect(relAngleSensor2.flange_a, twoDegreeJoint.flange_b1) annotation (
      Line(points={{-126,185},{-126,185},{-126,20},{-1.4552,20}}, color={0,
          0,0}));
  connect(fixedTranslation1.frame_b, attachPointAnterior) annotation (Line(
      points={{46.218,33.331},{99.109,33.331},{99.109,90},{150,90}},
      color={95,95,95},
      thickness=0.5));
  connect(OFingerExtension.frame_b, frame_b) annotation (Line(
      points={{54,10},{102,10},{102,5},{150,5}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation3.frame_b, attachPointPosterior) annotation (Line(
      points={{54,-15},{54,-16},{54,-16},{54,-16},{54,-80},{148.167,-80}},
      color={95,95,95},
      thickness=0.5));
  connect(IFingerBone.frame_a, frame_a) annotation (Line(
      points={{-51,10},{-96,10},{-96,-1},{-145,-1}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation10.frame_b, threadPointPosterior) annotation (
      Line(
      points={{-8.821,-21.96},{-8.821,-62.98},{0,-62.98},{0,-105}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation5.frame_b, threadPointAnterior) annotation (Line(
      points={{14,70},{14,70},{14,105},{-7.644,105}},
      color={95,95,95},
      thickness=0.5));
  connect(revolute1.frame_a, twoDegreeJoint.frame_resolve) annotation (Line(
      points={{-6,45},{-12,45},{-12,0},{4.2,0}},
      color={95,95,95},
      thickness=0.5));
  connect(anteriorDoubleJointMuscle, magnitudeMuscle1.forcePValue)
    annotation (Line(points={{-148.467,86},{-134,86},{-134,89.4315},{-118.681,
          89.4315}},          color={0,0,127}));
  connect(dirMuscle1.frame_b, fixedTranslation6.frame_b) annotation (Line(
      points={{48,79.6},{52,79.6},{52,80},{54,80}},
      color={95,95,95},
      thickness=0.5));
  connect(magnitudeMuscle1.fMagnitude, dirMuscle.muscleMagnitude)
    annotation (Line(points={{-99.315,89.4092},{-71.6575,89.4092},{-71.6575,
          93.5987},{-42,93.5987}}, color={0,0,127}));
  connect(magnitudeMuscle1.fMagnitude, dirMuscle1.muscleMagnitude)
    annotation (Line(points={{-99.315,89.4092},{-30.6575,89.4092},{-30.6575,
          89.5987},{38,89.5987}}, color={0,0,127}));
  connect(fixedTranslation.frame_b, dirMuscle.frame_a) annotation (Line(
      points={{-61,85},{-56.5,85},{-56.5,83.6},{-52,83.6}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle.frame_b, fixedTranslation8.frame_b) annotation (Line(
      points={{-32,83.6},{-2,83.6},{-2,84},{28,84},{28,170},{25.225,170}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle1.frame_a, fixedTranslation8.frame_b) annotation (Line(
      points={{28,79.6},{28,79.6},{28,170},{25.225,170}},
      color={95,95,95},
      thickness=0.5));
  connect(posteriorDoubleJointMuscle, magnitudeMuscle.forcePValue)
    annotation (Line(points={{-148.053,-82.256},{-135.027,-82.256},{-135.027,
          -82.5685},{-120.681,-82.5685}},          color={0,0,127}));
  connect(dirMuscle2.frame_b, fixedTranslation9.frame_b) annotation (Line(
      points={{-10,-86.4},{10,-86.4},{10,-92},{42,-92},{42,-88},{42,-25},{
          40,-25},{39,-25}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation2.frame_b, dirMuscle2.frame_a) annotation (Line(
      points={{-41,-70},{-41,-80},{-30,-80},{-30,-86.4}},
      color={95,95,95},
      thickness=0.5));
  connect(magnitudeMuscle.fMagnitude, dirMuscle2.muscleMagnitude)
    annotation (Line(points={{-101.315,-82.5908},{-70.6575,-82.5908},{
          -70.6575,-76.4013},{-20,-76.4013}}, color={0,0,127}));
  connect(dirMuscle3.frame_b, fixedTranslation9.frame_b) annotation (Line(
      points={{36,-78.4},{38,-78.4},{38,-25},{39,-25}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle3.frame_a, fixedTranslation7.frame_b) annotation (Line(
      points={{16,-78.4},{8,-78.4},{8,-92},{8,-92},{8,-96},{44,-96},{44,
          -88.736},{55,-88.736}},
      color={95,95,95},
      thickness=0.5));
  connect(magnitudeMuscle.fMagnitude, dirMuscle3.muscleMagnitude)
    annotation (Line(points={{-101.315,-82.5908},{-37.6575,-82.5908},{
          -37.6575,-68.4013},{26,-68.4013}}, color={0,0,127}));
end DoubleBoneJoint;
