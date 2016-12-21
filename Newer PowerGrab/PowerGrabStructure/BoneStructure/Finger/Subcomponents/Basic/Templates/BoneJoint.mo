within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Templates;
partial model BoneJoint
  extends Interfaces.BoneJoint;
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone                                                                                                                               "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin={-55,-4},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin={30,-4},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation OFingerAnteriorSurfaceOrientation
    "Second Bone Anterior Surface Orientation" annotation (Placement(visible=
          true, transformation(
        origin={42.218,19.331},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute anteriorMuscleAttachmentPoint annotation (Placement(visible=true,
        transformation(
        origin={-25,11},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute posteriorMuscleAttachmentPoint annotation (Placement(visible=true,
        transformation(
        origin={-32.475,-34},
        extent={{-10,10},{10,-10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation OFingerPosteriorSurfaceOrientation
    "Second Bone Posterior Surface Orientation" annotation (Placement(visible=
          true, transformation(
        origin={50,-29},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorSurfaceOrientation
    "Posterior Muscle Attachment Point Surface Orientation" annotation (
      Placement(visible=true, transformation(
        origin={-10,-50.567},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorSurfaceOrientation
    "Anterior Muscle Attachment Point Surface Orientation" annotation (
      Placement(visible=true, transformation(
        origin={-25,36},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.Rotational.Components.Damper damperAnterior annotation (Placement(visible=true, transformation(
        origin={-50,31},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.Rotational.Components.Damper damperPosterior annotation (Placement(visible=true, transformation(
        origin={-40,-54},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin={90,6},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position anteriorMuscleAttachmentPointPosition
    annotation (Placement(visible=true, transformation(
        origin={62.653,31},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Blocks.Math.Add posteriorMuscleAttachmentPositionValue
    annotation (Placement(visible=true, transformation(
        origin={85,-44},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant posteriorOffset
    "Posterior Muscle Attachment Point Position Offset" annotation (Placement(
        visible=true, transformation(
        origin={47.978,-69},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Math.Add anteriorMuscleAttachmentPositionValue
    annotation (Placement(visible=true, transformation(
        origin={100,36},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant anteriorOffset
    "Anterior Muscle Attachment Point Position Offset" annotation (Placement(
        visible=true, transformation(
        origin={135,61},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Mechanics.Rotational.Sources.Position posteriorMuscleAttachmentPointPosition annotation (Placement(visible=true, transformation(
        origin={92.781,-94},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  replaceable Joints.Interfaces.Joint joint
    annotation (Placement(transformation(extent={{-10,-28},{10,-8}})));
equation
  connect(frame_a,IFingerBone. frame_a) annotation(Line(visible = true, origin={-86.506,
          -4.5},                                                                                  points={{-58.494,
          3.5},{18.494,3.5},{18.494,0.5},{21.506,0.5}}));
  connect(anteriorMuscleAttachmentPointPosition.flange,
    anteriorMuscleAttachmentPoint.axis) annotation (Line(
      visible=true,
      origin={13.616,26},
      points={{39.037,5},{-0.21,5},{-0.21,-5},{-38.616,-5}}));
  connect(anteriorOffset.y, anteriorMuscleAttachmentPositionValue.u1)
    annotation (Line(
      visible=true,
      origin={116.5,51.5},
      points={{7.5,9.5},{-1.5,9.5},{-1.5,-9.5},{-4.5,-9.5}},
      color={0,0,127}));
  connect(anteriorMuscleAttachmentPositionValue.y,
    anteriorMuscleAttachmentPointPosition.phi_ref) annotation (Line(
      visible=true,
      origin={79.74,33.5},
      points={{9.26,2.5},{-2.087,2.5},{-2.087,-2.5},{-5.087,-2.5}},
      color={0,0,127}));
  connect(relAngleSensor.phi_rel, anteriorMuscleAttachmentPositionValue.u2)
    annotation (Line(
      visible=true,
      origin={104.4,7.8},
      points={{-14.4,-12.8},{-14.4,-15.8},{10.6,-15.8},{10.6,22.2},{7.6,22.2}},
      color={0,0,127}));

  connect(posteriorMuscleAttachmentPositionValue.y,
    posteriorMuscleAttachmentPointPosition.phi_ref) annotation (Line(
      visible=true,
      origin={104.085,-69},
      points={{-8.085,25},{3.695,25},{3.695,-25},{0.696,-25}},
      color={0,0,127}));
  connect(posteriorOffset.y, posteriorMuscleAttachmentPositionValue.u2)
    annotation (Line(
      visible=true,
      origin={67.994,-59.5},
      points={{-9.016,-9.5},{2.006,-9.5},{2.006,9.5},{5.006,9.5}},
      color={0,0,127}));
  connect(posteriorMuscleAttachmentPositionValue.u1, relAngleSensor.phi_rel)
    annotation (Line(
      visible=true,
      origin={78.6,-19.4},
      points={{-5.6,-18.6},{-8.6,-18.6},{-8.6,11.4},{11.4,11.4},{11.4,14.4}},
      color={0,0,127}));
  connect(posteriorMuscleAttachmentPointPosition.flange,
    posteriorMuscleAttachmentPoint.axis) annotation (Line(
      visible=true,
      origin={5.944,-77.333},
      points={{76.837,-16.667},{-38.419,-16.667},{-38.419,33.333}}));
  connect(damperPosterior.flange_a, posteriorMuscleAttachmentPoint.support)
    annotation (Line(
      visible=true,
      origin={-46.158,-47.333},
      points={{-3.842,-6.667},{-3.842,3.333},{7.683,3.333}}));
  connect(damperPosterior.flange_b, posteriorMuscleAttachmentPoint.axis)
    annotation (Line(
      visible=true,
      origin={-30.825,-47.333},
      points={{0.825,-6.667},{0.825,3.333},{-1.65,3.333}}));
  connect(damperAnterior.flange_b, anteriorMuscleAttachmentPoint.axis)
    annotation (Line(
      visible=true,
      origin={-30,27.667},
      points={{-10,3.333},{5,3.333},{5,-6.667}}));
  connect(damperAnterior.flange_a, anteriorMuscleAttachmentPoint.support)
    annotation (Line(
      visible=true,
      origin={-46.064,23.857},
      points={{-13.936,7.143},{-15.161,7.143},{-15.161,-4.082},{7.064,-4.082},{
          7.064,-1.632},{15.064,-1.632},{15.064,-2.857}}));
  connect(anteriorMuscleAttachmentPoint.frame_b, anteriorSurfaceOrientation.frame_a)
    annotation (Line(
      visible=true,
      origin={-24.996,23.075},
      points={{9.996,-12.075},{11.008,-12.075},{11.008,-0.85},{-11.004,-0.85},{
          -11.004,12.925},{-10.004,12.925}}));
  connect(posteriorMuscleAttachmentPoint.frame_b, posteriorSurfaceOrientation.frame_a)
    annotation (Line(
      visible=true,
      origin={-21.119,-42.284},
      points={{-1.356,8.284000000000001},{0.119,8.284000000000001},{0.119,-8.282999999999999},
          {1.119,-8.282999999999999}}));
  connect(OFingerPosteriorSurfaceOrientation.frame_a, OFingerExtension.frame_b)
    annotation (Line(
      visible=true,
      origin={55.5,-16.5},
      points={{4.5,-12.5},{5.5,-12.5},{5.5,12.5},{-15.5,12.5}}));
  connect(IFingerBone.frame_b, posteriorMuscleAttachmentPoint.frame_a)
    annotation (Line(
      visible=true,
      origin={-43.738,-18.333},
      points={{-1.262,14.333},{1.75,14.333},{1.75,1.333},{-1.75,1.333},{-1.75,-15.667},
          {1.263,-15.667}}));
  connect(OFingerAnteriorSurfaceOrientation.frame_a, OFingerExtension.frame_b)
    annotation (Line(
      visible=true,
      origin={49.663,7.665},
      points={{2.555,11.666},{3.555,11.666},{3.555,-11.665},{-9.663,-11.665}}));
  connect(IFingerBone.frame_b, anteriorMuscleAttachmentPoint.frame_a)
    annotation (Line(
      visible=true,
      origin={-39.006,3.5},
      points={{-5.994,-7.5},{0.994,-7.5},{0.994,7.5},{4.006,7.5}}));
  connect(anteriorSurfaceOrientation.frame_b, threadPointAnterior) annotation (
      Line(
      points={{-15,36},{-8,36},{-8,105},{-7.644,105}},
      color={95,95,95},
      thickness=0.5));
  connect(posteriorSurfaceOrientation.frame_b, threadPointPosterior)
    annotation (Line(
      points={{0,-50.567},{0,-50.567},{0,-105}},
      color={95,95,95},
      thickness=0.5));
  connect(OFingerPosteriorSurfaceOrientation.frame_b, attachPointPosterior)
    annotation (Line(
      points={{40,-29},{30,-29},{30,-80},{148.167,-80}},
      color={95,95,95},
      thickness=0.5));
  connect(OFingerAnteriorSurfaceOrientation.frame_b, attachPointAnterior)
    annotation (Line(
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
  annotation (Diagram(graphics={Text(
          extent={{-22,-34},{30,-36}},
          lineColor={28,108,200},
          textString="Restrained Revolute Joint")}));
end BoneJoint;
