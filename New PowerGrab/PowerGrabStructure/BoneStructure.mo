within PowerGrabStructure;
package BoneStructure "Bone Structure Components"
  package Finger

    package Interfaces
      partial model FingerStructure
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin={130,-94},     extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin={130,114},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin={90,114},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin={50,114},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin={10,114},   extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin={-30,114},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin={-70,114},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin={-110,114},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin={90,-94},     extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin={50,-94},     extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin={10,-94},    extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin={-30,-94},     extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin={-70,-94},     extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin={-110,-94},     extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin={-137.926,
                  0},                                                                                                                       extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
        Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin={-113.296,
                  19.696},                                                                                                                 extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin={-113.175,
                  -22},                                                                                                                  extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end FingerStructure;
    end Interfaces;

    package Templates
      partial model FingerStructure
        extends Interfaces.FingerStructure;
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin={-117.882,
                  45.75},                                                                                                                                                                  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin={-117.948,
                  -39.75},                                                                                                                                                                   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        replaceable Subcomponents.Basic.Templates.BoneJoint boneJoint
          annotation (Placement(transformation(extent={{64,-10},{84,10}})));
        replaceable Subcomponents.Basic.Templates.DoubleBoneJoint doubleBoneJoint
          annotation (Placement(transformation(extent={{-74,-10},{-54,10}})));
        replaceable Subcomponents.Basic.Templates.BoneJoint boneJoint1
          annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
      equation
        connect(anteriorBase.frame_a, frame_7A) annotation (Line(
            points={{-127.882,45.75},{-127.882,81.875},{-110,81.875},{-110,114}},
            color={95,95,95},
            thickness=0.5));
        connect(posteriorBase.frame_a, frame_7P) annotation (Line(
            points={{-127.948,-39.75},{-127.948,-62.875},{-110,-62.875},{-110,-94}},
            color={95,95,95},
            thickness=0.5));

        connect(frame_a, doubleBoneJoint.frame_a) annotation (Line(
            points={{-137.926,0},{-105.963,0},{-74,0}},
            color={95,95,95},
            thickness=0.5));
        connect(doubleBoneJoint.frame_b, boneJoint1.frame_a) annotation (Line(
            points={{-53.899,0.4762},{-41.9495,0.4762},{-41.9495,0},{-30,0}},
            color={95,95,95},
            thickness=0.5));
        connect(boneJoint1.frame_b, boneJoint.frame_a) annotation (Line(
            points={{-9.899,0.4762},{27.0505,0.4762},{27.0505,0},{64,0}},
            color={95,95,95},
            thickness=0.5));
        connect(anteriorBase.frame_b, doubleBoneJoint.frame_a) annotation (Line(
            points={{-107.882,45.75},{-107.882,44.875},{-74,44.875},{-74,0}},
            color={95,95,95},
            thickness=0.5));
        connect(posteriorBase.frame_b, doubleBoneJoint.frame_a) annotation (Line(
            points={{-107.948,-39.75},{-107.948,-38.875},{-74,-38.875},{-74,0}},
            color={95,95,95},
            thickness=0.5));
        connect(sideAnterior, doubleBoneJoint.anteriorDoubleJointMuscle) annotation (
            Line(points={{-113.296,19.696},{-91.648,19.696},{-91.648,10.9603},{
                -70.5892,10.9603}}, color={0,0,127}));
        connect(sidePosterior, doubleBoneJoint.posteriorDoubleJointMuscle)
          annotation (Line(points={{-113.175,-22},{-82,-22},{-82,20},{-58,20},{-58,
                11.0334},{-57.3208,11.0334}}, color={0,0,127}));
        connect(doubleBoneJoint.threadPointAnterior, frame_6A) annotation (Line(
            points={{-64,10},{-68,10},{-68,114},{-70,114}},
            color={95,95,95},
            pattern=LinePattern.Solid));
        connect(doubleBoneJoint.attachPointAnterior, frame_5A) annotation (Line(
            points={{-53.899,8.5714},{-53.899,60.2857},{-30,60.2857},{-30,114}},
            color={95,95,95},
            thickness=0.5));
        connect(boneJoint1.threadPointAnterior, frame_4A) annotation (Line(
            points={{-20,10},{-20,10},{-20,114},{10,114}},
            color={95,95,95},
            pattern=LinePattern.Solid));
        connect(boneJoint1.attachPointAnterior, frame_3A) annotation (Line(
            points={{-9.899,8.5714},{-9.899,60.2857},{50,60.2857},{50,114}},
            color={95,95,95},
            thickness=0.5));
        connect(boneJoint.threadPointAnterior, frame_2A) annotation (Line(
            points={{74,10},{74,10},{74,114},{90,114}},
            color={95,95,95},
            pattern=LinePattern.Solid));
        connect(boneJoint.attachPointAnterior, frame_1A) annotation (Line(
            points={{84.101,8.5714},{84.101,61.2857},{130,61.2857},{130,114}},
            color={95,95,95},
            thickness=0.5));
        connect(boneJoint.attachPointPosterior, frame_1P) annotation (Line(
            points={{84,-7.4},{108,-7.4},{108,-94},{130,-94}},
            color={95,95,95},
            thickness=0.5));
        connect(boneJoint.threadPointPosterior, frame_2P) annotation (Line(
            points={{74,-10},{74,-10},{74,-94},{90,-94}},
            color={95,95,95},
            pattern=LinePattern.Solid));
        connect(boneJoint1.attachPointPosterior, frame_3P) annotation (Line(
            points={{-10,-7.4},{20,-7.4},{20,-94},{50,-94}},
            color={95,95,95},
            thickness=0.5));
        connect(boneJoint1.threadPointPosterior, frame_4P) annotation (Line(
            points={{-20,-10},{-20,-10},{-20,-94},{10,-94}},
            color={95,95,95},
            pattern=LinePattern.Solid));
        connect(doubleBoneJoint.attachPointPosterior, frame_5P) annotation (Line(
            points={{-54,-7.4},{-42,-7.4},{-42,-94},{-30,-94}},
            color={95,95,95},
            thickness=0.5));
        connect(doubleBoneJoint.threadPointPosterior, frame_6P) annotation (Line(
            points={{-64,-10},{-70,-10},{-70,-94}},
            color={95,95,95},
            pattern=LinePattern.Solid));
      end FingerStructure;
    end Templates;

    package Subcomponents
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
            import PowerGrabStructure;
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
            replaceable
              PowerGrabStructure.Muscle.Subcomponents.Interfaces.MagnitudeMuscle
              magnitudeMuscle1 annotation (Placement(transformation(extent={{-120,
                      80},{-100,100}})));
            replaceable
              PowerGrabStructure.Muscle.Subcomponents.Interfaces.DirMuscle
              dirMuscle annotation (Placement(transformation(extent={{-52,74},{
                      -32,94}})));
            replaceable
              PowerGrabStructure.Muscle.Subcomponents.Interfaces.DirMuscle
              dirMuscle1
              annotation (Placement(transformation(extent={{28,70},{48,90}})));
            replaceable
              PowerGrabStructure.Muscle.Subcomponents.Interfaces.MagnitudeMuscle
              magnitudeMuscle annotation (Placement(transformation(extent={{-122,
                      -92},{-102,-72}})));
            replaceable
              PowerGrabStructure.Muscle.Subcomponents.Interfaces.DirMuscle
              dirMuscle2 annotation (Placement(transformation(extent={{-30,-96},
                      {-10,-76}})));
            replaceable
              PowerGrabStructure.Muscle.Subcomponents.Interfaces.DirMuscle
              dirMuscle3 annotation (Placement(transformation(extent={{16,-88},
                      {36,-68}})));
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
            import PowerGrabStructure;
            extends
              PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Templates.DoubleBoneJoint(
              redeclare
                PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
                magnitudeMuscle1,
              redeclare
                PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle
                dirMuscle,
              redeclare
                PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle
                dirMuscle1,
              redeclare
                PowerGrabStructure.Muscle.Subcomponents.Examples.MagnitudeMuscle
                magnitudeMuscle,
              redeclare
                PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle
                dirMuscle2,
              redeclare
                PowerGrabStructure.Muscle.Subcomponents.Examples.LineMuscle
                dirMuscle3,
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
            extends
              PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Templates.BoneJoint(
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

      package Joints

        package Interfaces

          partial model Joint "Joint Interface"
            Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
            Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(transformation(extent = {{84, -16}, {116, 16}})));
            Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a1 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {22, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-23.029,
                      100},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
            Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b1 if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-23, 67.028}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-54.552,
                      100},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
            //  annotation(Icon(coordinateSystem(preserveAspectRatio = false)), Diagram(coordinateSystem(preserveAspectRatio = false)));
            annotation (Icon(graphics={                                                                                                                         Ellipse(visible = true, origin={0,
                        0.756},                                                                                                                                                                              fillColor = {0, 0, 128},
                      fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-94.494, -92.982}, {94.494, 92.982}}), Polygon(visible = true, origin={
                        -0.324,-2.833},                                                                                                                                                                                                        fillColor = {255, 0, 128},
                      fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-49.676, 24.756}, {-1.188, 60.286}, {47.949, 29.292}, {46.437, -57.167}, {-43.521, -57.167}}), Ellipse(visible = true, origin={
                        1.339,-2.268},                                                                                                                                                                                                        fillColor = {0, 0, 255},
                      fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-21.339, -19.655}, {21.339, 19.655}})}));
          end Joint;

          partial model TwoDegreeJoint "Interface of Joint with Two Degrees of Freedom"
            extends Joint;
            Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a2 if
                                                                          useAxisFlange annotation(Placement(visible = true, transformation(origin={92,
                      67.069},                                                                                                                                     extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={44.971,
                      100},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
            Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b2 if
                                                                          useAxisFlange annotation(Placement(visible = true, transformation(origin={47,
                      67.028},                                                                                                                                                 extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={13.448,
                      100},                                                                                                                                                                                                        extent = {{-10, -10}, {10, 10}}, rotation = 0)));
            Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve
              annotation (Placement(transformation(extent={{-14,-116},{18,-84}}),
                  iconTransformation(extent={{-14,-116},{18,-84}})));
          end TwoDegreeJoint;
        end Interfaces;

        package Templates
          partial model OneDegreeJoint "Template of Joint with One Degree of Freedom"
            extends Interfaces.Joint;
            replaceable Subcomponents.Interfaces.RestrainedRevolute
              restrainedRevolute(useAxisFlange=true)
              annotation (Placement(transformation(extent={{-16,-10},{4,10}})));
          equation
            connect(frame_a, restrainedRevolute.frame_a) annotation (Line(
                points={{-100,0},{-58,0},{-16,0}},
                color={95,95,95},
                thickness=0.5));
            connect(restrainedRevolute.frame_b, frame_b) annotation (Line(
                points={{4,0},{52,0},{52,0},{100,0}},
                color={95,95,95},
                thickness=0.5));
            connect(restrainedRevolute.flange_b, flange_b1) annotation (Line(points={
                    {-8.2552,10},{-16,10},{-16,67.028},{-23,67.028}}, color={0,0,0}));
            connect(restrainedRevolute.flange_a, flange_a1) annotation (Line(points={
                    {-3.5029,10},{10,10},{10,67.069},{22,67.069}}, color={0,0,0}));
          end OneDegreeJoint;

          partial model TwoDegreeJoint "Joint with Two Degrees of Freedom"
            extends Interfaces.TwoDegreeJoint;
            replaceable Subcomponents.Interfaces.RestrainedRevolute
              restrainedRevolute(useAxisFlange=true)
              annotation (Placement(transformation(extent={{-62,-10},{-42,10}})));
            replaceable Subcomponents.Interfaces.RestrainedRevolute
              restrainedRevolute1(useAxisFlange=true)
              annotation (Placement(transformation(extent={{6,-10},{26,10}})));
          equation
            connect(frame_a, restrainedRevolute.frame_a) annotation (Line(
                points={{-100,0},{-82,0},{-62,0}},
                color={95,95,95},
                thickness=0.5));
            connect(restrainedRevolute.frame_b, restrainedRevolute1.frame_a)
              annotation (Line(
                points={{-42,0},{-18,0},{6,0}},
                color={95,95,95},
                thickness=0.5));
            connect(restrainedRevolute1.frame_b, frame_b) annotation (Line(
                points={{26,0},{100,0},{100,0}},
                color={95,95,95},
                thickness=0.5));
            connect(restrainedRevolute.flange_b, flange_b1) annotation (Line(points={
                    {-54.2552,10},{-40,10},{-40,67.028},{-23,67.028}}, color={0,0,0}));
            connect(restrainedRevolute.flange_a, flange_a1) annotation (Line(points={
                    {-49.5029,10},{-13.7514,10},{-13.7514,67.069},{22,67.069}}, color=
                   {0,0,0}));
            connect(restrainedRevolute1.flange_b, flange_b2) annotation (Line(points=
                    {{13.7448,10},{30,10},{30,67.028},{47,67.028}}, color={0,0,0}));
            connect(restrainedRevolute1.flange_a, flange_a2) annotation (Line(points=
                    {{18.4971,10},{56,10},{56,67.069},{92,67.069}}, color={0,0,0}));
            connect(restrainedRevolute.frame_b, frame_resolve) annotation (Line(
                points={{-42,0},{-20,0},{-20,-100},{2,-100}},
                color={95,95,95},
                thickness=0.5));
          end TwoDegreeJoint;
        end Templates;

        package Examples
          model OneDegreeJoint "Joint with one degree of freedom"
            extends Templates.OneDegreeJoint(redeclare
                Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
                  useAxisFlange=true));
          end OneDegreeJoint;

          model TwoDegreeJoint "Joint with two degrees of freedom"
            extends Templates.TwoDegreeJoint(redeclare
                Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
                useAxisFlange=true,
                theta_1=sidetheta_limits[1],
                theta_2=sidetheta_limits[2],
                phi_0_restrained=phi0[1]),              redeclare
                Subcomponents.Examples.RevoluteRestrained restrainedRevolute1(
                useAxisFlange=true,
                theta_1=normtheta_limits[1],
                theta_2=normtheta_limits[2],
                phi_0_restrained=phi0[2]));
            parameter Modelica.SIUnits.Angle sidetheta_limits[2] = {0,0};
            parameter Modelica.SIUnits.Angle normtheta_limits[2] = {0,0};
            parameter Modelica.SIUnits.Angle phi0[2]={0,0};
          end TwoDegreeJoint;
        end Examples;

        package Subcomponents
          package Interfaces
            partial model RestrainedRevolute "Interface for Restrained Revolute Joint"

              Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a
                annotation (Placement(transformation(extent={{-116,-16},{-84,16}})));
              Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b
                annotation (Placement(transformation(extent={{84,-16},{116,16}})));
              Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a if useAxisFlange annotation(Placement(visible = true, transformation(origin = {30, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {24.971, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
              Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-15, 67.02800000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-22.552, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
              parameter Boolean useAxisFlange = false "if = true, then axis flange is enabled (connects to the internal revolute joint's axis flange)";
              annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
                    coordinateSystem(preserveAspectRatio=false)));
            end RestrainedRevolute;
          end Interfaces;

          package Examples
            model RevoluteRestrained
              extends
                PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Subcomponents.Interfaces.RestrainedRevolute;
              Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true,
                phi(                                                                      start =     phi_0_restrained,                   fixed =     stateSelect),
                                                                                                                        n = axisRotation,                          cylinderLength = 0.001, cylinderDiameter = 0.001) annotation(Placement(visible = true, transformation(origin = {37.108, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
              Modelica.Mechanics.Rotational.Components.ElastoBacklash elastoBacklash(d = d, c = c, b = totalBacklashAngle, phi_rel0 = 0) annotation(Placement(visible = true, transformation(origin = {24.323, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
              Modelica.Mechanics.Rotational.Components.Disc disc(deltaPhi = brakePlacementAngle) annotation(Placement(visible = true, transformation(origin = {-14.096, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
              parameter Modelica.SIunits.Angle totalBacklashAngle = theta_2 - theta_1;
              parameter Modelica.SIunits.RotationalSpringConstant c = 1000 "Stiffness of the brakes applied on the revolute joint";
              parameter Modelica.SIunits.RotationalDampingConstant d = 1000 "Damping - energy loss - present in the brakes applied on the revolute joint";
              parameter Modelica.SIunits.Angle phi_0_restrained "Initial angle of the revolute joint - must stay within the limits specficied in theta_1 and theta_2";
              parameter Modelica.SIunits.Angle theta_1 "Lower limit for rotation of revolute joint";
              parameter Modelica.SIunits.Angle theta_2 "Upper limit for rotation of revolute joint";
              parameter Real axisRotation[3] = {0, 0, 1};
              parameter Boolean stateSelect = true;
              parameter Modelica.SIunits.Angle brakePlacementAngle = (theta_2 + theta_1) / 2;
            equation
              connect(elastoBacklash.flange_b, revolute.axis) annotation(Line(visible = true, origin = {36.18, 20}, points = {{-1.857, 5}, {0.928, 5}, {0.928, -10}}));
              connect(disc.flange_a, revolute.support) annotation(Line(visible = true, origin = {-2.613, 15.779}, points = {{-21.483, 9.221}, {-24.496, 9.221}, {-24.496, -3.779}, {1.517, -3.779}, {1.517, -2.554}, {33.721, -2.554}, {33.721, -5.779}}));
              connect(flange_a, revolute.axis) annotation(Line(visible = true, origin = {33.554, 55.88}, points = {{-3.554, 11.189}, {-3.554, -12.655}, {3.554, -12.655}, {3.554, -45.88}}));
              connect(flange_b, revolute.support) annotation(Line(visible = true, origin = {8.054, 50.869}, points = {{-23.054, 16.159}, {-23.054, -12.644}, {23.054, -12.644}, {23.054, -40.869}}));
              connect(revolute.frame_b, frame_b) annotation(Line(visible = true, origin = {79.604, 0}, points={{-32.496,
                      0},{20.396,0}}));
              connect(frame_a, revolute.frame_a) annotation(Line(visible = true, origin = {-42.844, 0}, points={{-57.156,
                      0},{69.952,0}}));
              connect(disc.flange_b, elastoBacklash.flange_a) annotation(Line(visible = true, origin = {5.114, 25}, points={{-9.21,0},
                      {9.209,0}}));
              annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true, origin = {0, 0.756}, fillColor = {0, 0, 128},
                        fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-94.494, -92.982}, {94.494, 92.982}}), Polygon(visible = true, origin = {-0.324, -2.833}, fillColor = {255, 0, 128},
                        fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-49.676, 24.756}, {-1.188, 60.286}, {47.949, 29.292}, {46.437, -57.167}, {-43.521, -57.167}}), Ellipse(visible = true, origin = {1.339, -2.268}, fillColor = {0, 0, 255},
                        fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-21.339, -19.655}, {21.339, 19.655}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
            end RevoluteRestrained;
          end Examples;
        end Subcomponents;
      end Joints;

      package Sources "Sources such as load, joint force, and position prescribers"
        model FingerLoad
          Modelica.Blocks.Interfaces.RealInput force annotation(Placement(visible = true, transformation(origin = {-135, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 66.667}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealInput theta1 annotation(Placement(visible = true, transformation(origin = {-135, 7.056}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 6.72}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealInput theta2 annotation(Placement(visible = true, transformation(origin = {-136.995, -62.324}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-92.253, -59.356}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealOutput tau1 annotation(Placement(visible = true, transformation(origin = {125, 82.616}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.31399999999999, 48.132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealOutput tau2 annotation(Placement(visible = true, transformation(origin = {125, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.91200000000001, 13.127}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealOutput tau3 annotation(Placement(visible = true, transformation(origin = {125, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88.438, -22.119}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          parameter Modelica.SIunits.Length r1 "Length of the moment arm about the furthest phalange joint";
          parameter Modelica.SIunits.Length r2 "Length of the moment arm about the middle phalange joint";
          parameter Modelica.SIunits.Length r3 "Length of the moment arm about the closest phalange joint";
        equation
          tau1 = force * r1;
          tau2 = force * r2 * Modelica.Math.cos(theta1);
          tau3 = force * r3 * Modelica.Math.cos(theta1 + theta2);
          annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, origin = {-0.315, 1.218}, fillColor = {128, 0, 128},
                    fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-86.62, -88.782}, {86.62, 88.782}}), Text(visible = true, origin = {-94.494, 97.32899999999999}, extent = {{-29.608, -10.394}, {29.608, 10.394}}, textString = "force"), Text(visible = true, origin = {-96.104, 36.853}, extent = {{-33.896, -9.763999999999999}, {33.896, 9.763999999999999}}, textString = "theta1"), Text(visible = true, origin = {-95.828, -30}, extent = {{-24.172, -10}, {24.172, 10}}, textString = "theta2"), Text(visible = true, origin = {81.813, 64.608}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau1"), Text(visible = true, origin = {81.813, 30}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau2"), Text(visible = true, origin = {81.813, -2.718}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau3")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
        end FingerLoad;
      end Sources;
    end Subcomponents;

    package Examples
      model RealFingerStructure
        extends PowerGrabStructure.BoneStructure.Finger.Templates.FingerStructure(
          redeclare Subcomponents.Basic.Examples.RealBoneDoubleJoint doubleBoneJoint,
          redeclare Subcomponents.Basic.Examples.RealBoneJoint boneJoint1,
          redeclare Subcomponents.Basic.Examples.RealBoneJoint boneJoint);

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
        annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
                  fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
                  fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
                  fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
                  fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
      end RealFingerStructure;
    end Examples;
  end Finger;
end BoneStructure;
