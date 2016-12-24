within PowerGrabStructure.Examples.Finger;
model TestFingerContactModel
  "Test Model for the Finger component interacting with a contact object"
  extends RealFingerContact( threshold=testThreshold,
      fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
          mFinger*0.147058824},
      mu=testMu,
      delta=testDelta[1],
      k=500,
      phiSide0=0,
      bufferRange=testDelta[2],
      diameter=0.2,
      bufferEffect=25,
      v2delta=0.01,
      v0Mag=1,
      bufferDamping=15);
  inner Modelica.Mechanics.MultiBody.World world(g=0)
    annotation (Placement(transformation(extent={{-278,-120},{-258,-100}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r={0,0,0})
    annotation (Placement(transformation(extent={{-246,-120},{-226,-100}})));
  Modelica.Mechanics.MultiBody.Parts.BodyShape contactObject(
    m=0.01,
    r={0.001,0,0},
    r_CM={0,0,0})
    annotation (Placement(transformation(extent={{-346,28},{-326,48}})));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(
    r={1.5,0,0},
    n={0,0,1},
    angle=90)
    annotation (Placement(transformation(extent={{-192,-120},{-172,-100}})));
  parameter Modelica.SIunits.Length mFinger = 2.04;
  parameter Modelica.SIunits.Length testThreshold = 0.375;
  parameter Real testMu = 0.01;
  parameter Modelica.SIunits.Length testDelta[2] = {0.01, 0.015} "In order of: delta of friction, buffer range";
  parameter Modelica.SIunits.Position object_x[3] = {-0.6, 0.6, -0.1};
equation
  connect(world.frame_b, fixedTranslation4.frame_a) annotation (Line(
      points={{-258,-110},{-252,-110},{-246,-110}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation4.frame_b, contactObject.frame_a) annotation (Line(
      points={{-226,-110},{-226,-110},{-226,-146},{-366,-146},{-366,38},{-346,38}},
      color={95,95,95},
      thickness=0.5));

  connect(contactObject.frame_b, frame_a3) annotation (Line(
      points={{-326,38},{-288,38},{-288,128},{-245,128}},
      color={95,95,95},
      thickness=0.5));
  connect(contactObject.frame_b, frame_a2) annotation (Line(
      points={{-326,38},{-288,38},{-288,104},{-244,104}},
      color={95,95,95},
      thickness=0.5));
  connect(contactObject.frame_b, frame_a1) annotation (Line(
      points={{-326,38},{-288,38},{-288,77},{-241,77}},
      color={95,95,95},
      thickness=0.5));
  connect(contactObject.frame_b, frame_a4) annotation (Line(
      points={{-326,38},{-288,38},{-288,-61},{-257,-61}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation4.frame_b, fixedRotation.frame_a) annotation (Line(
      points={{-226,-110},{-210,-110},{-192,-110}},
      color={95,95,95},
      thickness=0.5));
  connect(frame_a, fixedRotation.frame_b) annotation (Line(
      points={{-139,-92},{-156,-92},{-156,-110},{-172,-110}},
      color={95,95,95},
      thickness=0.5));
end TestFingerContactModel;
