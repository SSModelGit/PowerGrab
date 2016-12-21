within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Interfaces;
partial model BoneJoint

  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve threadPointAnterior
    "Anterior muscle threading point" annotation (Placement(
      visible=true,
      transformation(
        origin={-7.644,105},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={-0,100},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve threadPointPosterior
    "Posterior muscle threading point" annotation (Placement(
      visible=true,
      transformation(
        origin={0,-105},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={0,-100},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b attachPointAnterior
    "Anterior muscle attachment point" annotation (Placement(
      visible=true,
      transformation(
        origin={150,90},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={101.01,85.714},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b attachPointPosterior
    "Posterior muscle attachment point" annotation (Placement(
      visible=true,
      transformation(
        origin={148.167,-80},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={100,-74},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation (Placement(
      visible=true,
      transformation(
        origin={150,5},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={101.01,4.762},
        extent={{-16,-16},{16,16}},
        rotation=0)));

  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={ Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end BoneJoint;
