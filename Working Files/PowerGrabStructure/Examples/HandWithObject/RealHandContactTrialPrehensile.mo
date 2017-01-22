within PowerGrabStructure.Examples.HandWithObject;
model RealHandContactTrialPrehensile
  import PowerGrabStructure;
  extends PowerGrabStructure.Templates.HandWithObject.HandContact(
    redeclare PowerGrabStructure.Finger.Examples.RealFingerContact
      middleRightFinger(
      fingerLength={iFinger*0.342857143,iFinger*0.342857143,iFinger*0.171428571,
          iFinger*0.142857143},
      mu=mu,
      delta=delta[1],
      threshold=threshold,
      k=500,
      bufferRange=delta[2],
      phiSide0=0),
    redeclare PowerGrabStructure.Finger.Examples.RealFingerContact
      middleMostFinger(
      threshold=threshold,
      fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
          mFinger*0.147058824},
      mu=mu,
      delta=delta[1],
      k=500,
      phiSide0=0,
      bufferRange=delta[2],
      diameter=0.02,
      bufferEffect=25,
      v2delta=0.01,
      v0Mag=1,
      bufferDamping=15),
    redeclare PowerGrabStructure.Finger.Examples.RealFingerContact opposable(
      threshold=threshold,
      fingerLength={tFinger*0.137931034,tFinger*0.344827586,tFinger*0.275862069,
          tFinger*0.24137931},
      mu=mu,
      delta=delta[1],
      k=500,
      phiSide0=0,
      bufferRange=delta[2]),
    redeclare PowerGrabStructure.Finger.Examples.RealFingerContact
      middleLeftFinger(
      fingerLength={rFinger*0.319148936,rFinger*0.319148936,rFinger*0.212765957,
          rFinger*0.14893617},
      mu=mu,
      delta=delta[1],
      threshold=threshold,
      k=500,
      phiSide0=0,
      bufferRange=delta[2]),
    redeclare PowerGrabStructure.Finger.Examples.RealFingerContact
      leftMostFinger(
      fingerLength={lFinger*0.337837838,lFinger*0.324324324,lFinger*0.168918919,
          lFinger*0.168918919},
      mu=mu,
      delta=delta[1],
      threshold=threshold,
      k=500,
      bufferRange=delta[2],
      phiSide0=0),
    second=true,
    third=true,
    fourth=true,
    fifth=true,
    bodyShape(r_0(
                 fixed =               false)),
    world(                                      animateGravity =       false, animateWorld =       true),
    springDamperParallel(                                                                                animation =                      false),
    fixedRotation1(r={-0.10,0.04,0.01}), object_x = {-0.06, 0.075, 0});
  final parameter Modelica.SIunits.Length mFinger = 0.204;
  final parameter Modelica.SIunits.Length iFinger = 0.175;
  final parameter Modelica.SIunits.Length rFinger = 0.188;
  final parameter Modelica.SIunits.Length lFinger = 0.148;
  final parameter Modelica.SIunits.Length tFinger = 0.145;
  parameter Modelica.SIunits.Length threshold = 0.0275;
  final parameter Real mu = 0.01;
  final parameter Modelica.SIunits.Length delta[2] = {0.01, 0.015} "In order of: delta of friction, buffer range";
equation
  connect(world.frame_b, fixedRotation10.frame_a) annotation(Line(visible = true, origin = {-20.788, -35}, points = {{-131.34, 15}, {42.776, 15}, {42.776, -15}, {45.788, -15}}));
  connect(fixedRotation10.frame_b, fixedRotation5.frame_a) annotation(Line(visible = true, origin = {52.254, -49.822}, points = {{-7.254, -0.178}, {2.081, -0.178}, {2.081, 0.179}, {3.093, 0.179}}));
