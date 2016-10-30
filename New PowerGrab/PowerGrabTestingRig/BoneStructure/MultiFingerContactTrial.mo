within PowerGrabTestingRig.BoneStructure;
model MultiFingerContactTrial
  PowerGrabStructure.Examples.Finger.RealFingerContact middleMostFinger(
    fDistalClosed=false,
    mDistalClosed=false,
    cDistalSideClosed=false,
    cDistalRegularClosed=false,
    threshold=threshold,
    fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
        mFinger*0.147058824},
    mu=mu,
    delta=delta,
    phiThumb0=0,
    bufferEffect=50) annotation (Placement(visible=true, transformation(
        origin={-46.326,57.203},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.FingerContactArray
    opposable(
    mDistalClosed=false,
    cDistalRegularClosed=false,
    fDistalClosed=false,
    cDistalSideClosed=false,
    threshold=threshold,
    fingerLength={tFinger*0.137931034,tFinger*0.344827586,tFinger*0.275862069,
        tFinger*0.24137931},
    mu=mu,
    delta=delta) if                                                                                                                                                                                                         second
    annotation (Placement(visible=true, transformation(
        origin={-21.326,-77.797},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-162.128, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, 14.703}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = object_x) annotation(Placement(visible = true, transformation(origin = {-130, -46.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-167.617, 93.361}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-160, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = 75, n = {0, 0, -1}) if second annotation(Placement(visible = true, transformation(origin = {-97.996, -98.20699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = -150, n = {0, 1, 0}) if second annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, -70.297}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0, -0.25}) if third annotation(Placement(visible = true, transformation(origin = {35.347, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation3(n = {0, 0, 1}, angle = 90) if third annotation(Placement(visible = true, transformation(origin = {62.532, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, 0, -0.4}) if fourth annotation(Placement(visible = true, transformation(origin = {35.347, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation4(n = {0, 0, 1}, angle = 90) if fourth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0, 0, 0.25}) if fifth annotation(Placement(visible = true, transformation(origin = {35.347, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation5(n = {0, 0, 1}, angle = 90) if fifth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.FingerContactArray
    middleLeftFinger(
    fDistalClosed=false,
    mDistalClosed=false,
    cDistalRegularClosed=false,
    cDistalSideClosed=false,
    fingerLength={rFinger*0.319148936,rFinger*0.319148936,rFinger*0.212765957,
        rFinger*0.14893617},
    mu=mu,
    delta=delta,
    threshold=threshold) if                                                                                                                                                                                                         third
    annotation (Placement(visible=true, transformation(
        origin={98.56100000000001,25.357},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.FingerContactArray
    leftMostFinger(
    fDistalClosed=false,
    mDistalClosed=false,
    cDistalRegularClosed=false,
    cDistalSideClosed=false,
    fingerLength={lFinger*0.337837838,lFinger*0.324324324,lFinger*0.168918919,
        lFinger*0.168918919},
    mu=mu,
    delta=delta,
    threshold=threshold) if                                                                                                                                                                                                         fourth
    annotation (Placement(visible=true, transformation(
        origin={97.998,-14.643},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.FingerContactArray
    middleRight(
    fDistalClosed=false,
    mDistalClosed=false,
    cDistalRegularClosed=false,
    cDistalSideClosed=false,
    fingerLength={iFinger*0.342857143,iFinger*0.342857143,iFinger*0.171428571,
        iFinger*0.142857143},
    mu=mu,
    delta=delta,
    threshold=threshold) if                                                                                                                                                                                                         fifth
    annotation (Placement(visible=true, transformation(
        origin={97.998,-56.5},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  parameter Boolean second = true;
  parameter Boolean third = true;
  parameter Boolean fourth = true;
  parameter Boolean fifth = true;
  Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 100, d = 10000, s_unstretched = 0) annotation(Placement(visible = true, transformation(origin = {-120, 21.821}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0.01, 0, 0}, r_CM = {0, 0, 0}, m = 0.01,
  r_0(                                                                                                 fixed =     true, start =     object_x))
                                                                                                                                               annotation(Placement(visible = true, transformation(origin = {-60, -46.755}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation6(n = {0, 1, 0}, angle = 0) annotation(Placement(visible = true, transformation(origin = {-85, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation7(angle = 15, n = {0, 1, 0}) if fourth annotation(Placement(visible = true, transformation(origin = {67.408, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 0.01, startTime = 10, height = 1) annotation(Placement(visible = true, transformation(origin = {-208.139, 72.672}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(duration = 0.01, startTime = 5) annotation(Placement(visible = true, transformation(origin = {-207.786, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp2(duration = 0.01) annotation(Placement(visible = true, transformation(origin = {-210, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation8(angle = 30, n = {1, 0, 0}) if second annotation(Placement(visible = true, transformation(origin = {-65, -95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length mFinger = 2.04;
  parameter Modelica.SIunits.Length iFinger = 1.75;
  parameter Modelica.SIunits.Length rFinger = 1.88;
  parameter Modelica.SIunits.Length lFinger = 1.48;
  parameter Modelica.SIunits.Length tFinger = 1.45;
  parameter Modelica.SIunits.Length threshold = 0.375;
  parameter Real mu = 0.01;
  parameter Modelica.SIunits.Length delta = 0.01;
  parameter Modelica.SIunits.Position object_x[3] = {-0.8, 0.6, 0.15};
  Modelica.Mechanics.MultiBody.Parts.FixedRotation debug2(color = {255, 0, 0}, r = {threshold, 0, 0}, n = {0, 0, 1}, angle = 90) annotation(Placement(visible = true, transformation(origin = {-190, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation debug1(color = {255, 0, 0}, r = {threshold, 0, 0}, n = {0, 0, 1}, angle = 45) annotation(Placement(visible = true, transformation(origin = {-191.688, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation debug3(color = {255, 0, 0}, r = {threshold, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-190, -38.338}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.RealTestFinger
    realTestFinger
    annotation (Placement(transformation(extent={{-270,25},{-245,50}})));
equation
  connect(fixedTranslation.frame_b, debug1.frame_a) annotation(Line(visible = true, origin = {-160.811, -62.167}, points = {{40.811, 15.417}, {43.923, 15.417}, {43.923, 2.417}, {-43.89, 2.417}, {-43.89, -17.833}, {-40.877, -17.833}}));
  connect(fixedTranslation.frame_b, debug2.frame_a) annotation(Line(visible = true, origin = {-155.725, -53.375}, points = {{35.725, 6.625}, {38.837, 6.625}, {38.837, -6.375}, {12.725, -6.375}, {12.725, 6.375}, {-47.287, 6.375}, {-47.287, -6.625}, {-44.275, -6.625}}));
  connect(fixedTranslation.frame_b, debug3.frame_a) annotation(Line(visible = true, origin = {-159.967, -48.279}, points = {{39.967, 1.529}, {43.079, 1.529}, {43.079, -11.471}, {-43.046, -11.471}, {-43.046, 9.941000000000001}, {-40.033, 9.941000000000001}}));
  connect(fixedTranslation.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-84.006, -46.752}, points = {{-35.994, 0.002}, {10.994, 0.002}, {10.994, -0.003}, {14.006, -0.003}}));
  connect(bodyShape.frame_b, middleRight.frame_a4) annotation(Line(visible = true, origin = {7.306, -61.302}, points={{-57.306,
        14.547},{-54.194,14.547},{-54.194,-10.698},{82.8476,-10.698},{82.8476,
        -7.698}}));
  connect(bodyShape.frame_b, opposable.frame_a4) annotation(Line(visible = true, origin = {-40.423, -74.08}, points={{-9.577,
        27.325},{-6.464,27.325},{-6.464,-19.217},{11.2526,-19.217},{11.2526,
        -16.217}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a4) annotation(Line(visible = true, origin = {43.436, -40.218}, points={{-93.436,
        -6.537},{46.7176,-6.537},{46.7176,13.075}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a4) annotation(Line(visible = true, origin = {43.811, -26.884}, points={{-93.811,
        -19.871},{46.9056,-19.871},{46.9056,39.741}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a4) annotation(Line(visible = true, origin = {-50.423, 6.92}, points={{0.423,
        -53.675},{3.536,-53.675},{3.536,34.783},{-3.7474,34.783},{-3.7474,
        37.783}}));
  connect(fixedRotation8.frame_b, opposable.frame_a) annotation(Line(visible = true, origin = {-33.993, -92.994}, points={{-21.007,
        -2.006},{10.5035,-2.006},{10.5035,4.012}}));
  connect(fixedRotation2.frame_b, fixedRotation8.frame_a) annotation(Line(visible = true, origin = {-79.755, -96.60299999999999}, points={{-8.241,
        -1.604},{1.743,-1.604},{1.743,1.603},{4.755,1.603}}));
  connect(ramp2.y, leftMostFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {15.541, -2.723}, points={{
        -214.541,7.723},{66.957,7.723},{66.957,-7.2224},{80.6268,-7.2224}},                                                                                                                                             color = {0, 0, 127}));
  connect(ramp1.y, leftMostFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {16.094, 14.777}, points={{-212.88,
        25.223},{66.404,25.223},{66.404,-25.7224},{80.0738,-25.7224}},                                                                                                                                          color = {0, 0, 127}));
  connect(ramp.y, leftMostFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {16.006, 31.113}, points={{
        -213.145,41.559},{66.492,41.559},{66.492,-43.0584},{80.1618,-43.0584}},                                                                                                                                 color = {0, 0, 127}));
  connect(ramp2.y, middleLeftFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {15.963, 17.277}, points={{
        -214.963,-12.277},{67.098,-12.277},{67.098,12.7776},{80.7678,12.7776}},                                                                                                                         color = {0, 0, 127}));
  connect(ramp1.y, middleLeftFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {16.517, 34.777}, points={{
        -213.303,5.223},{66.544,5.223},{66.544,-5.7224},{80.2138,-5.7224}},                                                                                                                         color = {0, 0, 127}));
  connect(ramp.y, middleLeftFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {16.428, 51.113}, points={{
        -213.567,21.559},{66.633,21.559},{66.633,-23.0584},{80.3028,-23.0584}},                                                                                                                                   color = {0, 0, 127}));
  connect(ramp2.y, opposable.anteriorInput[3]) annotation(Line(visible = true, origin = {-73.952, -34.3}, points={{
        -125.048,39.3},{37.126,39.3},{37.126,-38.7994},{50.7958,-38.7994}},                                                                                                              color = {0, 0, 127}));
  connect(ramp1.y, opposable.anteriorInput[2]) annotation(Line(visible = true, origin = {-73.399, -16.8}, points={{
        -123.387,56.8},{36.573,56.8},{36.573,-57.2994},{50.2428,-57.2994}},                                                                                                              color = {0, 0, 127}));
  connect(ramp.y, opposable.anteriorInput[1]) annotation(Line(visible = true, origin = {-73.48699999999999, -0.464}, points={{
        -123.652,73.136},{36.661,73.136},{36.661,-74.6354},{50.3308,-74.6354}},                                                                                                                             color = {0, 0, 127}));
  connect(zero.y, opposable.posteriorInput[3]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
        61.538},{24.603,61.538},{24.603,-61.0384},{38.3656,-61.0384}},                                                                                                                            color = {0, 0, 127}));
  connect(zero.y, opposable.posteriorInput[2]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
        61.538},{24.603,61.538},{24.603,-62.0384},{38.3656,-62.0384}},                                                                                                                            color = {0, 0, 127}));
  connect(zero.y, opposable.posteriorInput[1]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
        61.538},{24.603,61.538},{24.603,-63.0384},{38.3656,-63.0384}},                                                                                                                            color = {0, 0, 127}));
  connect(ramp2.y, middleMostFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {-92.702, 33.2}, points={{
        -106.298,-28.2},{30.876,-28.2},{30.876,28.7006},{44.5458,28.7006}},                                                                                                                      color = {0, 0, 127}));
  connect(ramp1.y, middleMostFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {-92.149, 50.7}, points={{
        -104.637,-10.7},{30.323,-10.7},{30.323,10.2006},{43.9928,10.2006}},                                                                                                                    color = {0, 0, 127}));
  connect(ramp.y, middleMostFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {-92.23699999999999, 67.036}, points={{
        -104.902,5.636},{30.411,5.636},{30.411,-7.1354},{44.0808,-7.1354}},                                                                                                                                    color = {0, 0, 127}));
  connect(zero.y, middleMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points={{-68.821,
        -5.962},{18.353,-5.962},{18.353,6.4616},{32.1156,6.4616}},                                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, middleMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points={{-68.821,
        -5.962},{18.353,-5.962},{18.353,5.4616},{32.1156,5.4616}},                                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, middleMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points={{-68.821,
        -5.962},{18.353,-5.962},{18.353,4.4616},{32.1156,4.4616}},                                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, opposable.posteriorInput[4]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points={{-87.571,
        61.538},{24.603,61.538},{24.603,-60.0384},{38.3656,-60.0384}},                                                                                                                            color = {0, 0, 127}));
  connect(one.y, opposable.anteriorInput[4]) annotation(Line(visible = true, origin = {-67.643, 37.708}, points={{-88.974,
        55.653},{44.4868,55.653},{44.4868,-109.807}},                                                                                                                        color = {0, 0, 127}));
  connect(one.y, middleMostFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {-82.083, 72.642}, points={{-74.534,
        20.719},{20.257,20.719},{20.257,-19.2184},{34.0196,-19.2184}},                                                                                                                                           color = {0, 0, 127}));
  connect(one.y, middleMostFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {-82.10599999999999, 77.381}, points={{-74.511,
        15.98},{20.28,15.98},{20.28,-14.4804},{33.9498,-14.4804}},                                                                                                                                        color = {0, 0, 127}));
  connect(fixedRotation7.frame_b, leftMostFinger.frame_a) annotation(Line(visible = true, origin = {89.69199999999999, -31.943}, points={{-12.284,
        -3.057},{6.1425,-3.057},{6.1425,6.115}}));
  connect(fixedRotation4.frame_b, fixedRotation7.frame_a) annotation(Line(visible = true, origin = {67.91500000000001, -21.762}, points = {{7.432, 12.119}, {13.057, 12.119}, {13.057, 1.119}, {-11.52, 1.119}, {-11.52, -13.238}, {-10.507, -13.238}}));
  connect(fixedRotation3.frame_b, middleLeftFinger.frame_a) annotation(Line(visible = true, origin = {85.128, 12.92}, points={{-12.596,
        2.437},{-4.971,2.437},{-4.971,-3.063},{11.2695,-3.063},{11.2695,1.252}}));
  connect(fixedRotation6.frame_b, middleMostFinger.frame_a) annotation(Line(visible = true, origin = {-61.346, 45.885}, points={{-13.654,
        4.115},{-6.029,4.115},{-6.029,-4.182},{12.8565,-4.182},{12.8565,0.133}}));
  connect(fixedRotation.frame_b, fixedRotation6.frame_a) annotation(Line(visible = true, origin = {-74.126, 30.802}, points = {{17.8, -16.099}, {25.425, -16.099}, {25.425, -3.099}, {-23.887, -3.099}, {-23.887, 19.198}, {-20.874, 19.198}}));
  connect(fixedTranslation.frame_b, springDamperParallel.frame_a) annotation(Line(visible = true, origin = {-125.967, -19.56}, points={{5.967,
        -27.19},{9.079,-27.19},{9.079,-14.19},{-10.046,-14.19},{-10.046,
        41.381},{-4.033,41.381}}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-144.532, -33.375}, points = {{-7.596, 13.375}, {1.532, 13.375}, {1.532, -13.375}, {4.532, -13.375}}));
  connect(bodyShape.frame_b, middleRight.frame_a1) annotation(Line(visible = true, origin = {50.124, -56.178}, points={{
        -100.124,9.423},{32.374,9.423},{32.374,-9.422},{35.374,-9.422}}));
  connect(bodyShape.frame_b, middleRight.frame_a2) annotation(Line(visible = true, origin = {50.124, -51.627}, points = {{-100.124, 4.872}, {32.374, 4.872}, {32.374, -4.873}, {35.374, -4.873}}));
  connect(bodyShape.frame_b, middleRight.frame_a3) annotation(Line(visible = true, origin = {50.163, -47.078}, points={{
        -100.163,0.323},{32.335,0.323},{32.335,-0.322},{35.4943,-0.322}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a1) annotation(Line(visible = true, origin = {50.124, -35.249}, points = {{-100.124, -11.506}, {32.374, -11.506}, {32.374, 11.506}, {35.374, 11.506}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a2) annotation(Line(visible = true, origin = {50.124, -30.699}, points = {{-100.124, -16.056}, {32.374, -16.056}, {32.374, 16.056}, {35.374, 16.056}}));
  connect(bodyShape.frame_b, leftMostFinger.frame_a3) annotation(Line(visible = true, origin = {50.163, -26.149}, points={{
        -100.163,-20.606},{32.335,-20.606},{32.335,20.606},{35.4943,20.606}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a1) annotation(Line(visible = true, origin = {50.546, -15.249}, points = {{-100.546, -31.506}, {32.515, -31.506}, {32.515, 31.506}, {35.515, 31.506}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a2) annotation(Line(visible = true, origin = {50.546, -10.699}, points = {{-100.546, -36.056}, {32.515, -36.056}, {32.515, 36.056}, {35.515, 36.056}}));
  connect(bodyShape.frame_b, middleLeftFinger.frame_a3) annotation(Line(visible = true, origin = {50.586, -6.149}, points={{
        -100.586,-40.606},{32.475,-40.606},{32.475,40.606},{35.6343,40.606}}));
  connect(bodyShape.frame_b, opposable.frame_a1) annotation(Line(visible = true, origin = {-39.369, -66.82599999999999}, points = {{-10.631, 20.071}, {2.543, 20.071}, {2.543, -20.071}, {5.543, -20.071}}));
  connect(bodyShape.frame_b, opposable.frame_a2) annotation(Line(visible = true, origin = {-39.369, -62.276}, points = {{-10.631, 15.521}, {2.543, 15.521}, {2.543, -15.521}, {5.543, -15.521}}));
  connect(bodyShape.frame_b, opposable.frame_a3) annotation(Line(visible = true, origin = {-39.33, -57.726}, points={{-10.67,
        10.971},{2.504,10.971},{2.504,-10.971},{5.6633,-10.971}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a1) annotation(Line(visible = true, origin = {-54.376, -10.802}, points = {{4.376, -35.953}, {7.488, -35.953}, {7.488, -22.953}, {-7.45, -22.953}, {-7.45, 58.905}, {-4.45, 58.905}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a2) annotation(Line(visible = true, origin = {-54.376, -7.769}, points = {{4.376, -38.986}, {7.488, -38.986}, {7.488, -25.986}, {-7.45, -25.986}, {-7.45, 64.97199999999999}, {-4.45, 64.97199999999999}}));
  connect(bodyShape.frame_b, middleMostFinger.frame_a3) annotation(Line(visible = true, origin = {-54.349, -4.736}, points={{4.349,
        -42.019},{7.461,-42.019},{7.461,-29.019},{-7.477,-29.019},{-7.477,
        71.039},{-4.3177,71.039}}));
  connect(springDamperParallel.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-81.506, -12.467}, points = {{-28.494, 34.288}, {8.494, 34.288}, {8.494, -34.288}, {11.506, -34.288}}));
  connect(world.frame_b, fixedTranslation3.frame_a) annotation(Line(visible = true, origin = {-20.522, -34.822}, points={{
        -131.606,14.822},{42.869,14.822},{42.869,-14.821},{45.869,-14.821}}));
  connect(world.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-20.522, -14.822}, points={{
        -131.606,-5.178},{42.869,-5.178},{42.869,5.179},{45.869,5.179}}));
  connect(world.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {-20.522, -2.322}, points={{
        -131.606,-17.678},{42.869,-17.678},{42.869,17.679},{45.869,17.679}}));
  connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-96.783, -45.148}, points={{-55.345,
        25.148},{17.444,25.148},{17.444,-25.149},{20.457,-25.149}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-96.783, -2.649}, points={{-55.345,
        -17.351},{17.444,-17.351},{17.444,17.352},{20.457,17.352}}));
  connect(fixedRotation5.frame_b, middleRight.frame_a) annotation(Line(visible = true, origin = {85.792, -61.394}, points={{-10.445,
        11.751},{-4.82,11.751},{-4.82,-8.606},{10.0425,-8.606},{10.0425,
        -6.291}}));
  connect(one.y, middleRight.anteriorInput[3]) annotation(Line(visible = true, origin = {26.137, 20.529}, points={{
        -182.754,72.832},{56.361,72.832},{56.361,-72.3314},{70.0308,-72.3314}},                                                                                                                                                                         color = {0, 0, 127}));
  connect(one.y, middleRight.posteriorInput[4]) annotation(Line(visible = true, origin = {26.16, 15.791}, points={{
        -182.777,77.57},{56.338,77.57},{56.338,-76.0704},{70.1006,-76.0704}},                                                                                                                                                                color = {0, 0, 127}));
  connect(zero.y, middleRight.posteriorInput[3]) annotation(Line(visible = true, origin = {28.064, -10.89}, points={{
        -177.064,50.89},{54.434,50.89},{54.434,-50.3894},{68.1966,-50.3894}},                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, middleRight.posteriorInput[2]) annotation(Line(visible = true, origin = {28.064, -10.89}, points={{
        -177.064,50.89},{54.434,50.89},{54.434,-51.3894},{68.1966,-51.3894}},                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, middleRight.posteriorInput[1]) annotation(Line(visible = true, origin = {28.064, -10.89}, points={{
        -177.064,50.89},{54.434,50.89},{54.434,-52.3894},{68.1966,-52.3894}},                                                                                                                  color = {0, 0, 127}));
  connect(one.y, middleRight.anteriorInput[4]) annotation(Line(visible = true, origin = {26.137, 20.529}, points={{
        -182.754,72.832},{56.361,72.832},{56.361,-71.3314},{70.0308,-71.3314}},                                                                                                                                                                         color = {0, 0, 127}));
  connect(zero.y, middleRight.anteriorInput[2]) annotation(Line(visible = true, origin = {28.041, -6.151}, points={{
        -177.041,46.151},{54.457,46.151},{54.457,-46.6514},{68.1268,-46.6514}},                                                                                                                   color = {0, 0, 127}));
  connect(zero.y, middleRight.anteriorInput[1]) annotation(Line(visible = true, origin = {28.041, -6.151}, points={{
        -177.041,46.151},{54.457,46.151},{54.457,-47.6514},{68.1268,-47.6514}},                                                                                                                   color = {0, 0, 127}));
  connect(one.y, leftMostFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {26.16, 36.719}, points={{
        -182.777,56.642},{56.338,56.642},{56.338,-55.1414},{70.1006,-55.1414}},                                                                                                                     color = {0, 0, 127}));
  connect(zero.y, leftMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {28.064, 10.039}, points={{
        -177.064,29.961},{54.434,29.961},{54.434,-29.4614},{68.1966,-29.4614}},                                                                                                                       color = {0, 0, 127}));
  connect(zero.y, leftMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {28.064, 10.039}, points={{
        -177.064,29.961},{54.434,29.961},{54.434,-30.4614},{68.1966,-30.4614}},                                                                                                                       color = {0, 0, 127}));
  connect(zero.y, leftMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {28.064, 10.039}, points={{
        -177.064,29.961},{54.434,29.961},{54.434,-31.4614},{68.1966,-31.4614}},                                                                                                                       color = {0, 0, 127}));
  connect(zero.y, middleLeftFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {28.486, 30.039}, points={{
        -177.486,9.961},{54.575,9.961},{54.575,-9.4614},{68.3376,-9.4614}},                                                                                                                         color = {0, 0, 127}));
  connect(one.y, leftMostFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {26.137, 41.458}, points={{
        -182.754,51.903},{56.361,51.903},{56.361,-50.4034},{70.0308,-50.4034}},                                                                                                                                color = {0, 0, 127}));
  connect(one.y, middleLeftFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {26.582, 56.719}, points={{
        -183.199,36.642},{56.479,36.642},{56.479,-35.1414},{70.2416,-35.1414}},                                                                                                                        color = {0, 0, 127}));
  connect(zero.y, middleLeftFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {28.486, 30.039}, points={{
        -177.486,9.961},{54.575,9.961},{54.575,-10.4614},{68.3376,-10.4614}},                                                                                                                       color = {0, 0, 127}));
  connect(zero.y, middleLeftFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {28.486, 30.039}, points={{
        -177.486,9.961},{54.575,9.961},{54.575,-11.4614},{68.3376,-11.4614}},                                                                                                                       color = {0, 0, 127}));
  connect(one.y, middleLeftFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {26.559, 61.458}, points={{
        -183.176,31.903},{56.502,31.903},{56.502,-30.4034},{70.1718,-30.4034}},                                                                                                                       color = {0, 0, 127}));
  connect(fixedRotation5.frame_a, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {50.347, -49.643}, points = {{5, 0}, {-5, 0}}));
  connect(fixedRotation4.frame_a, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {50.347, -9.643000000000001}, points = {{5, 0}, {-5, 0}}));
  connect(fixedTranslation1.frame_b, fixedRotation3.frame_a) annotation(Line(visible = true, origin = {48.939, 15.357}, points = {{-3.592, 0}, {3.593, 0}}));
  connect(fixedRotation1.frame_b, fixedRotation2.frame_a) annotation(Line(visible = true, origin = {-80.623, -83.934}, points = {{24.297, 13.637}, {31.922, 13.637}, {31.922, 0.637}, {-30.385, 0.637}, {-30.385, -14.273}, {-27.373, -14.273}}));
  annotation(experiment(StopTime = 45.0, Interval = 0.1, Algorithm = "cvodes"), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MultiFingerContactTrial;
