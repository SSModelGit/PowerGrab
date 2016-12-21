within PowerGrabStructure.Interfaces.Finger;
partial model FingerContact
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a fingerOrientationFrame
    annotation (Placement(
      visible=true,
      transformation(
        origin={-139,-92},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={-21.635,-111.85},
        extent={{-16,-16},{16,16}},
        rotation=-90)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a proximalPhalangeFrame
    annotation (Placement(
      visible=true,
      transformation(
        origin={-241,77},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={-125,-91},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin={-265,
            0.948},                                                                                                                                                                            extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin={260,
            -0.134},                                                                                                                                                                            extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a middlePhalangeFrame
    annotation (Placement(
      visible=true,
      transformation(
        origin={-244,104},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={-125,0},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a distalPhalangeFrame
    annotation (Placement(
      visible=true,
      transformation(
        origin={-245,128},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={-123.407,91},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a palmBoneFrame annotation (
      Placement(
      visible=true,
      transformation(
        origin={-257,-61},
        extent={{-16,-16},{16,16}},
        rotation=0),
      iconTransformation(
        origin={-78.444,-125},
        extent={{-16,-16},{16,16}},
        rotation=0)));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end FingerContact;