connect(zero.y, middleRightFinger.anteriorInput[4]) annotation (Line(
    visible=true,
    origin={27.362,1.349},
    points={{-179.076,53.651},{55.136,53.651},{55.136,-52.1514},{68.8058,-52.1514}},
    color={0,0,127}));

  connect(ProximalPhalangeActuation.y, middleRightFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={15.541,-23.651},
      points={{-214.541,28.651},{66.957,28.651},{66.957,-28.1514},{80.6268,-28.1514}},
      color={0,0,127}));

  connect(MiddlePhalangeActuation.y, middleRightFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={16.094,-6.151},
      points={{-212.88,46.151},{66.404,46.151},{66.404,-46.6514},{80.0738,-46.6514}},
      color={0,0,127}));

  connect(DistalPhalangeActuation.y, middleRightFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={16.006,10.185},
      points={{-213.145,62.487},{66.492,62.487},{66.492,-63.9874},{80.1618,-63.9874}},
      color={0,0,127}));

connect(zero.y, middleRightFinger.posteriorInput[4]) annotation (Line(
    visible=true,
    origin={27.386,-3.39},
    points={{-179.1,58.39},{55.112,58.39},{55.112,-56.8894},{68.8746,-56.8894}},
    color={0,0,127}));

connect(zero.y, middleRightFinger.posteriorInput[3]) annotation (Line(
    visible=true,
    origin={27.386,-3.39},
    points={{-179.1,58.39},{55.112,58.39},{55.112,-57.8894},{68.8746,-57.8894}},
    color={0,0,127}));

connect(zero.y, middleRightFinger.posteriorInput[2]) annotation (Line(
    visible=true,
    origin={27.386,-3.39},
    points={{-179.1,58.39},{55.112,58.39},{55.112,-58.8894},{68.8746,-58.8894}},
    color={0,0,127}));

connect(zero.y, middleRightFinger.posteriorInput[1]) annotation (Line(
    visible=true,
    origin={27.386,-3.39},
    points={{-179.1,58.39},{55.112,58.39},{55.112,-59.8894},{68.8746,-59.8894}},
    color={0,0,127}));

  connect(ProximalPhalangeActuation.y, middleLeftFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={20.792,18.349},
      points={{-219.792,-13.349},{68.708,-13.349},{68.708,13.8486},{82.3778,13.8486}},
      color={0,0,127}));

  connect(MiddlePhalangeActuation.y, middleLeftFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={21.346,35.849},
      points={{-218.132,4.151},{68.154,4.151},{68.154,-4.6514},{81.8238,-4.6514}},
      color={0,0,127}));

  connect(DistalPhalangeActuation.y, middleLeftFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={21.258,52.185},
      points={{-218.397,20.487},{68.242,20.487},{68.242,-21.9874},{81.9118,-21.9874}},
      color={0,0,127}));

  connect(fixedRotation9.frame_b, middleLeftFinger.frame_a) annotation(Line(visible = true, origin = {127.154, 42.885}, points = {{11.128, 44.169}, {18.753, 44.169}, {18.753, -30.885}, {-24.3175, -30.885}, {-24.3175, -26.57}}));
  connect(fixedRotation3.frame_b, fixedRotation9.frame_a) annotation(Line(visible = true, origin = {105.339, 51.206}, points = {{-32.807, -35.849}, {9.931, -35.849}, {9.931, 35.848}, {12.943, 35.848}}));
  connect(fixedTranslation.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-84.006, -46.752}, points = {{-35.994, 0.002}, {10.994, 0.002}, {10.994, -0.003}, {14.006, -0.003}}));
