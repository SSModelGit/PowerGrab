within PowerGrabStructure.Finger.Interfaces;
partial model FingerNoContact

  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin={-139,-92},    extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin={-265,
            0.948},                                                                                                                                                                            extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin={260,
            -0.134},                                                                                                                                                                            extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end FingerNoContact;
