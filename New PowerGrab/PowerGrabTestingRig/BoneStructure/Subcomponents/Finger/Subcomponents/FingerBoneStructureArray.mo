within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents;
model FingerBoneStructureArray
  Basic.Subcomponents.BoneJointComponent boneCDistal(
    diameterIFingerBone=diameterIboneCDistal,
    diameterOFingerBone=diameterOboneCDistal,
    phi_0_restrained=phi_0_boneCDistal,
    r_shape_OFingerBone=r_shape_OboneCDistal,
    r_OFingerBone=r_OboneCDistal,
    r_IFingerBone=r_IboneCDistal,
    r_shape_IFingerBone=r_shape_IboneCDistal) annotation (Placement(visible=
          true, transformation(
        origin={-77.611,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Basic.Subcomponents.BoneJointComponent boneMDistal(
    r_IFingerBone=r_IboneMDistal,
    r_shape_IFingerBone=r_shape_IboneMDistal,
    diameterIFingerBone=diameterIboneMDistal,
    diameterOFingerBone=diameterOboneMDistal,
    r_OFingerBone=r_OboneMDistal,
    r_shape_OFingerBone=r_shape_OboneMDistal,
    phi_0_restrained=phi_0_boneMDistal) annotation (Placement(visible=true,
        transformation(
        origin={-14.744,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Basic.Subcomponents.BoneJointComponent boneFDistal(
    r_IFingerBone=r_IboneFDistal,
    r_shape_IFingerBone=r_shape_IboneFDistal,
    diameterIFingerBone=diameterIboneFDistal,
    diameterOFingerBone=diameterOboneFDistal,
    r_OFingerBone=r_OboneFDistal,
    r_shape_OFingerBone=r_shape_OboneFDistal,
    phi_0_restrained=phi_0_boneFDistal) annotation (Placement(visible=true,
        transformation(
        origin={50,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin = {120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin = {120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin = {80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin = {40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin = {0, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin = {-40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin = {-80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin = {-120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin = {80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin = {40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin = {0, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin = {-40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin = {-80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin = {-120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput thetaCDistal annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput thetaMDistal annotation(Placement(visible = true, transformation(origin = {5.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput thetaFDistal annotation(Placement(visible = true, transformation(origin = {79.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-147.926, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
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
  Modelica.Blocks.Interfaces.RealInput loadForce annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Sources.FingerLoad
    fingerLoad(
    r2=r_OboneMDistal[1],
    r3=r_OboneCDistal[1],
    r1=r_OboneFDistal[1]/2) annotation (Placement(visible=true, transformation(
        origin={-52.096,71.024},
        extent={{-13.29,-13.29},{13.29,13.29}},
        rotation=0)));
equation
  connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-53.435, 31.839}, points={{13.0924,
          36.2454},{17.63,36.2454},{17.63,-17.826},{-24.176,-17.826},{-24.176,
          -36.839}},                                                                                                                                                                                                   color = {0, 0, 127}));
  connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-23.344, 46.846}, points={{
          -17.2014,25.9226},{8.6,25.9226},{8.6,-51.846}},                                                                                                                   color = {0, 0, 127}));
  connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {20.073, 36.21}, points={{
          -60.6979,41.2107},{15.386,41.2107},{15.386,-41.21},{29.927,-41.21}},                                                                                                                 color = {0, 0, 127}));
  connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-56.343, 28.568}, points={{32.099,
          -34.568},{-12.043,-34.568},{-12.043,34.5676},{-8.01342,34.5676}},                                                                                                                    color = {0, 0, 127}));
  connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-40.113, 32.958}, points={{80.613,
          -38.958},{-28.274,-38.958},{-28.274,38.9591},{-24.0648,38.9591}},                                                                                                                     color = {0, 0, 127}));
  connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.63800000000001, 72.17400000000001}, points={{-25.962,
          -7.71},{7.251,-7.71},{7.251,7.71004},{11.4602,7.71004}},                                                                                                                                  color = {0, 0, 127}));
  connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
  connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-78.80500000000001, 71}, points = {{1.194, -61}, {1.194, 14}, {-1.195, 14}, {-1.195, 33}}));
  connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-49.17, 40.381}, points={{-18.34,
          -31.8096},{9.17,-31.8096},{9.17,63.619}}));
  connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {-7.372, 71}, points = {{-7.372, -61}, {-7.372, 14}, {7.372, 14}, {7.372, 33}}));
  connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {25.119, 40.381}, points={{-29.762,
          -31.8096},{14.881,-31.8096},{14.881,63.619}}));
  connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {65, 71}, points = {{-15, -61}, {-15, 14}, {15, 14}, {15, 33}}, color = {95, 95, 95}));
  connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {100.034, 40.381}, points={{-39.933,
          -31.8096},{19.966,-31.8096},{19.966,63.619}}));
  connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
  connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-78.80500000000001, -71}, points = {{1.194, 61}, {1.194, -14}, {-1.195, -14}, {-1.195, -33}}));
  connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-49.204, -39.6}, points = {{-18.407, 32.2}, {9.204000000000001, 32.2}, {9.204000000000001, -64.40000000000001}}));
  connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {-7.372, -71}, points = {{-7.372, 61}, {-7.372, -14}, {7.372, -14}, {7.372, -33}}, color = {95, 95, 95}));
  connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {25.085, -39.6}, points = {{-29.829, 32.2}, {14.915, 32.2}, {14.915, -64.40000000000001}}));
  connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {65, -71}, points = {{-15, 61}, {-15, -14}, {15, -14}, {15, -33}}, color = {95, 95, 95}));
  connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {100, -39.6}, points = {{-40, 32.2}, {20, 32.2}, {20, -64.40000000000001}}));
  connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-117.769, 0}, points={{-30.157,
          0},{30.158,0}}));
  connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {64.93300000000001, 14.737}, points={{14.666,
          11.736},{-0.14,11.736},{-0.14,-11.737},{-14.933,-11.737}},                                                                                                                                        color = {0, 0, 127}));
  connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {-4.491, 13.27}, points={{9.706,
          12.784},{9.706,-1.257},{-10.253,-1.257},{-10.253,-10.27}},                                                                                                                         color = {0, 0, 127}));
  connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-70.39100000000001, 13.365}, points={{6.673,
          13.071},{6.673,-1.353},{-7.22,-1.353},{-7.22,-10.365}},                                                                                                                                          color = {0, 0, 127}));
  connect(boneCDistal.frame_a, anteriorBase.frame_b) annotation(Line(visible = true, origin = {-108.758, 20.875}, points = {{21.147, -20.875}, {-6.011, -20.875}, {-6.011, 20.875}, {-9.124000000000001, 20.875}}));
  connect(boneCDistal.frame_a, posteriorBase.frame_b) annotation(Line(visible = true, origin = {-108.807, -20.875}, points={{21.196,
          20.875},{-6.028,20.875},{-6.028,-20.875},{-9.141,-20.875}}));
  connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {26.569, 0.238}, points={{-31.212,
          0.2382},{8.89,0.2382},{8.89,-0.238},{13.431,-0.238}}));
  connect(boneCDistal.frame_b2, boneMDistal.frame_a) annotation(Line(visible = true, origin = {-37.706, 0.238}, points={{-29.804,
          0.2382},{8.421,0.2382},{8.421,-0.238},{12.962,-0.238}}));
  annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
end FingerBoneStructureArray;
