within PowerGrabStructure.Finger.Tests;
model TestFingerContactModel
  "Test Model for the Finger component interacting with a contact object"
  import PowerGrabStructure;

  PowerGrabStructure.Finger.Examples.RealFingerContact middleMostFinger(threshold=threshold,
      fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
          mFinger*0.147058824},
      mu=mu,
      phiSide0=0,
      bufferRange=delta[2],
      diameter=0.02,
      bufferEffect=25,
      v2delta=0.01,
      v0Mag=1,
      bufferDamping=15,
    k=5000,
    delta=delta[1])     annotation (Placement(visible=true, transformation(
      origin={85.674,35.203},
      extent={{-12.5,-12.5},{12.5,12.5}},
      rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin={-30.128,
            -42},                                                                                                                     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin={9.883,-2},       extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = object_x) annotation(Placement(visible = true, transformation(origin={2,-68.75},       extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin={-35.617,
  //          71.361},                                                                                                           extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin={-30.714,
            33},                                                                                                            extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 100, d = 10000, s_unstretched = 0) annotation(Placement(visible = true, transformation(origin={32,-32},      extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0.01, 0, 0}, r_CM = {0, 0, 0}, m = 0.01, r_0(fixed = true, start = object_x)) annotation(Placement(visible = true, transformation(origin={72,
            -68.755},                                                                                                                                                                                                    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation6(n = {1, 0, 0}, angle = 0) annotation(Placement(visible = true, transformation(origin={47,28},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(              startTime = 5, height = 0.2,
    duration=0)                                                                annotation(Placement(visible = true, transformation(origin={-76.139,
            50.672},                                                                                                                                            extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(              startTime = 3, height = 0.6,
    duration=0)                                                                 annotation(Placement(visible = true, transformation(origin={-75.786,
            18},                                                                                                                                             extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp2(duration=0)      annotation(Placement(visible = true, transformation(origin={-78,-17},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length mFinger = 0.204;
  parameter Modelica.SIunits.Length threshold = 0.0375;
  parameter Real mu = 1;
  parameter Modelica.SIunits.Length delta[2] = {0.01, 0.015} "In order of: delta of friction, buffer range";
  parameter Modelica.SIunits.Position object_x[3] = {-0.06, 0.06, 0};
equation
  connect(fixedTranslation.frame_b,bodyShape. frame_a) annotation(Line(visible = true, origin={47.994,
          -68.752},                                                                                                 points = {{-35.994, 0.002}, {10.994, 0.002}, {10.994, -0.003}, {14.006, -0.003}}));
  connect(bodyShape.frame_b,middleMostFinger. frame_a4) annotation(Line(visible = true, origin={81.577,
          -15.08},                                                                                                points = {{0.423, -53.675}, {3.536, -53.675}, {3.536, 34.783}, {-3.7474, 34.783}, {-3.7474, 37.783}}));
  connect(ramp2.y,middleMostFinger. anteriorInput[3]) annotation(Line(visible = true, origin={39.298,
          11.2},                                                                                                points = {{-106.298, -28.2}, {30.876, -28.2}, {30.876, 28.7006}, {44.5458, 28.7006}}, color = {0, 0, 127}));
  connect(ramp1.y,middleMostFinger. anteriorInput[2]) annotation(Line(visible = true, origin={39.851,
          28.7},                                                                                                points = {{-104.637, -10.7}, {30.323, -10.7}, {30.323, 10.2006}, {43.9928, 10.2006}}, color = {0, 0, 127}));
  connect(ramp.y,middleMostFinger. anteriorInput[1]) annotation(Line(visible = true, origin={39.763,
          45.036},                                                                                               points = {{-104.902, 5.636}, {30.411, 5.636}, {30.411, -7.1354}, {44.0808, -7.1354}}, color = {0, 0, 127}));
  connect(zero.y,middleMostFinger. posteriorInput[3]) annotation(Line(visible = true, origin={51.143,
          31.462},                                                                                                points = {{-70.857, 1.538}, {19.031, 1.538}, {19.031, -1.0384}, {32.7936, -1.0384}}, color = {0, 0, 127}));
  connect(zero.y,middleMostFinger. posteriorInput[2]) annotation(Line(visible = true, origin={51.143,
          31.462},                                                                                                points = {{-70.857, 1.538}, {19.031, 1.538}, {19.031, -2.0384}, {32.7936, -2.0384}}, color = {0, 0, 127}));
  connect(zero.y,middleMostFinger. posteriorInput[1]) annotation(Line(visible = true, origin={51.143,
          31.462},                                                                                                points = {{-70.857, 1.538}, {19.031, 1.538}, {19.031, -3.0384}, {32.7936, -3.0384}}, color = {0, 0, 127}));
  connect(fixedRotation6.frame_b,middleMostFinger. frame_a) annotation(Line(visible = true, origin={70.654,
          23.885},                                                                                                      points = {{-13.654, 4.115}, {-6.029, 4.115}, {-6.029, -4.182}, {12.8565, -4.182}, {12.8565, 0.133}}));
  connect(fixedRotation.frame_b,fixedRotation6. frame_a) annotation(Line(visible = true, origin={31.215,
          13},                                                                                                    points = {{-11.332, -15}, {2.773, -15}, {2.773, 15}, {5.785, 15}}));
  connect(fixedTranslation.frame_b,springDamperParallel. frame_a) annotation(Line(visible = true, origin={16.494,
          -50.375},                                                                                                             points = {{-4.494, -18.375}, {-0.506, -18.375}, {-0.506, 18.375}, {5.506, 18.375}}));
  connect(world.frame_b,fixedTranslation. frame_a) annotation(Line(visible = true, origin={-12.532,
          -55.375},                                                                                              points = {{-7.596, 13.375}, {1.532, 13.375}, {1.532, -13.375}, {4.532, -13.375}}));
  connect(bodyShape.frame_b,middleMostFinger. frame_a1) annotation(Line(visible = true, origin={77.624,
          -32.802},                                                                                                  points = {{4.376, -35.953}, {7.488, -35.953}, {7.488, -22.953}, {-7.45, -22.953}, {-7.45, 58.905}, {-4.45, 58.905}}));
  connect(bodyShape.frame_b,middleMostFinger. frame_a2) annotation(Line(visible = true, origin={77.624,
          -29.769},                                                                                                 points = {{4.376, -38.986}, {7.488, -38.986}, {7.488, -25.986}, {-7.45, -25.986}, {-7.45, 64.972}, {-4.45, 64.972}}));
  connect(bodyShape.frame_b,middleMostFinger. frame_a3) annotation(Line(visible = true, origin={77.651,
          -26.736},                                                                                                 points = {{4.349, -42.019}, {7.461, -42.019}, {7.461, -29.019}, {-7.477, -29.019}, {-7.477, 71.039}, {-4.3177, 71.039}}));
  connect(springDamperParallel.frame_b,bodyShape. frame_a) annotation(Line(visible = true, origin={55.494,
          -50.377},                                                                                                     points = {{-13.494, 18.377}, {3.494, 18.377}, {3.494, -18.378}, {6.506, -18.378}}));
  connect(world.frame_b,fixedRotation. frame_a) annotation(Line(visible = true, origin={-6.626,
          -22},                                                                                         points = {{-13.502, -20}, {3.496, -20}, {3.496, 20}, {6.509, 20}}));
  connect(zero.y, middleMostFinger.anteriorInput[4]) annotation (Line(points={{-19.714,
          33},{31.143,33},{31.143,40.9006},{83.8438,40.9006}}, color={0,0,127}));
  connect(zero.y, middleMostFinger.posteriorInput[4]) annotation (Line(points={{
          -19.714,33},{31.143,33},{31.143,31.4236},{83.9366,31.4236}}, color={0,
          0,127}));
end TestFingerContactModel;
