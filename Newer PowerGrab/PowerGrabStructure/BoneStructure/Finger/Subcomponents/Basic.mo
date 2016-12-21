within PowerGrabStructure.BoneStructure.Finger.Subcomponents;
package Basic

  package Interfaces
    partial model BoneJoint

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve threadPointAnterior
        "Anterior muscle threading point" annotation (Placement(
          visible=true,
          transformation(
            origin={-7.644,105},
            extent={{-16,-16},{16,16}},
            rotation=0),
          iconTransformation(
            origin={-0,100},
            extent={{-16,-16},{16,16}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve threadPointPosterior
        "Posterior muscle threading point" annotation (Placement(
          visible=true,
          transformation(
            origin={0,-105},
            extent={{-16,-16},{16,16}},
            rotation=0),
          iconTransformation(
            origin={0,-100},
            extent={{-16,-16},{16,16}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b attachPointAnterior
        "Anterior muscle attachment point" annotation (Placement(
          visible=true,
          transformation(
            origin={150,90},
            extent={{-16,-16},{16,16}},
            rotation=0),
          iconTransformation(
            origin={101.01,85.714},
            extent={{-16,-16},{16,16}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b attachPointPosterior
        "Posterior muscle attachment point" annotation (Placement(
          visible=true,
          transformation(
            origin={148.167,-80},
            extent={{-16,-16},{16,16}},
            rotation=0),
          iconTransformation(
            origin={100,-74},
            extent={{-16,-16},{16,16}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation (Placement(
          visible=true,
          transformation(
            origin={150,5},
            extent={{-16,-16},{16,16}},
            rotation=0),
          iconTransformation(
            origin={101.01,4.762},
            extent={{-16,-16},{16,16}},
            rotation=0)));

      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={ Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end BoneJoint;

    partial model DoubleBoneJoint
      extends BoneJoint;
      Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin={-148.467,
                86},                                                                                                                              extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin={-65.892,
                109.603},                                                                                                                                                                                                        extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin={-148.053,
                -82.256},                                                                                                                               extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
    end DoubleBoneJoint;
  end Interfaces;

  package Templates

    partial model BoneJoint
      extends Interfaces.BoneJoint;
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true,
      r_0(                                                                                                                                                                                 fixed =     false))
                                                                                                                                                                                                        "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin={-55,-4},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
      r_0(                                                                                                               start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin={30,-4},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin={42.218,
                19.331},                                                                                                                                                                                                  extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                           fixed =     false, start =     1.5),cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin={-25,11},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1},
      phi(                                                                                     start =     1.5,                       fixed =     false),
                                                                                                                useAxisFlange = true,                    cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin={-32.475,
                -34},                                                                                                                                                                                                        extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], -diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin={50,-29},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin={-10,
                -50.567},                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin={-25,36},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin={-50,31},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel(
                                                                       fixed =         false))
                                                                                              annotation(Placement(visible = true, transformation(origin={-40,-54},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin={90,6},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin={62.653,
                31},                                                                                                                     extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin={85,-44},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin={47.978,
                -69},                                                                                                               extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin={100,36},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin={135,61},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin={92.781,
                -94},                                                                                                                                                     extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      replaceable Joints.Interfaces.Joint joint
        annotation (Placement(transformation(extent={{-10,-28},{10,-8}})));
    equation
      connect(frame_a,IFingerBone. frame_a) annotation(Line(visible = true, origin={-86.506,
              -4.5},                                                                                  points={{-58.494,
              3.5},{18.494,3.5},{18.494,0.5},{21.506,0.5}}));
      connect(position.flange,revolute1. axis) annotation(Line(visible = true, origin={13.616,
              26},                                                                                    points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
      connect(const2.y,add1. u1) annotation(Line(visible = true, origin={116.5,
              51.5},                                                                     points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
      connect(add1.y,position. phi_ref) annotation(Line(visible = true, origin={79.74,
              33.5},                                                                                        points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel,add1. u2) annotation(Line(visible = true, origin={104.4,
              7.8},                                                                                    points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
      connect(add.y,position1. phi_ref) annotation(Line(visible = true, origin={104.085,
              -69},                                                                              points={{-8.085,
              25},{3.695,25},{3.695,-25},{0.696,-25}},                                                                                                                         color = {0, 0, 127}));
      connect(const1.y,add. u2) annotation(Line(visible = true, origin={67.994,
              -59.5},                                                                     points={{-9.016,
              -9.5},{2.006,-9.5},{2.006,9.5},{5.006,9.5}},                                                                                                                  color = {0, 0, 127}));
      connect(add.u1,relAngleSensor. phi_rel) annotation(Line(visible = true, origin={78.6,
              -19.4},                                                                                              points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
      connect(position1.flange,revolute2. axis) annotation(Line(visible = true, origin={5.944,
              -77.333},                                                                                    points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
      connect(damper1.flange_a,revolute2. support) annotation(Line(visible = true, origin={-46.158,
              -47.333},                                                                                         points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
      connect(damper1.flange_b,revolute2. axis) annotation(Line(visible = true, origin={-30.825,
              -47.333},                                                                                      points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
      connect(damper.flange_b,revolute1. axis) annotation(Line(visible = true, origin={-30,
              27.667},                                                                                 points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper.flange_a,revolute1. support) annotation(Line(visible = true, origin={-46.064,
              23.857},                                                                                        points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute1.frame_b,fixedTranslation5. frame_a) annotation(Line(visible = true, origin={-24.996,
              23.075},                                                                                                  points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(revolute2.frame_b,fixedTranslation4. frame_a) annotation(Line(visible = true, origin={-21.119,
              -42.284},                                                                                                  points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
      connect(fixedTranslation3.frame_a,OFingerExtension. frame_b) annotation(Line(visible = true, origin={55.5,
              -16.5},                                                                                                      points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
      connect(IFingerBone.frame_b,revolute2. frame_a) annotation(Line(visible = true, origin={-43.738,
              -18.333},                                                                                            points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
      connect(fixedTranslation1.frame_a,OFingerExtension. frame_b) annotation(Line(visible = true, origin={49.663,
              7.665},                                                                                                         points={{2.555,
              11.666},{3.555,11.666},{3.555,-11.665},{-9.663,-11.665}}));
      connect(IFingerBone.frame_b,revolute1. frame_a) annotation(Line(visible = true, origin={-39.006,
              3.5},                                                                                            points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
      connect(fixedTranslation5.frame_b, threadPointAnterior) annotation (Line(
          points={{-15,36},{-8,36},{-8,105},{-7.644,105}},
          color={95,95,95},
          thickness=0.5));
      connect(fixedTranslation4.frame_b, threadPointPosterior) annotation (Line(
          points={{0,-50.567},{0,-50.567},{0,-105}},
          color={95,95,95},
          thickness=0.5));
      connect(fixedTranslation3.frame_b, attachPointPosterior) annotation (Line(
          points={{40,-29},{30,-29},{30,-80},{148.167,-80}},
          color={95,95,95},
          thickness=0.5));
      connect(fixedTranslation1.frame_b, attachPointAnterior) annotation (Line(
          points={{32.218,19.331},{25.109,19.331},{25.109,90},{150,90}},
          color={95,95,95},
          thickness=0.5));
      connect(OFingerExtension.frame_b, frame_b) annotation (Line(
          points={{40,-4},{112,-4},{112,5},{150,5}},
          color={95,95,95},
          thickness=0.5));
      connect(IFingerBone.frame_b, joint.frame_a) annotation (Line(
          points={{-45,-4},{-27.5,-4},{-27.5,-18},{-10,-18}},
          color={95,95,95},
          thickness=0.5));
      connect(joint.frame_b, OFingerExtension.frame_a) annotation (Line(
          points={{10,-18},{16,-18},{16,-4},{20,-4}},
          color={95,95,95},
          thickness=0.5));
      connect(relAngleSensor.flange_a, joint.flange_b1) annotation (Line(points={{80,6},{
              -6,6},{-6,-8},{-5.4552,-8}},         color={0,0,0}));
      connect(relAngleSensor.flange_b, joint.flange_a1) annotation (Line(points={{100,6},
              {100,6},{100,-8},{12,-8},{12,-8},{-2.3029,-8}},        color={0,0,
              0}));
    end BoneJoint;

    partial model DoubleBoneJoint
      extends Interfaces.DoubleBoneJoint;
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true,
      r_0(                                                                                                                                                                                 fixed =     false))
                                                                                                                                                                                                        "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin={-41,10},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone,
      r_0(                                                                                                               fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin={44,10},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin={56.218,
                33.331},                                                                                                                                                                                                  extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true,
      phi(                                                                                                           fixed =     false, start =     1.5),cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin={4,45},      extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin={64,-15},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin={4,70},      extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin={-21,65},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin={104,20},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin={76.653,
                45},                                                                                                                     extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin={114,50},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin={151,61},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.1}) annotation(Placement(visible = true, transformation(origin={-71,85},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin={-51,-70},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin={64,80},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin={65,
                -88.736},                                                                                                                                                                                            extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin={-9.775,
                165},                                                                                                                                                    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin={15.225,
                170},                                                                                                                                                                         extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0},
      phi(                                                                                     fixed =     false, start =     1.5),useAxisFlange = true, cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin={15.225,
                145},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin={-116,185},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin={-91,
                136.351},                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin={-121,
                146.117},                                                                                                             extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin={-93.443,
                163.649},                                                                                                               extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin={29,-25},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin={-18.821,
                -21.96},                                                                                                                                                                             extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      replaceable Joints.Templates.TwoDegreeJoint twoDegreeJoint
        annotation (Placement(transformation(extent={{-6,0},{14,20}})));
      replaceable Muscle.Subcomponents.Interfaces.MagnitudeMuscle
        magnitudeMuscle1
        annotation (Placement(transformation(extent={{-120,80},{-100,100}})));
      replaceable Muscle.Subcomponents.Interfaces.DirMuscle dirMuscle
        annotation (Placement(transformation(extent={{-52,74},{-32,94}})));
      replaceable Muscle.Subcomponents.Interfaces.DirMuscle dirMuscle1
        annotation (Placement(transformation(extent={{28,70},{48,90}})));
      replaceable Muscle.Subcomponents.Interfaces.MagnitudeMuscle
        magnitudeMuscle
        annotation (Placement(transformation(extent={{-122,-92},{-102,-72}})));
      replaceable Muscle.Subcomponents.Interfaces.DirMuscle dirMuscle2
        annotation (Placement(transformation(extent={{-30,-96},{-10,-76}})));
      replaceable Muscle.Subcomponents.Interfaces.DirMuscle dirMuscle3
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
        annotation (Line(points={{-148.467,86},{-134,86},{-134,89.4315},{
              -118.681,89.4315}}, color={0,0,127}));
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
        annotation (Line(points={{-148.053,-82.256},{-135.027,-82.256},{
              -135.027,-82.5685},{-120.681,-82.5685}}, color={0,0,127}));
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
  end Templates;

  package Examples

    model RealBoneDoubleJoint
      extends PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Templates.DoubleBoneJoint(
        redeclare Muscle.Subcomponents.Examples.MagnitudeMuscle
          magnitudeMuscle1,
        redeclare Muscle.Subcomponents.Examples.LineMuscle dirMuscle,
        redeclare Muscle.Subcomponents.Examples.LineMuscle dirMuscle1,
        redeclare Muscle.Subcomponents.Examples.MagnitudeMuscle magnitudeMuscle,

        redeclare Muscle.Subcomponents.Examples.LineMuscle dirMuscle2,
        redeclare Muscle.Subcomponents.Examples.LineMuscle dirMuscle3,
        redeclare Joints.Examples.TwoDegreeJoint twoDegreeJoint);
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
      parameter Boolean torD = true "True if direct torque on joint is desired" annotation(Dialog(tab = "Advanced", group = "Parameters"));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-105, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-50, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide"), Text(visible = true, origin = {-5.816, 146.068}, extent = {{-34.184, -6.068}, {34.184, 6.068}}, textString = "doubleJointControl"), Line(visible = true, origin = {-7.817, 134.041}, points = {{0, -5.959}, {0, 5.959}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end RealBoneDoubleJoint;

    model RealBoneJoint
      extends PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Templates.BoneJoint(
          redeclare Joints.Examples.OneDegreeJoint joint);
      parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
      parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
      parameter Modelica.SIunits.Angle phi_0_restrained;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      parameter Boolean torD = true "True if direct torque on joint is desired";
      parameter Boolean stateSelect = true;
      parameter Boolean closedLoop = true;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end RealBoneJoint;
  end Examples;
end Basic;
