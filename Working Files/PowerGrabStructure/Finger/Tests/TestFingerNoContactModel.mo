within PowerGrabStructure.Finger.Tests;
model TestFingerNoContactModel
  import PowerGrabStructure;

  PowerGrabStructure.Finger.Examples.RealFingerNoContact middleMostFinger(
      fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
          mFinger*0.147058824},
      phiSide0=0,
      diameter=0.02)    annotation (Placement(visible=true, transformation(
      origin={69.674,33.203},
      extent={{-12.5,-12.5},{12.5,12.5}},
      rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin={-50.128,
            0},                                                                                                                       extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin={-12.117,
            0},                                                                                                                                                          extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin={-35.617,
  //          71.361},                                                                                                           extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin={-30.714,
            33},                                                                                                            extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation6(n = {1, 0, 0}, angle = 0) annotation(Placement(visible = true, transformation(origin={29,0},      extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Length mFinger = 0.204;
  parameter Modelica.SIunits.Position object_x[3] = {-0.06, 0.06, 0};
  Modelica.Blocks.Sources.Pulse anteriorPulse(period=3)
    annotation (Placement(transformation(extent={{32,52},{52,72}})));
  Modelica.Blocks.Sources.Pulse posteriorPulse(period=3, startTime=1.25)
    annotation (Placement(transformation(extent={{-2,52},{18,72}})));
equation
  connect(fixedRotation6.frame_b,middleMostFinger. frame_a) annotation(Line(visible = true, origin={52.654,
          3.885},                                                                                                       points={{-13.654,
          -3.885},{-6.029,-3.885},{-6.029,-4.182},{14.8565,-4.182},{14.8565,
          18.133}}));
  connect(fixedRotation.frame_b,fixedRotation6. frame_a) annotation(Line(visible = true, origin={11.215,
          55},                                                                                                    points={{-13.332,
          -55},{2.773,-55},{7.785,-55}}));
  connect(world.frame_b,fixedRotation. frame_a) annotation(Line(visible = true, origin={-26.626,
          20},                                                                                          points={{-13.502,
          -20},{3.496,-20},{4.509,-20}}));

  connect(zero.y, middleMostFinger.anteriorInput[4]) annotation (Line(points={{
          -19.714,33},{24.143,33},{24.143,38.9006},{67.8438,38.9006}}, color={0,
          0,127}));
  connect(zero.y, middleMostFinger.posteriorInput[4]) annotation (Line(points={
          {-19.714,33},{24.143,33},{24.143,29.4236},{67.9366,29.4236}}, color={
          0,0,127}));
  connect(anteriorPulse.y, middleMostFinger.anteriorInput[1]) annotation (Line(
        points={{53,62},{60,62},{60,35.9006},{67.8438,35.9006}}, color={0,0,127}));
  connect(anteriorPulse.y, middleMostFinger.anteriorInput[2]) annotation (Line(
        points={{53,62},{53,50},{67.8438,50},{67.8438,36.9006}}, color={0,0,127}));
  connect(anteriorPulse.y, middleMostFinger.anteriorInput[3]) annotation (Line(
        points={{53,62},{60,62},{60,37.9006},{67.8438,37.9006}}, color={0,0,127}));
  connect(posteriorPulse.y, middleMostFinger.posteriorInput[1]) annotation (
      Line(points={{19,62},{44,62},{44,26.4236},{67.9366,26.4236}}, color={0,0,
          127}));
  connect(posteriorPulse.y, middleMostFinger.posteriorInput[2]) annotation (
      Line(points={{19,62},{43.5,62},{43.5,27.4236},{67.9366,27.4236}}, color={
          0,0,127}));
  connect(posteriorPulse.y, middleMostFinger.posteriorInput[3]) annotation (
      Line(points={{19,62},{44,62},{44,28.4236},{67.9366,28.4236}}, color={0,0,
          127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TestFingerNoContactModel;
