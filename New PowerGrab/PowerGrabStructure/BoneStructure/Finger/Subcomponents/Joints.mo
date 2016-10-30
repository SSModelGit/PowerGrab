within PowerGrabStructure.BoneStructure.Finger.Subcomponents;
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
              {-49.5029,10},{-13.7514,10},{-13.7514,67.069},{22,67.069}}, color
            ={0,0,0}));
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
          PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Subcomponents.Examples.RevoluteRestrained
          restrainedRevolute(useAxisFlange=true));
    end OneDegreeJoint;

    model TwoDegreeJoint "Joint with two degrees of freedom"
      extends Templates.TwoDegreeJoint(redeclare
          PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Subcomponents.Examples.RevoluteRestrained
          restrainedRevolute(useAxisFlange=true,
          theta_1=sidetheta_limits[1],
          theta_2=sidetheta_limits[2],
          phi_0_restrained=phi0[1]),              redeclare
          PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Subcomponents.Examples.RevoluteRestrained
          restrainedRevolute1(useAxisFlange=true,
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
