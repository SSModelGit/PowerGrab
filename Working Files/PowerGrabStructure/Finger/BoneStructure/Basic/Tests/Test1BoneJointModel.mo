within PowerGrabStructure.Finger.BoneStructure.Basic.Tests;
model Test1BoneJointModel
  Examples.RealBoneJoint realBoneJoint(
    r_IFingerBone={0.02,0,0},
    diameterIFingerBone=0.018,
    r_shape_OFingerBone={0.015,0,0},
    diameterOFingerBone=0.01,
    phi_0_restrained=0.087266462599716)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  inner Modelica.Mechanics.MultiBody.World world(g=0)
    annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation
    anteriorBaseMuscleAttachmentPoint(r={0.01,0,0})
    annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation
    posteriorBaseMuscleAttachmentPoint(r={-0.01,0,0})
    annotation (Placement(transformation(extent={{-50,-30},{-30,-10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation componentPlacement(n={0,0,1},
      angle=90)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Muscle.Subcomponents.Examples.LineMuscle anteriorLowerMuscleConnection
    annotation (Placement(transformation(extent={{-24,10},{-4,30}})));
  Muscle.Subcomponents.Examples.LineMuscle posteriorLowerMuscleConnection
    annotation (Placement(transformation(extent={{-24,-10},{-4,-30}})));
  Muscle.Subcomponents.Examples.LineMuscle anteriorUpperMuscleConnection
    annotation (Placement(transformation(extent={{4,30},{24,50}})));
  Muscle.Subcomponents.Examples.LineMuscle posteriorUpperMuscleConnection
    annotation (Placement(transformation(extent={{4,-30},{24,-50}})));
  Muscle.Subcomponents.Examples.MagnitudeMuscle anteriorMuscle(f_max=25)
    annotation (Placement(transformation(extent={{-52,60},{-32,80}})));
  Muscle.Subcomponents.Examples.MagnitudeMuscle posteriorMuscle(f_max=100)
    annotation (Placement(transformation(extent={{-48,-76},{-28,-56}})));
  Modelica.Blocks.Sources.Constant zeroValue(k=0)
    annotation (Placement(transformation(extent={{-148,30},{-128,50}})));
  Modelica.Blocks.Sources.Constant anteriorUpperMuscleActuationPercentConstant(
      k=1) annotation (Placement(transformation(extent={{-126,60},{-106,80}})));
equation
  connect(world.frame_b, componentPlacement.frame_a) annotation (Line(
      points={{-70,0},{-60,0},{-50,0}},
      color={95,95,95},
      thickness=0.5));
  connect(world.frame_b, anteriorBaseMuscleAttachmentPoint.frame_a) annotation (
     Line(
      points={{-70,0},{-60,0},{-60,20},{-50,20}},
      color={95,95,95},
      thickness=0.5));
  connect(world.frame_b, posteriorBaseMuscleAttachmentPoint.frame_a)
    annotation (Line(
      points={{-70,0},{-60,0},{-60,-20},{-50,-20}},
      color={95,95,95},
      thickness=0.5));
  connect(componentPlacement.frame_b, realBoneJoint.frame_a) annotation (Line(
      points={{-30,0},{-10,0}},
      color={95,95,95},
      thickness=0.5));
  connect(realBoneJoint.threadPointAnterior, anteriorLowerMuscleConnection.frame_b)
    annotation (Line(
      points={{0,10},{0,19.6},{-4,19.6}},
      color={95,95,95},
      pattern=LinePattern.Dot));
  connect(anteriorBaseMuscleAttachmentPoint.frame_b,
    anteriorLowerMuscleConnection.frame_a) annotation (Line(
      points={{-30,20},{-26,20},{-26,19.6},{-24,19.6}},
      color={95,95,95},
      thickness=0.5));
  connect(posteriorBaseMuscleAttachmentPoint.frame_b,
    posteriorLowerMuscleConnection.frame_a) annotation (Line(
      points={{-30,-20},{-28,-20},{-28,-19.6},{-24,-19.6}},
      color={95,95,95},
      thickness=0.5));
  connect(realBoneJoint.threadPointPosterior, posteriorLowerMuscleConnection.frame_b)
    annotation (Line(
      points={{0,-10},{0,-10},{0,-19.6},{-4,-19.6}},
      color={95,95,95},
      pattern=LinePattern.Dot));
  connect(realBoneJoint.threadPointAnterior, anteriorUpperMuscleConnection.frame_a)
    annotation (Line(
      points={{0,10},{0,10},{0,39.6},{4,39.6}},
      color={95,95,95},
      pattern=LinePattern.Dot));
  connect(anteriorUpperMuscleConnection.frame_b, realBoneJoint.attachPointAnterior)
    annotation (Line(
      points={{24,39.6},{32,39.6},{32,8.5714},{10.101,8.5714}},
      color={95,95,95},
      thickness=0.5));
  connect(realBoneJoint.threadPointPosterior, posteriorUpperMuscleConnection.frame_a)
    annotation (Line(
      points={{0,-10},{0,-10},{0,-39.6},{4,-39.6}},
      color={95,95,95},
      pattern=LinePattern.Dot));
  connect(posteriorUpperMuscleConnection.frame_b, realBoneJoint.attachPointPosterior)
    annotation (Line(
      points={{24,-39.6},{32,-39.6},{32,-7.4},{10,-7.4}},
      color={95,95,95},
      thickness=0.5));
  connect(anteriorUpperMuscleConnection.muscleMagnitude, anteriorMuscle.fMagnitude)
    annotation (Line(points={{14,49.5987},{10,49.5987},{10,69.4092},{-31.315,
          69.4092}}, color={0,0,127}));
  connect(posteriorUpperMuscleConnection.muscleMagnitude, posteriorMuscle.fMagnitude)
    annotation (Line(points={{14,-49.5987},{10,-49.5987},{10,-66.5908},{-27.315,
          -66.5908}}, color={0,0,127}));
  connect(zeroValue.y, posteriorMuscle.forcePValue) annotation (Line(points={{
          -127,40},{-102,40},{-102,-66.5685},{-46.6807,-66.5685}}, color={0,0,
          127}));
  connect(anteriorUpperMuscleActuationPercentConstant.y, anteriorMuscle.forcePValue)
    annotation (Line(points={{-105,70},{-60,70},{-60,69.4315},{-50.6807,69.4315}},
        color={0,0,127}));
  connect(anteriorMuscle.fMagnitude, anteriorLowerMuscleConnection.muscleMagnitude)
    annotation (Line(points={{-31.315,69.4092},{-31.315,49.7046},{-14,49.7046},
          {-14,29.5987}}, color={0,0,127}));
  connect(posteriorMuscle.fMagnitude, posteriorLowerMuscleConnection.muscleMagnitude)
    annotation (Line(points={{-27.315,-66.5908},{-27.315,-49.2954},{-14,
          -49.2954},{-14,-29.5987}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Test1BoneJointModel;
