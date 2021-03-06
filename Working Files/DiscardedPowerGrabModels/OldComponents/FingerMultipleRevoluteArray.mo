within DiscardedPowerGrabModels.OldComponents;
model FingerMultipleRevoluteArray
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents.BoneJointComponent
    boneMDistal(
    r_IFingerBone=r_IboneMDistal,
    r_shape_IFingerBone=r_shape_IboneMDistal,
    diameterIFingerBone=diameterIboneMDistal,
    diameterOFingerBone=diameterOboneMDistal,
    r_OFingerBone=r_OboneMDistal,
    r_shape_OFingerBone=r_shape_OboneMDistal,
    phi_0_restrained=phi_0_boneMDistal,
    stateSelect=true,
    closedLoop=mDistalClosed,
    torD=dirTorque) annotation (Placement(visible=true, transformation(
        origin={5.256,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents.BoneJointComponent
    boneFDistal(
    r_IFingerBone=r_IboneFDistal,
    r_shape_IFingerBone=r_shape_IboneFDistal,
    diameterIFingerBone=diameterIboneFDistal,
    diameterOFingerBone=diameterOboneFDistal,
    r_OFingerBone=r_OboneFDistal,
    r_shape_OFingerBone=r_shape_OboneFDistal,
    phi_0_restrained=phi_0_boneFDistal,
    closedLoop=fDistalClosed,
    torD=dirTorque) annotation (Placement(visible=true, transformation(
        origin={70,0},
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
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput thetaCDistal if cDistalRegularClosed annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput thetaMDistal if mDistalClosed annotation(Placement(visible = true, transformation(origin = {25.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput thetaFDistal if fDistalClosed annotation(Placement(visible = true, transformation(origin = {99.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
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
  parameter Boolean fDistalClosed = true "If true, the far distal phalange will be in a constrained mode";
  parameter Boolean mDistalClosed = true "If true, the middle distal phalange will be in a constrained mode";
  parameter Boolean cDistalRegularClosed = true "If true, the close distal phalange's regular joint will be in a constrained mode";
  parameter Boolean cDistalSideClosed = true "If true, the close distal phalange's side joint will be in a constrained mode";
  Modelica.Blocks.Interfaces.RealInput loadForce if dirTorque annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
  PowerGrabStructure.BoneStructure.Finger.Subcomponents.Sources.FingerLoad
    fingerLoad(
    r2=r_OboneMDistal[1],
    r3=r_OboneCDistal[1],
    r1=r_OboneFDistal[1]/2) if dirTorque annotation (Placement(visible=true,
        transformation(
        origin={-52.096,71.024},
        extent={{-13.29,-13.29},{13.29,13.29}},
        rotation=0)));
  parameter Boolean dirTorque = true "True if direct torque upon joint is desired";
  Modelica.Blocks.Interfaces.RealInput sideTheta if cDistalSideClosed "secondary revolute joint - sideways swaying" annotation(Placement(visible = true, transformation(origin = {-20, -32.963}, extent = {{-12.963, -12.963}, {12.963, 12.963}}, rotation = 0), iconTransformation(origin = {-27.35, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents.BoneDoubleJointComponent
    boneCDistal(
    phi_0_doubleJoint=phi_0_doubleJoint,
    closedDoubleJoint=cDistalSideClosed,
    closedRegularJoint=cDistalRegularClosed,
    torD=dirTorque,
    r_IFingerBone=r_IboneCDistal,
    r_shape_IFingerBone=r_shape_IboneCDistal,
    diameterIFingerBone=diameterIboneCDistal,
    r_OFingerBone=r_OboneCDistal,
    r_shape_OFingerBone=r_shape_OboneCDistal,
    diameterOFingerBone=diameterOboneCDistal,
    phi_0_regularJoint=phi_0_boneCDistal) annotation (Placement(visible=true,
        transformation(
        origin={-86.959,-2.646},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin = {-123.296, 21.696}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin = {-123.175, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(sideTheta, boneCDistal.doubleJointControl) annotation(Line(visible = true, origin = {-53.457, -5.883}, points={{33.457,
          -27.08},{17.494,-27.08},{17.494,20.462},{-34.2425,20.462},{-34.2425,
          14.237}},                                                                                                                                                                                                     color = {0, 0, 127}));
  connect(sidePosterior, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.437, -1.291}, points={{-25.738,
          -18.709},{-4.288,-18.709},{-4.288,13.87},{17.1572,13.87},{17.1572,
          9.6784}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(sideAnterior, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.197, 17.302}, points={{-26.099,
          4.394},{13.0488,4.394},{13.0488,-8.7877}},                                                                                                                                       color = {0, 0, 127}));
  connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-56.449, -1.323}, points={{51.705,
          1.323},{-15.717,1.323},{-15.717,-1.323},{-20.2708,-1.323}}));
  connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.186, -42.431}, points = {{-24.373, 30.785}, {12.186, 30.785}, {12.186, -61.569}}));
  connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.26, 38.903}, points={{
          -24.5186,-32.549},{12.26,-32.549},{12.26,65.097}}));
  connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-58.959, 34.732}, points={{18.6164,
          33.3524},{23.153,33.3524},{23.153,-20.153},{-32.4609,-20.153},{
          -32.4609,-26.3981}},                                                                                                                                                                                           color = {0, 0, 127}));
  connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-84.545, 20.409}, points = {{20.827, 6.027}, {-10.414, 6.027}, {-10.414, -12.055}}, color = {0, 0, 127}));
  connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-91.992, -59.458}, points = {{-4.967, 47.812}, {-9.507999999999999, 47.812}, {-9.507999999999999, -25.542}, {11.992, -25.542}, {11.992, -44.542}}));
  connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-91.992, 57.342}, points={{-4.967,
          -50.988},{-9.508,-50.988},{-9.508,27.658},{11.992,27.658},{11.992,
          46.658}},                                                                                                                                                                                                        color = {95, 95, 95}));
  connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.477, -22.198}, points = {{-13.471, -19.552}, {2.977, -19.552}, {2.977, 19.552}, {7.518, 19.552}}));
  connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.46, 19.552}, points = {{-13.422, 22.198}, {2.96, 22.198}, {2.96, -22.198}, {7.501, -22.198}}));
  connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-111.971, -1.323}, points = {{-35.955, 1.323}, {10.471, 1.323}, {10.471, -1.323}, {15.012, -1.323}}));
  connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-10.011, 46.846}, points={{
          -30.5344,25.9226},{15.267,25.9226},{15.267,-51.846}},                                                                                                                   color = {0, 0, 127}));
  connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {35.073, 36.21}, points={{
          -75.6979,41.2107},{20.386,41.2107},{20.386,-41.21},{34.927,-41.21}},                                                                                                                            color = {0, 0, 127}));
  connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-51.343, 28.568}, points={{47.099,
          -34.568},{-17.043,-34.568},{-17.043,34.5676},{-13.0134,34.5676}},                                                                                                                     color = {0, 0, 127}));
  connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-35.112, 32.959}, points={{95.612,
          -38.959},{-33.274,-38.959},{-33.274,38.9581},{-29.0658,38.9581}},                                                                                                                                color = {0, 0, 127}));
  connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points={{-25.963,
          -7.71},{7.251,-7.71},{7.251,7.71004},{11.4592,7.71004}},                                                                                                                       color = {0, 0, 127}));
  connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
  connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.628, 71}, points = {{2.628, -61}, {2.628, 14}, {-2.628, 14}, {-2.628, 33}}));
  connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.786, 40.381}, points={{-16.429,
          -31.8096},{8.214,-31.8096},{8.214,63.619}}));
  connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {75, 71}, points = {{-5, -61}, {-5, 14}, {5, 14}, {5, 33}}, color = {95, 95, 95}));
  connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {106.7, 40.381}, points={{-26.599,
          -31.8096},{13.3,-31.8096},{13.3,63.619}}));
  connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
  connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.628, -71}, points = {{2.628, 61}, {2.628, -14}, {-2.628, -14}, {-2.628, -33}}, color = {95, 95, 95}));
  connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.752, -39.6}, points = {{-16.496, 32.2}, {8.247999999999999, 32.2}, {8.247999999999999, -64.40000000000001}}));
  connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {75, -71}, points = {{-5, 61}, {-5, -14}, {5, -14}, {5, -33}}, color = {95, 95, 95}));
  connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {106.667, -39.6}, points = {{-26.667, 32.2}, {13.333, 32.2}, {13.333, -64.40000000000001}}));
  connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {84.79600000000001, 14.736}, points={{14.803,
          11.737},{-0.003,11.737},{-0.003,-11.736},{-14.796,-11.736}},                                                                                                                                        color = {0, 0, 127}));
  connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {15.236, 13.27}, points={{9.979,
          12.784},{9.979,-1.257},{-9.98,-1.257},{-9.98,-10.27}},                                                                                                                                                                             color = {0, 0, 127}));
  connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {46.569, 0.238}, points={{-31.212,
          0.2382},{8.89,0.2382},{8.89,-0.238},{13.431,-0.238}}));
  annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
end FingerMultipleRevoluteArray;
