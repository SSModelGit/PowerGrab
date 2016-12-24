within PowerGrabStructure.Finger;
package Muscle "Muscle Components"

  package Interfaces
    partial model MuscleArray

      Modelica.Blocks.Interfaces.RealInput perFDistal annotation(Placement(visible = true, transformation(origin = {-140, 56.637}, extent = {{-11.637, -11.637}, {11.637, 11.637}}, rotation = 0), iconTransformation(origin = {-97.643, 73.91500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput perMDistal annotation(Placement(visible = true, transformation(origin = {-142.648, 27.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -4.762}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput perCDistal annotation(Placement(visible = true, transformation(origin = {-144.38, -25.62}, extent = {{-10.62, -10.62}, {10.62, 10.62}}, rotation = 0), iconTransformation(origin = {-100, -77.172}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1 annotation(Placement(visible = true, transformation(origin = {149, 86}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 97}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2 annotation(Placement(visible = true, transformation(origin = {149, 61}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 63}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3 annotation(Placement(visible = true, transformation(origin = {149, 36}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 30}, extent = {{-13.164, -13.164}, {13.164, 13.164}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4 annotation(Placement(visible = true, transformation(origin = {149, 11}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -2.875}, extent = {{-12.875, -12.875}, {12.875, 12.875}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5 annotation(Placement(visible = true, transformation(origin = {149, -14}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -35.089}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6 annotation(Placement(visible = true, transformation(origin = {149, -39}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -67.505}, extent = {{-12.495, -12.495}, {12.495, 12.495}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7 annotation(Placement(visible = true, transformation(origin = {149, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-13.082, -13.082}, {13.082, 13.082}}, rotation = 0)));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {85.672, 96.699}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "1"), Text(visible = true, origin = {85.483, 58.976}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "2"), Text(visible = true, origin = {84.663, 30}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "3"), Text(visible = true, origin = {85.73399999999999, -34.066}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "5"), Text(visible = true, origin = {85.544, -67.265}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "6"), Text(visible = true, origin = {85.355, -96.684}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "7"), Text(visible = true, origin = {85.544, -4.899}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "4"), Polygon(visible = true, origin = {-26.359, -65.02200000000001}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-23.641, -11.833}, {-0.729, -24.978}, {23.839, 13.366}, {0.531, 23.445}}), Polygon(visible = true, origin = {-8.209, -22.521}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-17.619, -19.056}, {6.319, -29.766}, {18.209, 24.411}, {-6.91, 24.411}}), Polygon(visible = true, origin = {-2.56, 28.978}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-12.56, -26.458}, {12.56, -26.458}, {12.56, 26.458}, {-12.56, 26.458}}), Polygon(visible = true, origin = {-9.390000000000001, 73.033}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-6.359, -16.967}, {21.359, -16.967}, {5.61, 16.967}, {-20.61, 16.967}}), Rectangle(visible = true, origin = {4.41, 74.018}, fillColor = {255, 102, 102},
                fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-17.564, -75.982}, fillColor = {128, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-10, -4.018}, fillColor = {255, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})),
                  Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end MuscleArray;
  end Interfaces;

  package Templates
    partial model MuscleArray
      extends Interfaces.MuscleArray;
      replaceable Subcomponents.Interfaces.MagnitudeMuscle fDistalMagnitude
        annotation (Placement(transformation(extent={{-112,46},{-92,66}})));
      replaceable Subcomponents.Interfaces.MagnitudeMuscle mDistalMagnitude
        annotation (Placement(transformation(extent={{-116,18},{-96,38}})));
      replaceable Subcomponents.Interfaces.MagnitudeMuscle cDistalMagnitude
        annotation (Placement(transformation(extent={{-114,-36},{-94,-16}})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={24,28})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle1 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={44,-26})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle2 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-16,62})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle3 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-12,28})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle4 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-12,-10})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle5 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-52,84})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle6 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-50,48})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle7 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-50,14})));
      replaceable Subcomponents.Interfaces.DirMuscle dirMuscle8 annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-48,-38})));
    equation
      connect(perFDistal, fDistalMagnitude.forcePValue) annotation (Line(points={
              {-140,56.637},{-125,56.637},{-125,55.4315},{-110.681,55.4315}},
            color={0,0,127}));
      connect(perMDistal, mDistalMagnitude.forcePValue) annotation (Line(points={
              {-142.648,27.648},{-129.324,27.648},{-129.324,27.4315},{-114.681,
              27.4315}}, color={0,0,127}));
      connect(perCDistal, cDistalMagnitude.forcePValue) annotation (Line(points={
              {-144.38,-25.62},{-132.19,-25.62},{-132.19,-26.5685},{-112.681,
              -26.5685}}, color={0,0,127}));
      connect(dirMuscle.frame_b, frame_5) annotation (Line(
          points={{24.4,38},{88,38},{88,-14},{149,-14}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle.frame_a, frame_6) annotation (Line(
          points={{24.4,18},{24,18},{24,-39},{149,-39}},
          color={95,95,95},
          thickness=0.5));
      connect(cDistalMagnitude.fMagnitude, dirMuscle.muscleMagnitude) annotation (
         Line(points={{-93.315,-26.5908},{-39.6575,-26.5908},{-39.6575,28},{
              14.4013,28}}, color={0,0,127}));
      connect(cDistalMagnitude.fMagnitude, dirMuscle1.muscleMagnitude)
        annotation (Line(points={{-93.315,-26.5908},{-29.6575,-26.5908},{-29.6575,
              -26},{34.4013,-26}}, color={0,0,127}));
      connect(dirMuscle1.frame_b, frame_6) annotation (Line(
          points={{44.4,-16},{98,-16},{98,-39},{149,-39}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle1.frame_a, frame_7) annotation (Line(
          points={{44.4,-36},{44,-36},{44,-64},{149,-64}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle2.frame_b, frame_3) annotation (Line(
          points={{-15.6,72},{68,72},{68,36},{149,36}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle2.frame_a, frame_4) annotation (Line(
          points={{-15.6,52},{66,52},{66,11},{149,11}},
          color={95,95,95},
          thickness=0.5));
      connect(mDistalMagnitude.fMagnitude, dirMuscle2.muscleMagnitude)
        annotation (Line(points={{-95.315,27.4092},{-35.6575,27.4092},{-35.6575,
              62},{-25.5987,62}}, color={0,0,127}));
      connect(mDistalMagnitude.fMagnitude, dirMuscle3.muscleMagnitude)
        annotation (Line(points={{-95.315,27.4092},{-59.6575,27.4092},{-59.6575,
              28},{-21.5987,28}}, color={0,0,127}));
      connect(dirMuscle3.frame_b, frame_4) annotation (Line(
          points={{-11.6,38},{68,38},{68,11},{149,11}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle3.frame_a, frame_6) annotation (Line(
          points={{-11.6,18},{68,18},{68,-39},{149,-39}},
          color={95,95,95},
          thickness=0.5));
      connect(mDistalMagnitude.fMagnitude, dirMuscle4.muscleMagnitude)
        annotation (Line(points={{-95.315,27.4092},{-58.6575,27.4092},{-58.6575,
              -10},{-21.5987,-10}}, color={0,0,127}));
      connect(dirMuscle4.frame_b, frame_6) annotation (Line(
          points={{-11.6,0},{68,0},{68,-39},{149,-39}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle4.frame_a, frame_7) annotation (Line(
          points={{-11.6,-20},{-12,-20},{-12,-64},{149,-64}},
          color={95,95,95},
          thickness=0.5));
      connect(fDistalMagnitude.fMagnitude, dirMuscle5.muscleMagnitude)
        annotation (Line(points={{-91.315,55.4092},{-91.315,67.7046},{-61.5987,
              67.7046},{-61.5987,84}}, color={0,0,127}));
      connect(dirMuscle5.frame_b, frame_1) annotation (Line(
          points={{-51.6,94},{44,94},{44,86},{149,86}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle5.frame_a, frame_2) annotation (Line(
          points={{-51.6,74},{46,74},{46,61},{149,61}},
          color={95,95,95},
          thickness=0.5));
      connect(fDistalMagnitude.fMagnitude, dirMuscle6.muscleMagnitude)
        annotation (Line(points={{-91.315,55.4092},{-75.6575,55.4092},{-75.6575,
              48},{-59.5987,48}}, color={0,0,127}));
      connect(dirMuscle6.frame_b, frame_2) annotation (Line(
          points={{-49.6,58},{50,58},{50,61},{149,61}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle6.frame_a, frame_4) annotation (Line(
          points={{-49.6,38},{50,38},{50,11},{149,11}},
          color={95,95,95},
          thickness=0.5));
      connect(fDistalMagnitude.fMagnitude, dirMuscle7.muscleMagnitude)
        annotation (Line(points={{-91.315,55.4092},{-91.315,34.7046},{-59.5987,
              34.7046},{-59.5987,14}}, color={0,0,127}));
      connect(dirMuscle7.frame_b, frame_4) annotation (Line(
          points={{-49.6,24},{52,24},{52,11},{149,11}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle7.frame_a, frame_6) annotation (Line(
          points={{-49.6,4},{50,4},{50,-39},{149,-39}},
          color={95,95,95},
          thickness=0.5));
      connect(fDistalMagnitude.fMagnitude, dirMuscle8.muscleMagnitude)
        annotation (Line(points={{-91.315,55.4092},{-91.315,9.7046},{-57.5987,
              9.7046},{-57.5987,-38}}, color={0,0,127}));
      connect(dirMuscle8.frame_b, frame_6) annotation (Line(
          points={{-47.6,-28},{50,-28},{50,-39},{149,-39}},
          color={95,95,95},
          thickness=0.5));
      connect(dirMuscle8.frame_a, frame_7) annotation (Line(
          points={{-47.6,-48},{50,-48},{50,-64},{149,-64}},
          color={95,95,95},
          thickness=0.5));
    end MuscleArray;
  end Templates;

  package Subcomponents

    package Interfaces

      partial model MagnitudeMuscle

        Modelica.Blocks.Interfaces.RealInput forcePValue "Percent value of total force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.807, -5.685}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput fMagnitude annotation(Placement(visible = true, transformation(origin = {31.75, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106.85, -5.908}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end MagnitudeMuscle;

      partial model DirMuscle

        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput muscleMagnitude "Percent value of total anterior force" annotation(Placement(visible = true, transformation(origin = {-145, -17.63}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 95.98699999999999}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {128, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end DirMuscle;
    end Interfaces;

    package Examples

      model MagnitudeMuscle
        extends
          PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.MagnitudeMuscle;
        parameter Modelica.SIunits.Force f_max "Maximum value for anterior muscle force";
      equation
        fMagnitude = forcePValue * f_max;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end MagnitudeMuscle;

      model LineMuscle

        extends
          PowerGrabStructure.Finger.Muscle.Subcomponents.Interfaces.DirMuscle;
        Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LineMuscle(lineShapeColor = muscleColor, lineShapeWidth = 0.001, lineShapeHeight = 0.001) annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
        Modelica.Mechanics.Translational.Sources.Force forceMagnitude(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-80, -17.356}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

        parameter Integer muscleColor[3] = {155, 0, 0};
      equation
        connect(forceMagnitude.flange, LineMuscle.flange_a) annotation(Line(visible = true, origin = {-27.333, -4.904}, points = {{-42.667, -12.452}, {21.333, -12.452}, {21.333, 24.904}}, color = {0, 127, 0}));
        connect(muscleMagnitude, forceMagnitude.f) annotation(Line(visible = true, origin = {-106.75, -17.493}, points = {{-38.25, -0.137}, {11.75, -0.137}, {11.75, 0.137}, {14.75, 0.137}}, color = {0, 0, 127}));
        connect(LineMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 43.395}, points={{-89.479,
                -13.395},{23.493,-13.395},{23.493,13.394},{42.493,13.394}}));
        connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
        connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.418}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
        connect(frame_a, LineMuscle.frame_a) annotation(Line(visible = true, origin = {-44.256, 43.717}, points = {{-90.744, 13.717}, {28.244, 13.717}, {28.244, -13.717}, {34.256, -13.717}}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {128, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end LineMuscle;
    end Examples;
  end Subcomponents;

  package Examples
    model FingerMuscleLineArray
      extends PowerGrabStructure.Finger.Muscle.Templates.MuscleArray(
        redeclare Subcomponents.Examples.MagnitudeMuscle cDistalMagnitude(f_max
            =maxCDistal),
        redeclare Subcomponents.Examples.MagnitudeMuscle mDistalMagnitude(f_max
            =maxMDistal),
        redeclare Subcomponents.Examples.MagnitudeMuscle fDistalMagnitude(f_max
            =maxFDistal),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle5(muscleColor=
              muscleColorF),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle6(muscleColor=
              muscleColorF),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle7(muscleColor=
              muscleColorF),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle8(muscleColor=
              muscleColorF),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle2(muscleColor=
              muscleColorM),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle3(muscleColor=
              muscleColorM),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle4(muscleColor=
              muscleColorM),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle(muscleColor=
              muscleColorC),
        redeclare Subcomponents.Examples.LineMuscle dirMuscle1(muscleColor=
              muscleColorC));

      parameter Modelica.SIunits.Force maxFDistal;
      parameter Modelica.SIunits.Force maxMDistal;
      parameter Modelica.SIunits.Force maxCDistal;
      parameter Integer muscleColorF[3] = {255, 0, 0};
      parameter Integer muscleColorM[3] = {155, 0, 0};
      parameter Integer muscleColorC[3] = {75, 0, 0};
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {85.672, 96.699}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "1"), Text(visible = true, origin = {85.483, 58.976}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "2"), Text(visible = true, origin = {84.663, 30}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "3"), Text(visible = true, origin = {85.73399999999999, -34.066}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "5"), Text(visible = true, origin = {85.544, -67.265}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "6"), Text(visible = true, origin = {85.355, -96.684}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "7"), Text(visible = true, origin = {85.544, -4.899}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "4"), Polygon(visible = true, origin = {-26.359, -65.02200000000001}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-23.641, -11.833}, {-0.729, -24.978}, {23.839, 13.366}, {0.531, 23.445}}), Polygon(visible = true, origin = {-8.209, -22.521}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-17.619, -19.056}, {6.319, -29.766}, {18.209, 24.411}, {-6.91, 24.411}}), Polygon(visible = true, origin = {-2.56, 28.978}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-12.56, -26.458}, {12.56, -26.458}, {12.56, 26.458}, {-12.56, 26.458}}), Polygon(visible = true, origin = {-9.390000000000001, 73.033}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-6.359, -16.967}, {21.359, -16.967}, {5.61, 16.967}, {-20.61, 16.967}}), Rectangle(visible = true, origin = {4.41, 74.018}, fillColor = {255, 102, 102},
                fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-17.564, -75.982}, fillColor = {128, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-10, -4.018}, fillColor = {255, 0, 0},
                fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end FingerMuscleLineArray;
  end Examples;
end Muscle;