connect(bodyShape.frame_b, middleRightFinger.frame_a4) annotation (Line(
    visible=true,
    origin={7.306,-61.302},
    points={{-57.306,14.547},{-54.194,14.547},{-54.194,-10.698},{82.8476,-10.698},
        {82.8476,-7.698}}));
  connect(bodyShape.frame_b, opposable.frame_a4) annotation(Line(visible = true, origin = {-40.423, -74.08}, points = {{-9.577, 27.325}, {-6.464, 27.325}, {-6.464, -19.217}, {11.2526, -19.217}, {11.2526, -16.217}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a4) annotation(Line(visible = true, origin = {43.436, -40.218}, points = {{-93.436, -6.537}, {46.7176, -6.537}, {46.7176, 13.075}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a4) annotation(Line(visible = true, origin = {48.104, -26.17}, points = {{-98.104, -20.585}, {49.0516, -20.585}, {49.0516, 41.17}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a4) annotation(Line(visible = true, origin = {-50.423, 6.92}, points = {{0.423, -53.675}, {3.536, -53.675}, {3.536, 34.783}, {-3.7474, 34.783}, {-3.7474, 37.783}}));
  connect(fixedRotation8.frame_b, opposable.frame_a) annotation(Line(visible = true, origin = {-33.993, -92.994}, points = {{-21.007, -2.006}, {10.5035, -2.006}, {10.5035, 4.012}}));
  connect(fixedRotation2.frame_b, fixedRotation8.frame_a) annotation(Line(visible = true, origin = {-79.755, -96.60299999999999}, points = {{-8.241, -1.604}, {1.743, -1.604}, {1.743, 1.603}, {4.755, 1.603}}));
  connect(ProximalPhalangeActuation.y, leftMostFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={15.541,-2.723},
      points={{-214.541,7.723},{66.957,7.723},{66.957,-7.2224},{80.6268,-7.2224}},
      color={0,0,127}));

  connect(MiddlePhalangeActuation.y, leftMostFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={16.094,14.777},
      points={{-212.88,25.223},{66.404,25.223},{66.404,-25.7224},{80.0738,-25.7224}},
      color={0,0,127}));

  connect(DistalPhalangeActuation.y, leftMostFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={16.006,31.113},
      points={{-213.145,41.559},{66.492,41.559},{66.492,-43.0584},{80.1618,-43.0584}},
      color={0,0,127}));

  connect(ProximalPhalangeActuation.y, opposable.anteriorInput[3]) annotation (
      Line(
      visible=true,
      origin={-73.952,-34.3},
      points={{-125.048,39.3},{37.126,39.3},{37.126,-38.7994},{50.7958,-38.7994}},
      color={0,0,127}));

  connect(MiddlePhalangeActuation.y, opposable.anteriorInput[2]) annotation (
      Line(
      visible=true,
      origin={-73.399,-16.8},
      points={{-123.387,56.8},{36.573,56.8},{36.573,-57.2994},{50.2428,-57.2994}},
      color={0,0,127}));

  connect(DistalPhalangeActuation.y, opposable.anteriorInput[1]) annotation (
      Line(
      visible=true,
      origin={-73.48699999999999,-0.464},
      points={{-123.652,73.136},{36.661,73.136},{36.661,-74.6354},{50.3308,-74.6354}},
      color={0,0,127}));

  connect(zero.y, opposable.posteriorInput[3]) annotation(Line(visible = true, origin = {-65.947, 8.975}, points = {{-85.767, 46.025}, {42.8836, 46.025}, {42.8836, -91.5514}}, color = {0, 0, 127}));
  connect(zero.y, opposable.posteriorInput[2]) annotation(Line(visible = true, origin = {-65.947, 8.975}, points = {{-85.767, 46.025}, {42.8836, 46.025}, {42.8836, -92.5514}}, color = {0, 0, 127}));
  connect(zero.y, opposable.posteriorInput[1]) annotation(Line(visible = true, origin = {-65.947, 8.975}, points = {{-85.767, 46.025}, {42.8836, 46.025}, {42.8836, -93.5514}}, color = {0, 0, 127}));
  connect(ProximalPhalangeActuation.y, middleMostFinger.anteriorInput[3])
    annotation (Line(
      visible=true,
      origin={-92.702,33.2},
      points={{-106.298,-28.2},{30.876,-28.2},{30.876,28.7006},{44.5458,28.7006}},
      color={0,0,127}));

  connect(MiddlePhalangeActuation.y, middleMostFinger.anteriorInput[2])
    annotation (Line(
      visible=true,
      origin={-92.149,50.7},
      points={{-104.637,-10.7},{30.323,-10.7},{30.323,10.2006},{43.9928,10.2006}},
      color={0,0,127}));

  connect(DistalPhalangeActuation.y, middleMostFinger.anteriorInput[1])
    annotation (Line(
      visible=true,
      origin={-92.237,67.036},
      points={{-104.902,5.636},{30.411,5.636},{30.411,-7.1354},{44.0808,-7.1354}},
      color={0,0,127}));

  connect(zero.y, middleMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {-80.857, 53.462}, points = {{-70.857, 1.538}, {19.031, 1.538}, {19.031, -1.0384}, {32.7936, -1.0384}}, color = {0, 0, 127}));
  connect(zero.y, middleMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {-80.857, 53.462}, points = {{-70.857, 1.538}, {19.031, 1.538}, {19.031, -2.0384}, {32.7936, -2.0384}}, color = {0, 0, 127}));
  connect(zero.y, middleMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {-80.857, 53.462}, points = {{-70.857, 1.538}, {19.031, 1.538}, {19.031, -3.0384}, {32.7936, -3.0384}}, color = {0, 0, 127}));
  connect(fixedRotation7.frame_b, leftMostFinger.frame_a) annotation(Line(visible = true, origin = {89.69199999999999, -31.943}, points = {{-12.284, -3.057}, {6.1425, -3.057}, {6.1425, 6.115}}));
  connect(fixedRotation4.frame_b, fixedRotation7.frame_a) annotation(Line(visible = true, origin = {67.91500000000001, -21.762}, points = {{7.432, 12.119}, {13.057, 12.119}, {13.057, 1.119}, {-11.52, 1.119}, {-11.52, -13.238}, {-10.507, -13.238}}));
  connect(fixedRotation6.frame_b, middleMostFinger.frame_a) annotation(Line(visible = true, origin = {-61.346, 45.885}, points = {{-13.654, 4.115}, {-6.029, 4.115}, {-6.029, -4.182}, {12.8565, -4.182}, {12.8565, 0.133}}));
  connect(fixedRotation.frame_b, fixedRotation6.frame_a) annotation(Line(visible = true, origin = {-100.785, 35}, points = {{-11.332, -15}, {2.773, -15}, {2.773, 15}, {5.785, 15}}));
  connect(fixedTranslation.frame_b, springDamperParallel.frame_a) annotation(Line(visible = true, origin = {-115.506, -28.375}, points = {{-4.494, -18.375}, {-0.506, -18.375}, {-0.506, 18.375}, {5.506, 18.375}}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-144.532, -33.375}, points = {{-7.596, 13.375}, {1.532, 13.375}, {1.532, -13.375}, {4.532, -13.375}}));
