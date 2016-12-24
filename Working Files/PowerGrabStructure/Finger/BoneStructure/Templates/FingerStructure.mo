within PowerGrabStructure.Finger.BoneStructure.Templates;
partial model FingerStructure
  import PowerGrabStructure;
  extends PowerGrabStructure.Finger.BoneStructure.Interfaces.FingerStructure;
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin={-117.882,
            45.75},                                                                                                                                                                  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}, animation = false) annotation(Placement(visible = true, transformation(origin={-117.948,
            -39.75},                                                                                                                                                                   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  replaceable PowerGrabStructure.Finger.BoneStructure.Basic.Templates.BoneJoint
    boneJoint annotation (Placement(transformation(extent={{64,-10},{84,10}})));
  replaceable
    PowerGrabStructure.Finger.BoneStructure.Basic.Templates.DoubleBoneJoint
    doubleBoneJoint
    annotation (Placement(transformation(extent={{-74,-10},{-54,10}})));
  replaceable PowerGrabStructure.Finger.BoneStructure.Basic.Templates.BoneJoint
    boneJoint1
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
