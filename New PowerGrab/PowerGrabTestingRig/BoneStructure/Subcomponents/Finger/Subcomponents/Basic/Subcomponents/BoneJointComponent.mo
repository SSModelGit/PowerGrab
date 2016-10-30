within PowerGrabTestingRig.BoneStructure.Subcomponents.Finger.Subcomponents.Basic.Subcomponents;
model BoneJointComponent

  extends PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Examples.RealBoneJoint;
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
  parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
  parameter Modelica.SIunits.Angle phi_0_restrained;
  Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -27.854}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {0, -50}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  parameter Boolean torD = true "True if direct torque on joint is desired";
  Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin={122.06,
            15},                                                                                                                                    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 35}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-0, 30}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor1 annotation(Placement(visible = true, transformation(origin={-77.787,
            -25},                                                                                                                                              extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {-138.112, -33.337}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Boolean stateSelect = true;
  parameter Boolean closedLoop = true;
equation
  connect(relAngleSensor1.phi_rel, y) annotation(Line(visible = true, origin = {-108.782, -36.135}, points={{30.995,
          0.135},{30.995,-2.865},{-16.33,-2.865},{-16.33,2.798},{-29.33,2.798}},                                                                                                                      color = {0, 0, 127}));
  connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 21.667}, points={{6.98,
          13.333},{6.98,-6.667},{-13.96,-6.667}},                                                                                                                  color = {0, 0, 127}));
  connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -23.927}, points = {{22.094, -3.927}, {-6.364, -3.927}, {-6.364, 3.927}, {-9.364000000000001, 3.927}}, color = {0, 0, 127}));
  connect(relAngleSensor1.flange_a, revoluteRestrained.flange_b1) annotation (
      Line(points={{-87.787,-25},{-90,-25},{-90,-2.083},{-12.2552,-2.083}},
        color={0,0,0}));
  connect(relAngleSensor1.flange_b, revoluteRestrained.flange_a1) annotation (
      Line(points={{-67.787,-25},{-70,-25},{-70,-2.083},{-7.5029,-2.083}},
        color={0,0,0}));
  connect(torque.flange, revoluteRestrained.flange_a1) annotation (Line(points=
          {{100,-20},{50,-20},{50,-2.083},{-7.5029,-2.083}}, color={0,0,0}));
  connect(position2.flange, revoluteRestrained.flange_a1) annotation (Line(
        points={{112.06,15},{50,15},{50,-2.083},{-7.5029,-2.083}}, color={0,0,0}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end BoneJointComponent;
