within DiscardedPowerGrabModels.OldTests;
model TestFingerMultipleRevolute
  PowerGrab.Components.OpenBoneJointComponent boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = false) annotation(Placement(visible = true, transformation(origin = {4.693, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PowerGrab.Components.OpenBoneJointComponent boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, stateSelect = false) annotation(Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
  parameter Modelica.SIunits.Angle phi_0_doubleJoint;
  Modelica.Blocks.Interfaces.RealInput loadForce annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Sources.FingerLoad
    fingerLoad(
    r2=r_OboneMDistal[1],
    r3=r_OboneCDistal[1],
    r1=r_OboneFDistal[1]/2) annotation (Placement(visible=true, transformation(
        origin={-52.096,71.024},
        extent={{-13.29,-13.29},{13.29,13.29}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents.BoneDoubleJointComponent
    boneCDistal(
    phi_0_doubleJoint=phi_0_doubleJoint,
    closedDoubleJoint=false,
    closedRegularJoint=false) annotation (Placement(visible=true,
        transformation(
        origin={-87.761,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealInput anteriorSideP annotation(Placement(visible = true, transformation(origin = {-91.72199999999999, -31.722}, extent = {{-11.722, -11.722}, {11.722, 11.722}}, rotation = 0), iconTransformation(origin = {-26.064, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput posteriorSideP annotation(Placement(visible = true, transformation(origin = {-67.86799999999999, -32.132}, extent = {{-12.132, -12.132}, {12.132, 12.132}}, rotation = 0), iconTransformation(origin = {-26.453, -16.562}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(boneCDistal.posteriorDoubleJointMuscle, posteriorSideP) annotation(Line(visible = true, origin = {-74.47499999999999, 3.338}, points={{-6.6068,
          7.6954},{-6.6068,13.887},{6.607,13.887},{6.607,-35.47}},                                                                                                                                                      color = {0, 0, 127}));
  connect(boneCDistal.anteriorDoubleJointMuscle, anteriorSideP) annotation(Line(visible = true, origin = {-92.991, -3.352}, points={{8.0408,
          14.5123},{8.0408,20.577},{-9.31,20.577},{-9.31,-13.648},{1.269,
          -13.648},{1.269,-28.37}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-41.414, 0}, points = {{36.107, 0}, {-36.107, 0}}));
  connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.454, -40.667}, points = {{-24.907, 31.667}, {12.454, 31.667}, {12.454, -63.333}}));
  connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.527, 40.667}, points={{
          -25.0536,-31.667},{12.527,-31.667},{12.527,63.333}}));
  connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-59.28, 36.32}, points={{18.9374,
          31.7644},{23.474,31.7644},{23.474,-19.095},{-32.9419,-19.095},{
          -32.9419,-25.3401}},                                                                                                                                                                                        color = {0, 0, 127}));
  connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-92.473, -58.4}, points = {{-5.288, 49.4}, {-9.829000000000001, 49.4}, {-9.829000000000001, -26.6}, {12.473, -26.6}, {12.473, -45.6}}));
  connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-92.473, 58.4}, points = {{-5.288, -49.4}, {-9.829000000000001, -49.4}, {-9.829000000000001, 26.6}, {12.473, 26.6}, {12.473, 45.6}}, color = {95, 95, 95}));
  connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-105.078, -20.875}, points = {{-12.87, -20.875}, {2.776, -20.875}, {2.776, 20.875}, {7.317, 20.875}}));
  connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-105.061, 20.875}, points={{-12.821,
          20.875},{2.76,20.875},{2.76,-20.875},{7.3,-20.875}}));
  connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-122.843, 0}, points={{-25.083,
          0},{25.082,0}}));
  connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-18.272, 36.384}, points = {{-22.274, 36.384}, {6.425, 36.384}, {6.425, -36.384}, {9.425000000000001, -36.384}}, color = {0, 0, 127}));
  connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {60.688, 38.71}, points = {{-101.313, 38.71}, {32.771, 38.71}, {32.771, -38.71}, {35.771, -38.71}}, color = {0, 0, 127}));
  connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-23.278, 25.826}, points = {{41.765, -25.497}, {44.765, -25.497}, {44.765, -11.813}, {-45.108, -11.813}, {-45.108, 37.31}, {-41.078, 37.31}}, color = {0, 0, 127}));
  connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {29.405, 28.753}, points = {{94.38800000000001, -28.424}, {97.38800000000001, -28.424}, {97.38800000000001, -14.74}, {-97.791, -14.74}, {-97.791, 43.164}, {-93.583, 43.164}}, color = {0, 0, 127}));
  connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points={{-25.963,
          -7.71},{7.251,-7.71},{7.251,7.71004},{11.4592,7.71004}},                                                                                                                       color = {0, 0, 127}));
  connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
  connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.347, 71}, points = {{2.347, -61}, {2.347, 14}, {-2.347, 14}, {-2.347, 33}}));
  connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.598, 40.381}, points = {{-16.804, -31.81}, {8.401999999999999, -31.81}, {8.401999999999999, 63.619}}));
  connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {95, 71}, points = {{15, -61}, {15, 14}, {-15, 14}, {-15, 33}}, color = {95, 95, 95}));
  connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {121.937, 58.229}, points = {{-1.836, -49.657}, {2.855, -49.657}, {2.855, 26.771}, {-1.937, 26.771}, {-1.937, 45.771}}));
  connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
  connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.347, -71}, points = {{2.347, 61}, {2.347, -14}, {-2.347, -14}, {-2.347, -33}}, color = {95, 95, 95}));
  connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.564, -39.6}, points = {{-16.871, 32.2}, {8.436, 32.2}, {8.436, -64.40000000000001}}));
  connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {95, -71}, points = {{15, 61}, {15, -14}, {-15, -14}, {-15, -33}}, color = {95, 95, 95}));
  connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {121.917, -57.76}, points = {{-1.917, 50.36}, {2.876, 50.36}, {2.876, -27.24}, {-1.917, -27.24}, {-1.917, -46.24}}));
  connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {76.428, 0.238}, points = {{-61.634, 0.238}, {19.031, 0.238}, {19.031, -0.238}, {23.572, -0.238}}));
  annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
end TestFingerMultipleRevolute;
