within PowerGrabStructure.BoneStructure.Finger.Examples;
model RealFingerStructure
  extends PowerGrabStructure.BoneStructure.Finger.Templates.FingerStructure(
    redeclare Subcomponents.Basic.Examples.RealBoneDoubleJoint doubleBoneJoint(
      r_IFingerBone=r_IboneCDistal,
      r_shape_IFingerBone=r_shape_IboneCDistal,
      diameterIFingerBone=diameterIboneCDistal,
      r_OFingerBone=r_OboneCDistal,
      r_shape_OFingerBone=r_shape_OboneCDistal,
      diameterOFingerBone=diameterOboneCDistal,
      phi_0_regularJoint=phi_0_boneCDistal,
      phi_0_doubleJoint=phi_0_doubleJoint),
    redeclare Subcomponents.Basic.Examples.RealBoneJoint boneJoint1(
      r_IFingerBone=r_IboneMDistal,
      r_shape_IFingerBone=r_shape_IboneMDistal,
      diameterIFingerBone=diameterIboneMDistal,
      r_OFingerBone=r_OboneMDistal,
      r_shape_OFingerBone=r_shape_OboneMDistal,
      diameterOFingerBone=diameterOboneMDistal,
      phi_0_restrained=phi_0_boneMDistal),
    redeclare Subcomponents.Basic.Examples.RealBoneJoint boneJoint(
      r_IFingerBone=r_IboneFDistal,
      r_shape_IFingerBone=r_shape_IboneFDistal,
      diameterIFingerBone=diameterIboneFDistal,
      r_OFingerBone=r_OboneFDistal,
      r_shape_OFingerBone=r_shape_OboneFDistal,
      diameterOFingerBone=diameterOboneFDistal,
      phi_0_restrained=phi_0_boneFDistal));

  parameter Modelica.SIunits.Position r_IboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IboneFDistal[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIboneFDistal = 0.02;
  parameter Modelica.SIunits.Position r_OboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OboneFDistal[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOboneFDistal = 0.02;
  parameter Modelica.SIunits.Angle phi_0_boneFDistal;
  parameter Modelica.SIunits.Position r_IboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IboneMDistal[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIboneMDistal = 0.02;
  parameter Modelica.SIunits.Position r_OboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OboneMDistal[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOboneMDistal = 0.02;
  parameter Modelica.SIunits.Angle phi_0_boneMDistal;
  parameter Modelica.SIunits.Position r_IboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IboneCDistal[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIboneCDistal = 0.02;
  parameter Modelica.SIunits.Position r_OboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OboneCDistal[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOboneCDistal = 0.02;
  parameter Modelica.SIunits.Angle phi_0_boneCDistal;
  parameter Modelica.SIunits.Position baseAnterior[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position basePosterior[3] = {0, 0, 0};
  parameter Modelica.SIunits.Angle phi_0_doubleJoint;
  annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
end RealFingerStructure;
