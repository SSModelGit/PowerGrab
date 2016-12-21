within PowerGrabStructure.Templates;
package HandWithObject
  replaceable partial model HandContact

    replaceable PowerGrabStructure.Templates.Finger.FingerContact middleMostFinger
    annotation (Placement(visible=true, transformation(
        origin={-46.326,57.203},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    replaceable PowerGrabStructure.Templates.Finger.FingerContact opposable if second
    annotation (Placement(visible=true, transformation(
        origin={-21.326,-77.797},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-162.128, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation middleFingerOrientation1(angle=90,
      n={0,0,1}) annotation (Placement(visible=true, transformation(
        origin={-122.117,20},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation wristOrientation(r = object_x) annotation(Placement(visible = true, transformation(origin = {-130, -46.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant sidewaysMotionJointActuation(k=1)
    annotation (Placement(visible=true, transformation(
        origin={-167.617,93.361},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Blocks.Sources.Constant zeroSignal(k=0) annotation (Placement(
        visible=true, transformation(
        origin={-162.714,55},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation thumbOrientation2(angle=180,
      n={1,0,0}) if                                                                                second
    annotation (Placement(visible=true, transformation(
        origin={-97.996,-98.20699999999999},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation thumbOrientation1(
    angle=90,
    n={0,0,1},
    r={-0.11,0.04,0.01}) if                                                                                                second
    annotation (Placement(visible=true, transformation(
        origin={-66.32599999999999,-70.297},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation ringFingerOrientation1(r={-0.01,
        0,-0.03}) if                                                                                third
    annotation (Placement(visible=true, transformation(
        origin={35.347,15.357},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation ringFingerOrientation2(n={0,0,1},
      angle=90) if                                                                                third
    annotation (Placement(visible=true, transformation(
        origin={62.532,35.357},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation littleFingerOrientation1(r={-0.03,
        0,-0.05}) if                                                                                fourth
    annotation (Placement(visible=true, transformation(
        origin={35.347,-9.643000000000001},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation littleFingerOrientation2(n={0,0,1},
      angle=90) if                                                                                fourth
    annotation (Placement(visible=true, transformation(
        origin={65.34699999999999,-9.643000000000001},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation indexFingerOrientation2(n={1,0,0},
      angle=-20) if                                                                                fifth
    annotation (Placement(visible=true, transformation(
        origin={65.34699999999999,-49.643},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    replaceable
    PowerGrabStructure.Templates.Finger.FingerContact middleLeftFinger if third
    annotation (Placement(visible=true, transformation(
        origin={105,27.5},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    replaceable PowerGrabStructure.Templates.Finger.FingerContact leftMostFinger if fourth
    annotation (Placement(visible=true, transformation(
        origin={97.998,-14.643},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    replaceable PowerGrabStructure.Templates.Finger.FingerContact middleRight if fifth
    annotation (Placement(visible=true, transformation(
        origin={97.998,-56.5},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 100, d = 10000, s_unstretched = 0) annotation(Placement(visible = true, transformation(origin = {-100, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape wrist(
    r={0.01,0,0},
    r_CM={0,0,0},
    m=0.01,
    r_0(fixed=true, start=object_x)) annotation (Placement(visible=true,
        transformation(
        origin={-60,-46.755},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation middleFingerOrientation2(n={1,0,0},
      angle=0) annotation (Placement(visible=true, transformation(
        origin={-85,50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation7(angle = 45, n = {1, 0, 0}) if fourth annotation(Placement(visible = true, transformation(origin = {67.408, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp distalPhalangeActuation(
    duration=2,
    startTime=5,
    height=0.2) annotation (Placement(visible=true, transformation(
        origin={-208.139,72.672},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Blocks.Sources.Ramp middlePhalangeActuation(
    duration=2,
    startTime=3,
    height=0.6) annotation (Placement(visible=true, transformation(
        origin={-207.786,40},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Blocks.Sources.Ramp proximalPhalangeActuation(duration=0.01)
    annotation (Placement(visible=true, transformation(
        origin={-210,5},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation thumbOrientation3(angle=0,
      n={0,1,0}) if                                                                              second
    annotation (Placement(visible=true, transformation(
        origin={-65,-95},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation ringFingerOrientation3(angle=30,
      n={1,0,0}) if                                                                               third
    annotation (Placement(visible=true, transformation(
        origin={68.282,12.054},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation indexFingerOrientation1(
    angle=90,
    n={0,0,1},
    r={0,0,0.022}) if                                                                                                 fifth
    annotation (Placement(visible=true, transformation(
        origin={35,-50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    parameter Boolean second = true;
    parameter Boolean third = true;
    parameter Boolean fourth = true;
    parameter Boolean fifth = true;
  equation
  connect(world.frame_b, indexFingerOrientation1.frame_a) annotation (Line(
      visible=true,
      origin={-20.788,-35},
      points={{-131.34,15},{42.776,15},{42.776,-15},{45.788,-15}}));
  connect(indexFingerOrientation1.frame_b, indexFingerOrientation2.frame_a)
    annotation (Line(
      visible=true,
      origin={52.254,-49.822},
      points={{-7.254,-0.178},{2.081,-0.178},{2.081,0.179},{3.093,0.179}}));
  connect(zeroSignal.y, middleRight.anteriorInput[4]) annotation (Line(
      visible=true,
      origin={27.362,1.349},
      points={{-179.076,53.651},{55.136,53.651},{55.136,-52.1514},{68.8058,-52.1514}},
      color={0,0,127}));

  connect(proximalPhalangeActuation.y, middleRight.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={15.541,-23.651},
      points={{-214.541,28.651},{66.957,28.651},{66.957,-28.1514},{80.6268,-28.1514}},
      color={0,0,127}));

  connect(middlePhalangeActuation.y, middleRight.anteriorInput[2]) annotation (
      Line(
      visible=true,
      origin={16.094,-6.151},
      points={{-212.88,46.151},{66.404,46.151},{66.404,-46.6514},{80.0738,-46.6514}},
      color={0,0,127}));

  connect(distalPhalangeActuation.y, middleRight.anteriorInput[1]) annotation (
      Line(
      visible=true,
      origin={16.006,10.185},
      points={{-213.145,62.487},{66.492,62.487},{66.492,-63.9874},{80.1618,-63.9874}},
      color={0,0,127}));

  connect(zeroSignal.y, middleRight.posteriorInput[4]) annotation (Line(
      visible=true,
      origin={27.386,-3.39},
      points={{-179.1,58.39},{55.112,58.39},{55.112,-56.8894},{68.8746,-56.8894}},
      color={0,0,127}));

  connect(zeroSignal.y, middleRight.posteriorInput[3]) annotation (Line(
      visible=true,
      origin={27.386,-3.39},
      points={{-179.1,58.39},{55.112,58.39},{55.112,-57.8894},{68.8746,-57.8894}},
      color={0,0,127}));

  connect(zeroSignal.y, middleRight.posteriorInput[2]) annotation (Line(
      visible=true,
      origin={27.386,-3.39},
      points={{-179.1,58.39},{55.112,58.39},{55.112,-58.8894},{68.8746,-58.8894}},
      color={0,0,127}));

  connect(zeroSignal.y, middleRight.posteriorInput[1]) annotation (Line(
      visible=true,
      origin={27.386,-3.39},
      points={{-179.1,58.39},{55.112,58.39},{55.112,-59.8894},{68.8746,-59.8894}},
      color={0,0,127}));

  connect(sidewaysMotionJointActuation.y, opposable.posteriorInput[4])
    annotation (Line(
      visible=true,
      origin={-67.581,34.549},
      points={{-89.036,58.812},{44.5176,58.812},{44.5176,-116.125}},
      color={0,0,127}));
  connect(sidewaysMotionJointActuation.y, middleMostFinger.anteriorInput[4])
    annotation (Line(
      visible=true,
      origin={-82.106,77.381},
      points={{-74.511,15.98},{20.28,15.98},{20.28,-14.4804},{33.9498,-14.4804}},
      color={0,0,127}));

  connect(sidewaysMotionJointActuation.y, middleMostFinger.posteriorInput[4])
    annotation (Line(
      visible=true,
      origin={-82.083,72.642},
      points={{-74.534,20.719},{20.257,20.719},{20.257,-19.2184},{34.0196,-19.2184}},
      color={0,0,127}));

  connect(sidewaysMotionJointActuation.y, middleLeftFinger.anteriorInput[4])
    annotation (Line(
      visible=true,
      origin={31.388,62.529},
      points={{-188.005,30.832},{58.112,30.832},{58.112,-29.3314},{71.7818,-29.3314}},
      color={0,0,127}));

  connect(sidewaysMotionJointActuation.y, middleLeftFinger.posteriorInput[4])
    annotation (Line(
      visible=true,
      origin={31.411,57.791},
      points={{-188.028,35.57},{58.089,35.57},{58.089,-34.0704},{71.8516,-34.0704}},
      color={0,0,127}));

  connect(proximalPhalangeActuation.y, middleLeftFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={20.792,18.349},
      points={{-219.792,-13.349},{68.708,-13.349},{68.708,13.8486},{82.3778,
          13.8486}},
      color={0,0,127}));
  connect(middlePhalangeActuation.y, middleLeftFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={21.346,35.849},
      points={{-218.132,4.151},{68.154,4.151},{68.154,-4.6514},{81.8238,-4.6514}},
      color={0,0,127}));

  connect(distalPhalangeActuation.y, middleLeftFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={21.258,52.185},
      points={{-218.397,20.487},{68.242,20.487},{68.242,-21.9874},{81.9118,-21.9874}},
      color={0,0,127}));

  connect(sidewaysMotionJointActuation.y, opposable.anteriorInput[4])
    annotation (Line(
      visible=true,
      origin={-67.643,37.708},
      points={{-88.974,55.653},{44.4868,55.653},{44.4868,-109.807}},
      color={0,0,127}));
  connect(sidewaysMotionJointActuation.y, leftMostFinger.posteriorInput[4])
    annotation (Line(
      visible=true,
      origin={26.16,36.719},
      points={{-182.777,56.642},{56.338,56.642},{56.338,-55.1414},{70.1006,-55.1414}},
      color={0,0,127}));

  connect(sidewaysMotionJointActuation.y, leftMostFinger.anteriorInput[4])
    annotation (Line(
      visible=true,
      origin={26.137,41.458},
      points={{-182.754,51.903},{56.361,51.903},{56.361,-50.4034},{70.0308,-50.4034}},
      color={0,0,127}));

  connect(wristOrientation.frame_b, wrist.frame_a) annotation (Line(
      visible=true,
      origin={-84.006,-46.752},
      points={{-35.994,0.002},{10.994,0.002},{10.994,-0.003},{14.006,-0.003}}));
  connect(wrist.frame_b, middleRight.palmBoneFrame) annotation (Line(
      visible=true,
      origin={7.306,-61.302},
      points={{-57.306,14.547},{-54.194,14.547},{-54.194,-10.698},{82.8476,-10.698},
          {82.8476,-7.698}}));
  connect(wrist.frame_b, opposable.palmBoneFrame) annotation (Line(
      visible=true,
      origin={-40.423,-74.08},
      points={{-9.577,27.325},{-6.464,27.325},{-6.464,-19.217},{11.2526,-19.217},
          {11.2526,-16.217}}));
  connect(wrist.frame_b, leftMostFinger.palmBoneFrame) annotation (Line(
      visible=true,
      origin={43.436,-40.218},
      points={{-93.436,-6.537},{46.7176,-6.537},{46.7176,13.075}}));
  connect(wrist.frame_b, middleLeftFinger.palmBoneFrame) annotation (Line(
      visible=true,
      origin={48.104,-26.17},
      points={{-98.104,-20.585},{49.0516,-20.585},{49.0516,41.17}}));
  connect(wrist.frame_b, middleMostFinger.palmBoneFrame) annotation (Line(
      visible=true,
      origin={-50.423,6.92},
      points={{0.423,-53.675},{3.536,-53.675},{3.536,34.783},{-3.7474,34.783},{
          -3.7474,37.783}}));
  connect(thumbOrientation3.frame_b, opposable.fingerOrientationFrame)
    annotation (Line(
      visible=true,
      origin={-33.993,-92.994},
      points={{-21.007,-2.006},{10.5035,-2.006},{10.5035,4.012}}));
  connect(thumbOrientation2.frame_b, thumbOrientation3.frame_a) annotation (
      Line(
      visible=true,
      origin={-79.755,-96.60299999999999},
      points={{-8.241,-1.604},{1.743,-1.604},{1.743,1.603},{4.755,1.603}}));
  connect(proximalPhalangeActuation.y, leftMostFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={15.541,-2.723},
      points={{-214.541,7.723},{66.957,7.723},{66.957,-7.2224},{80.6268,-7.2224}},
      color={0,0,127}));

  connect(middlePhalangeActuation.y, leftMostFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={16.094,14.777},
      points={{-212.88,25.223},{66.404,25.223},{66.404,-25.7224},{80.0738,-25.7224}},
      color={0,0,127}));

  connect(distalPhalangeActuation.y, leftMostFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={16.006,31.113},
      points={{-213.145,41.559},{66.492,41.559},{66.492,-43.0584},{80.1618,-43.0584}},
      color={0,0,127}));

  connect(proximalPhalangeActuation.y, opposable.anteriorInput[3]) annotation (
      Line(
      visible=true,
      origin={-73.952,-34.3},
      points={{-125.048,39.3},{37.126,39.3},{37.126,-38.7994},{50.7958,-38.7994}},
      color={0,0,127}));

  connect(middlePhalangeActuation.y, opposable.anteriorInput[2]) annotation (
      Line(
      visible=true,
      origin={-73.399,-16.8},
      points={{-123.387,56.8},{36.573,56.8},{36.573,-57.2994},{50.2428,-57.2994}},
      color={0,0,127}));

  connect(distalPhalangeActuation.y, opposable.anteriorInput[1]) annotation (
      Line(
      visible=true,
      origin={-73.48699999999999,-0.464},
      points={{-123.652,73.136},{36.661,73.136},{36.661,-74.6354},{50.3308,-74.6354}},
      color={0,0,127}));

  connect(zeroSignal.y, opposable.posteriorInput[3]) annotation (Line(
      visible=true,
      origin={-65.947,8.975},
      points={{-85.767,46.025},{42.8836,46.025},{42.8836,-91.5514}},
      color={0,0,127}));
  connect(zeroSignal.y, opposable.posteriorInput[2]) annotation (Line(
      visible=true,
      origin={-65.947,8.975},
      points={{-85.767,46.025},{42.8836,46.025},{42.8836,-92.5514}},
      color={0,0,127}));
  connect(zeroSignal.y, opposable.posteriorInput[1]) annotation (Line(
      visible=true,
      origin={-65.947,8.975},
      points={{-85.767,46.025},{42.8836,46.025},{42.8836,-93.5514}},
      color={0,0,127}));
  connect(proximalPhalangeActuation.y, middleMostFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={-92.702,33.2},
      points={{-106.298,-28.2},{30.876,-28.2},{30.876,28.7006},{44.5458,28.7006}},
      color={0,0,127}));

  connect(middlePhalangeActuation.y, middleMostFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={-92.149,50.7},
      points={{-104.637,-10.7},{30.323,-10.7},{30.323,10.2006},{43.9928,10.2006}},
      color={0,0,127}));

  connect(distalPhalangeActuation.y, middleMostFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={-92.237,67.036},
      points={{-104.902,5.636},{30.411,5.636},{30.411,-7.1354},{44.0808,-7.1354}},
      color={0,0,127}));

  connect(zeroSignal.y, middleMostFinger.posteriorInput[3]) annotation (Line(
      visible=true,
      origin={-80.857,53.462},
      points={{-70.857,1.538},{19.031,1.538},{19.031,-1.0384},{32.7936,-1.0384}},
      color={0,0,127}));

  connect(zeroSignal.y, middleMostFinger.posteriorInput[2]) annotation (Line(
      visible=true,
      origin={-80.857,53.462},
      points={{-70.857,1.538},{19.031,1.538},{19.031,-2.0384},{32.7936,-2.0384}},
      color={0,0,127}));

  connect(zeroSignal.y, middleMostFinger.posteriorInput[1]) annotation (Line(
      visible=true,
      origin={-80.857,53.462},
      points={{-70.857,1.538},{19.031,1.538},{19.031,-3.0384},{32.7936,-3.0384}},
      color={0,0,127}));

  connect(fixedRotation7.frame_b, leftMostFinger.fingerOrientationFrame)
    annotation (Line(
      visible=true,
      origin={89.69199999999999,-31.943},
      points={{-12.284,-3.057},{6.1425,-3.057},{6.1425,6.115}}));
  connect(littleFingerOrientation2.frame_b, fixedRotation7.frame_a) annotation (
     Line(
      visible=true,
      origin={67.91500000000001,-21.762},
      points={{7.432,12.119},{13.057,12.119},{13.057,1.119},{-11.52,1.119},{-11.52,
          -13.238},{-10.507,-13.238}}));
  connect(middleFingerOrientation2.frame_b, middleMostFinger.fingerOrientationFrame)
    annotation (Line(
      visible=true,
      origin={-61.346,45.885},
      points={{-13.654,4.115},{-6.029,4.115},{-6.029,-4.182},{12.8565,-4.182},{
          12.8565,0.133}}));
  connect(middleFingerOrientation1.frame_b, middleFingerOrientation2.frame_a)
    annotation (Line(
      visible=true,
      origin={-100.785,35},
      points={{-11.332,-15},{2.773,-15},{2.773,15},{5.785,15}}));
    connect(wristOrientation.frame_b, springDamperParallel.frame_a) annotation(Line(visible = true, origin = {-115.506, -28.375}, points = {{-4.494, -18.375}, {-0.506, -18.375}, {-0.506, 18.375}, {5.506, 18.375}}));
    connect(world.frame_b,wristOrientation. frame_a) annotation(Line(visible = true, origin = {-144.532, -33.375}, points = {{-7.596, 13.375}, {1.532, 13.375}, {1.532, -13.375}, {4.532, -13.375}}));
  connect(wrist.frame_b, middleRight.proximalPhalangeFrame) annotation (Line(
      visible=true,
      origin={50.124,-56.178},
      points={{-100.124,9.423},{32.374,9.423},{32.374,-9.422},{35.374,-9.422}}));
  connect(wrist.frame_b, middleRight.middlePhalangeFrame) annotation (Line(
      visible=true,
      origin={50.124,-51.627},
      points={{-100.124,4.872},{32.374,4.872},{32.374,-4.873},{35.374,-4.873}}));
  connect(wrist.frame_b, middleRight.distalPhalangeFrame) annotation (Line(
      visible=true,
      origin={50.163,-47.078},
      points={{-100.163,0.323},{32.335,0.323},{32.335,-0.322},{35.4943,-0.322}}));
  connect(wrist.frame_b, leftMostFinger.proximalPhalangeFrame) annotation (Line(
      visible=true,
      origin={50.124,-35.249},
      points={{-100.124,-11.506},{32.374,-11.506},{32.374,11.506},{35.374,
          11.506}}));
  connect(wrist.frame_b, leftMostFinger.middlePhalangeFrame) annotation (Line(
      visible=true,
      origin={50.124,-30.699},
      points={{-100.124,-16.056},{32.374,-16.056},{32.374,16.056},{35.374,
          16.056}}));
  connect(wrist.frame_b, leftMostFinger.distalPhalangeFrame) annotation (Line(
      visible=true,
      origin={50.163,-26.149},
      points={{-100.163,-20.606},{32.335,-20.606},{32.335,20.606},{35.4943,
          20.606}}));
  connect(wrist.frame_b, middleLeftFinger.proximalPhalangeFrame) annotation (
      Line(
      visible=true,
      origin={55.375,-14.178},
      points={{-105.375,-32.577},{34.125,-32.577},{34.125,32.578},{37.125,
          32.578}}));
  connect(wrist.frame_b, middleLeftFinger.middlePhalangeFrame) annotation (Line(
      visible=true,
      origin={55.375,-9.628},
      points={{-105.375,-37.127},{34.125,-37.127},{34.125,37.128},{37.125,
          37.128}}));
  connect(wrist.frame_b, middleLeftFinger.distalPhalangeFrame) annotation (Line(
      visible=true,
      origin={55.415,-5.078},
      points={{-105.415,-41.677},{34.085,-41.677},{34.085,41.678},{37.2443,
          41.678}}));
  connect(wrist.frame_b, opposable.proximalPhalangeFrame) annotation (Line(
      visible=true,
      origin={-39.369,-66.82599999999999},
      points={{-10.631,20.071},{2.543,20.071},{2.543,-20.071},{5.543,-20.071}}));
  connect(wrist.frame_b, opposable.middlePhalangeFrame) annotation (Line(
      visible=true,
      origin={-39.369,-62.276},
      points={{-10.631,15.521},{2.543,15.521},{2.543,-15.521},{5.543,-15.521}}));
  connect(wrist.frame_b, opposable.distalPhalangeFrame) annotation (Line(
      visible=true,
      origin={-39.33,-57.726},
      points={{-10.67,10.971},{2.504,10.971},{2.504,-10.971},{5.6633,-10.971}}));
  connect(wrist.frame_b, middleMostFinger.proximalPhalangeFrame) annotation (
      Line(
      visible=true,
      origin={-54.376,-10.802},
      points={{4.376,-35.953},{7.488,-35.953},{7.488,-22.953},{-7.45,-22.953},{
          -7.45,58.905},{-4.45,58.905}}));
  connect(wrist.frame_b, middleMostFinger.middlePhalangeFrame) annotation (Line(
      visible=true,
      origin={-54.376,-7.769},
      points={{4.376,-38.986},{7.488,-38.986},{7.488,-25.986},{-7.45,-25.986},{
          -7.45,64.972},{-4.45,64.972}}));
  connect(wrist.frame_b, middleMostFinger.distalPhalangeFrame) annotation (Line(
      visible=true,
      origin={-54.349,-4.736},
      points={{4.349,-42.019},{7.461,-42.019},{7.461,-29.019},{-7.477,-29.019},
          {-7.477,71.039},{-4.3177,71.039}}));
  connect(springDamperParallel.frame_b, wrist.frame_a) annotation (Line(
      visible=true,
      origin={-76.506,-28.377},
      points={{-13.494,18.377},{3.494,18.377},{3.494,-18.378},{6.506,-18.378}}));
  connect(world.frame_b, littleFingerOrientation1.frame_a) annotation (Line(
      visible=true,
      origin={-20.522,-14.822},
      points={{-131.606,-5.178},{42.869,-5.178},{42.869,5.179},{45.869,5.179}}));
  connect(world.frame_b, ringFingerOrientation1.frame_a) annotation (Line(
      visible=true,
      origin={-20.522,-2.322},
      points={{-131.606,-17.678},{42.869,-17.678},{42.869,17.679},{45.869,
          17.679}}));
  connect(world.frame_b, thumbOrientation1.frame_a) annotation (Line(
      visible=true,
      origin={-96.783,-45.148},
      points={{-55.345,25.148},{17.444,25.148},{17.444,-25.149},{20.457,-25.149}}));
  connect(world.frame_b, middleFingerOrientation1.frame_a) annotation (Line(
      visible=true,
      origin={-138.626,0},
      points={{-13.502,-20},{3.496,-20},{3.496,20},{6.509,20}}));
  connect(indexFingerOrientation2.frame_b, middleRight.fingerOrientationFrame)
    annotation (Line(
      visible=true,
      origin={85.792,-61.394},
      points={{-10.445,11.751},{-4.82,11.751},{-4.82,-8.606},{10.0425,-8.606},{
          10.0425,-6.291}}));
  connect(zeroSignal.y, leftMostFinger.posteriorInput[3]) annotation (Line(
      visible=true,
      origin={27.386,17.539},
      points={{-179.1,37.461},{55.112,37.461},{55.112,-36.9614},{68.8746,-36.9614}},
      color={0,0,127}));

  connect(zeroSignal.y, leftMostFinger.posteriorInput[2]) annotation (Line(
      visible=true,
      origin={27.386,17.539},
      points={{-179.1,37.461},{55.112,37.461},{55.112,-37.9614},{68.8746,-37.9614}},
      color={0,0,127}));

  connect(zeroSignal.y, leftMostFinger.posteriorInput[1]) annotation (Line(
      visible=true,
      origin={27.386,17.539},
      points={{-179.1,37.461},{55.112,37.461},{55.112,-38.9614},{68.8746,-38.9614}},
      color={0,0,127}));

  connect(zeroSignal.y, middleLeftFinger.posteriorInput[3]) annotation (Line(
      visible=true,
      origin={32.637,38.61},
      points={{-184.351,16.39},{56.863,16.39},{56.863,-15.8894},{70.6256,-15.8894}},
      color={0,0,127}));

  connect(zeroSignal.y, middleLeftFinger.posteriorInput[2]) annotation (Line(
      visible=true,
      origin={32.637,38.61},
      points={{-184.351,16.39},{56.863,16.39},{56.863,-16.8894},{70.6256,-16.8894}},
      color={0,0,127}));

  connect(zeroSignal.y, middleLeftFinger.posteriorInput[1]) annotation (Line(
      visible=true,
      origin={32.637,38.61},
      points={{-184.351,16.39},{56.863,16.39},{56.863,-17.8894},{70.6256,-17.8894}},
      color={0,0,127}));

  connect(littleFingerOrientation2.frame_a, littleFingerOrientation1.frame_b)
    annotation (Line(
      visible=true,
      origin={50.347,-9.643000000000001},
      points={{5,0},{-5,0}}));
  connect(ringFingerOrientation1.frame_b, ringFingerOrientation2.frame_a)
    annotation (Line(
      visible=true,
      origin={48.939,15.357},
      points={{-3.592,0},{0,0},{0,20},{3.593,20}}));
  connect(thumbOrientation1.frame_b, thumbOrientation2.frame_a) annotation (
      Line(
      visible=true,
      origin={-80.623,-83.934},
      points={{24.297,13.637},{31.922,13.637},{31.922,0.637},{-30.385,0.637},{-30.385,
          -14.273},{-27.373,-14.273}}));
  connect(ringFingerOrientation2.frame_b, ringFingerOrientation3.frame_a)
    annotation (Line(
      points={{72.532,35.357},{72.532,22.6785},{58.282,22.6785},{58.282,12.054}},
      color={95,95,95},
      thickness=0.5));

  connect(ringFingerOrientation3.frame_b, middleLeftFinger.fingerOrientationFrame)
    annotation (Line(
      points={{78.282,12.054},{90,12.054},{90,15},{100,15},{100,16.315},{
          102.837,16.315}},
      color={95,95,95},
      thickness=0.5));
    annotation(experiment(StopTime = 15.0, Interval = 0.1, Algorithm = "cvodes"), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end HandContact;
end HandWithObject;
