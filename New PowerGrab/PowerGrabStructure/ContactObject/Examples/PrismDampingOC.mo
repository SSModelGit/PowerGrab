within PowerGrabStructure.ContactObject.Examples;
model PrismDampingOC
  extends PowerGrabStructure.ContactObject.Interfaces.ObjectConnection;

  parameter Modelica.SIunits.Length boneLength;
  parameter Modelica.SIunits.Distance threshold;
  parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
  parameter Modelica.SIunits.TranslationalSpringConstant bufferEffect = 500 "Repulsion caused by skin buffer approximation";
  Boolean contact;
  parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
  parameter Modelica.SIunits.TranslationalDampingConstant bufferDamping(final min = 0) = 500 "Buffer zone's damping constant";
  Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {11.732, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance lMag(animation = false) annotation(Placement(visible = true, transformation(origin = {-0, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldComponents.NonLinearSpringDamper spring(
    s_unstretched=threshold,
    fMagDesired=true,
    animation=false) annotation (Placement(visible=true, transformation(
        origin={-0,57.91},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold, animation = true) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(
  s(                                                      fixed =   false),useAxisFlange = true, animation = false) annotation(Placement(visible = true, transformation(origin={61.951,
            -1.936},                                                                                                                                                                               extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativePosition lVec(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {5, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.SIunits.Length lHat[3];
  Modelica.SIunits.Velocity v2[3];
  Modelica.SIunits.Velocity v2Hat[3];
  Modelica.Mechanics.MultiBody.Forces.WorldForce fPrism(diameter = 0.005, animation = false) annotation(Placement(visible = true, transformation(origin = {-65, 38.1}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.WorldForce fSphere(diameter = 0.005, animation = false, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world) annotation(Placement(visible = true, transformation(origin = {-117.719, 38.229}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Real mu0;
  Real checkProjection;
  Real v2Mag;
  parameter Real mu;
  Modelica.Mechanics.MultiBody.Sensors.RelativeVelocity rV(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {-45, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Boolean fContact;
  Boolean bContact "True if within range of skin buffer";
  parameter Modelica.SIunits.Length bufferRange "Range the buffer approximating skin extends";
  parameter Modelica.SIunits.Length delta;
  parameter Modelica.SIunits.Velocity v0Mag = 5;
  parameter Modelica.SIunits.Velocity v2delta = 0.1;
  DiscardedPowerGrabModels.OldComponents.NonLinearSpringDamper skinBuffer(
    animation=false,
    fMagDesired=true,
    s_unstretched=threshold + bufferRange) annotation (Placement(visible=true,
        transformation(
        origin={0,26.587},
        extent={{-10,-10},{10,10}},
        rotation=0)));
equation
  connect(skinBuffer.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 12.325}, points={{-29.851,
          14.262},{8.875,14.262},{8.875,-14.261},{12.1,-14.261}}));
  connect(rV.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {28.601, -28.468}, points={{-63.601,
          -26.532},{20.125,-26.532},{20.125,26.532},{23.35,26.532}}));
  connect(fPrism.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {23.601, 18.082}, points={{-78.601,
          20.018},{25.125,20.018},{25.125,-20.018},{28.35,-20.018}}));
  connect(lVec.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {41.101, -20.968}, points={{-26.101,
          -19.032},{7.625,-19.032},{7.625,19.032},{10.85,19.032}}));
  connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {46.277, -13.468}, points={{-83.045,
          -11.532},{28.686,-11.532},{28.686,11.532},{25.674,11.532}}));
  connect(spring.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 27.987}, points={{-29.851,
          29.923},{8.875,29.923},{8.875,-29.923},{12.1,-29.923}}));
  connect(lMag.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 1.532}, points={{-29.851,
          3.468},{8.875,3.468},{8.875,-3.468},{12.1,-3.468}}));
  contact = lMag.distance <= threshold;
  fContact = abs(lMag.distance - threshold) <= delta;
  bContact = lMag.distance - threshold <= bufferRange;
  spring.k = smooth(1, noEvent(if contact then k else 0));
  skinBuffer.k = smooth(1, noEvent(if bContact then bufferEffect else 0));
  spring.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
  skinBuffer.d = smooth(0, noEvent(if bContact then bufferDamping else 0));
  position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
  lHat = lVec.r_rel / lMag.distance;
  v2 = rV.v_rel - rV.v_rel * lHat * lHat;
  v2Hat = v2 / (v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2 + 0.1);
  v2Mag = sqrt(v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2 + 0.1);
  mu0 = smooth(0, noEvent(if fContact then mu else 0));
  checkProjection = v2Hat * lHat;
  fPrism.force = -mu0 * min(skinBuffer.y, 50) * v2Hat * min(smooth(0, noEvent(if v2Mag > v2delta then v2Mag - v2delta else 0)), v0Mag - v2delta);
  fSphere.force = -fPrism.force;
  connect(fSphere.frame_b, frame_contact) annotation (Line(
      points={{-107.719,38.229},{-107.719,19.1145},{-100,19.1145},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedShape.frame_a, frame_contact) annotation (Line(
      points={{-10,86.994},{-100,86.994},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(spring.frame_a, frame_contact) annotation (Line(
      points={{-10,57.91},{-100,57.91},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(skinBuffer.frame_a, frame_contact) annotation (Line(
      points={{-10,26.587},{-100,26.587},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(lMag.frame_a, frame_contact) annotation (Line(
      points={{-10,5},{-55,5},{-55,0},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(relativePosition.frame_a, frame_contact) annotation (Line(
      points={{-56.768,-25},{-100,-25},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(rV.frame_a, frame_contact) annotation (Line(
      points={{-55,-55},{-100,-55},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(lVec.frame_a, frame_contact) annotation (Line(
      points={{-5,-40},{-50,-40},{-100,-40},{-100,0}},
      color={95,95,95},
      thickness=0.5));
  connect(prismatic.frame_a, frame_object) annotation (Line(
      points={{71.951,-1.936},{85.9755,-1.936},{85.9755,1},{100,1}},
      color={95,95,95},
      thickness=0.5));
  connect(position.flange, prismatic.axis) annotation (Line(points={{21.732,-65},
          {40,-65},{40,4.064},{53.951,4.064}}, color={0,127,0}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true,
          fillPattern =                                                                                                                                                                     FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {-0.339, 0}, extent = {{-66.146, -7.55}, {66.146, 7.55}}, textString = "PRISM DAMP")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PrismDampingOC;