connect(bodyShape.frame_b, middleRightFinger.frame_a1) annotation (Line(
    visible=true,
    origin={50.124,-56.178},
    points={{-100.124,9.423},{32.374,9.423},{32.374,-9.422},{35.374,-9.422}}));
connect(bodyShape.frame_b, middleRightFinger.frame_a2) annotation (Line(
    visible=true,
    origin={50.124,-51.627},
    points={{-100.124,4.872},{32.374,4.872},{32.374,-4.873},{35.374,-4.873}}));
connect(bodyShape.frame_b, middleRightFinger.frame_a3) annotation (Line(
    visible=true,
    origin={50.163,-47.078},
    points={{-100.163,0.323},{32.335,0.323},{32.335,-0.322},{35.4943,-0.322}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a1) annotation(Line(visible = true, origin = {50.124, -35.249}, points = {{-100.124, -11.506}, {32.374, -11.506}, {32.374, 11.506}, {35.374, 11.506}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a2) annotation(Line(visible = true, origin = {50.124, -30.699}, points = {{-100.124, -16.056}, {32.374, -16.056}, {32.374, 16.056}, {35.374, 16.056}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a3) annotation(Line(visible = true, origin = {50.163, -26.149}, points = {{-100.163, -20.606}, {32.335, -20.606}, {32.335, 20.606}, {35.4943, 20.606}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a1) annotation(Line(visible = true, origin = {55.375, -14.178}, points = {{-105.375, -32.577}, {34.125, -32.577}, {34.125, 32.578}, {37.125, 32.578}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a2) annotation(Line(visible = true, origin = {55.375, -9.628}, points = {{-105.375, -37.127}, {34.125, -37.127}, {34.125, 37.128}, {37.125, 37.128}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a3) annotation(Line(visible = true, origin = {55.415, -5.078}, points = {{-105.415, -41.677}, {34.085, -41.677}, {34.085, 41.678}, {37.2443, 41.678}}));
  connect(bodyShape.frame_b, opposable.frame_a1) annotation(Line(visible = true, origin = {-39.369, -66.82599999999999}, points = {{-10.631, 20.071}, {2.543, 20.071}, {2.543, -20.071}, {5.543, -20.071}}));
  connect(bodyShape.frame_b, opposable.frame_a2) annotation(Line(visible = true, origin = {-39.369, -62.276}, points = {{-10.631, 15.521}, {2.543, 15.521}, {2.543, -15.521}, {5.543, -15.521}}));
  connect(bodyShape.frame_b, opposable.frame_a3) annotation(Line(visible = true, origin = {-39.33, -57.726}, points = {{-10.67, 10.971}, {2.504, 10.971}, {2.504, -10.971}, {5.6633, -10.971}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a1) annotation(Line(visible = true, origin = {-54.376, -10.802}, points = {{4.376, -35.953}, {7.488, -35.953}, {7.488, -22.953}, {-7.45, -22.953}, {-7.45, 58.905}, {-4.45, 58.905}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a2) annotation(Line(visible = true, origin = {-54.376, -7.769}, points = {{4.376, -38.986}, {7.488, -38.986}, {7.488, -25.986}, {-7.45, -25.986}, {-7.45, 64.972}, {-4.45, 64.972}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a3) annotation(Line(visible = true, origin = {-54.349, -4.736}, points = {{4.349, -42.019}, {7.461, -42.019}, {7.461, -29.019}, {-7.477, -29.019}, {-7.477, 71.039}, {-4.3177, 71.039}}));
  connect(springDamperParallel.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-76.506, -28.377}, points = {{-13.494, 18.377}, {3.494, 18.377}, {3.494, -18.378}, {6.506, -18.378}}));
  connect(world.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-20.522, -14.822}, points = {{-131.606, -5.178}, {42.869, -5.178}, {42.869, 5.179}, {45.869, 5.179}}));
  connect(world.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {-20.522, -2.322}, points = {{-131.606, -17.678}, {42.869, -17.678}, {42.869, 17.679}, {45.869, 17.679}}));
  connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-96.783, -45.148}, points = {{-55.345, 25.148}, {17.444, 25.148}, {17.444, -25.149}, {20.457, -25.149}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-138.626, 0}, points = {{-13.502, -20}, {3.496, -20}, {3.496, 20}, {6.509, 20}}));
connect(fixedRotation5.frame_b, middleRightFinger.frame_a) annotation (Line(
    visible=true,
    origin={85.792,-61.394},
    points={{-10.445,11.751},{-4.82,11.751},{-4.82,-8.606},{10.0425,-8.606},{
        10.0425,-6.291}}));
  connect(zero.y, leftMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {27.386, 17.539}, points = {{-179.1, 37.461}, {55.112, 37.461}, {55.112, -36.9614}, {68.8746, -36.9614}}, color = {0, 0, 127}));
  connect(zero.y, leftMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {27.386, 17.539}, points = {{-179.1, 37.461}, {55.112, 37.461}, {55.112, -37.9614}, {68.8746, -37.9614}}, color = {0, 0, 127}));
  connect(zero.y, leftMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {27.386, 17.539}, points = {{-179.1, 37.461}, {55.112, 37.461}, {55.112, -38.9614}, {68.8746, -38.9614}}, color = {0, 0, 127}));
  connect(zero.y, middleLeftFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {32.637, 38.61}, points = {{-184.351, 16.39}, {56.863, 16.39}, {56.863, -15.8894}, {70.6256, -15.8894}}, color = {0, 0, 127}));
  connect(zero.y, middleLeftFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {32.637, 38.61}, points = {{-184.351, 16.39}, {56.863, 16.39}, {56.863, -16.8894}, {70.6256, -16.8894}}, color = {0, 0, 127}));
  connect(zero.y, middleLeftFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {32.637, 38.61}, points = {{-184.351, 16.39}, {56.863, 16.39}, {56.863, -17.8894}, {70.6256, -17.8894}}, color = {0, 0, 127}));
  connect(fixedRotation4.frame_a, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {50.347, -9.643000000000001}, points = {{5, 0}, {-5, 0}}));
  connect(fixedTranslation1.frame_b, fixedRotation3.frame_a) annotation(Line(visible = true, origin = {48.939, 15.357}, points = {{-3.592, 0}, {3.593, 0}}));
  connect(fixedRotation1.frame_b, fixedRotation2.frame_a) annotation(Line(visible = true, origin = {-80.623, -83.934}, points = {{24.297, 13.637}, {31.922, 13.637}, {31.922, 0.637}, {-30.385, 0.637}, {-30.385, -14.273}, {-27.373, -14.273}}));
connect(zero.y, middleMostFinger.anteriorInput[4]) annotation (Line(points={{
        -151.714,55},{-100,55},{-100,62.9006},{-48.1562,62.9006}}, color={0,0,
        127}));
connect(zero.y, middleMostFinger.posteriorInput[4]) annotation (Line(points={
        {-151.714,55},{-100,55},{-100,53.4236},{-48.0634,53.4236}}, color={0,
        0,127}));
connect(zero.y, middleLeftFinger.anteriorInput[4]) annotation (Line(points={{
          -151.714,55},{-25,55},{-25,33.1976},{103.17,33.1976}},
                                                               color={0,0,127}));
connect(zero.y, middleLeftFinger.posteriorInput[4]) annotation (Line(points={{
          -151.714,55},{-25,55},{-25,23.7206},{103.263,23.7206}},color={0,0,
        127}));
connect(zero.y, leftMostFinger.anteriorInput[4]) annotation (Line(points={{
        -151.714,55},{-30,55},{-30,-8.9454},{96.1678,-8.9454}}, color={0,0,
        127}));
connect(zero.y, leftMostFinger.posteriorInput[4]) annotation (Line(points={{
        -151.714,55},{-30,55},{-30,-18.4224},{96.2606,-18.4224}}, color={0,0,
        127}));
connect(zero.y, middleRightFinger.anteriorInput[4]) annotation (Line(points={
        {-151.714,55},{-30,55},{-30,-50.8024},{96.1678,-50.8024}}, color={0,0,
        127}));
connect(zero.y, middleRightFinger.posteriorInput[4]) annotation (Line(points=
        {{-151.714,55},{-30,55},{-30,-60.2794},{96.2606,-60.2794}}, color={0,
        0,127}));
connect(zero.y, opposable.anteriorInput[4]) annotation (Line(points={{
        -151.714,55},{-90,55},{-90,-72.0994},{-23.1562,-72.0994}}, color={0,0,
        127}));
connect(zero.y, opposable.posteriorInput[4]) annotation (Line(points={{
        -151.714,55},{-90,55},{-90,-81.5764},{-23.0634,-81.5764}}, color={0,0,
        127}));
  annotation(experiment(StopTime = 15.0, Interval = 0.1), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealHandContactTrialPrehensile;
