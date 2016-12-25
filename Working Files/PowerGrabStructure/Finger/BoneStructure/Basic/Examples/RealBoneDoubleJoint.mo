within PowerGrabStructure.Finger.BoneStructure.Basic.Examples;
model RealBoneDoubleJoint
  import PowerGrabStructure;
  extends
    PowerGrabStructure.Finger.BoneStructure.Basic.Templates.DoubleBoneJoint(
    redeclare
      PowerGrabStructure.Finger.Muscle.Subcomponents.Examples.MagnitudeMuscle
      magnitudeMuscle1(f_max=25),
    redeclare
      PowerGrabStructure.Finger.Muscle.Subcomponents.Examples.LineMuscle
      dirMuscle,
    redeclare
      PowerGrabStructure.Finger.Muscle.Subcomponents.Examples.LineMuscle
      dirMuscle1,
    redeclare
      PowerGrabStructure.Finger.Muscle.Subcomponents.Examples.MagnitudeMuscle
      magnitudeMuscle(f_max=25),
    redeclare
      PowerGrabStructure.Finger.Muscle.Subcomponents.Examples.LineMuscle
      dirMuscle2,
    redeclare
      PowerGrabStructure.Finger.Muscle.Subcomponents.Examples.LineMuscle
      dirMuscle3,
    redeclare
      PowerGrabStructure.Finger.BoneStructure.Joints.Examples.TwoDegreeJoint
      twoDegreeJoint(
      sidetheta_limits={-0.78539816339745,0.78539816339745},
      normtheta_limits={-0.087266462599716,1.5882496193148},
      phi0={phi_0_doubleJoint,phi_0_regularJoint}),
    IFingerBone(
      r=r_IFingerBone,
      r_shape=r_shape_IFingerBone,
      color={155,0,0},
      diameter=diameterIFingerBone,
      animation=true,
      r_0(fixed=false),
      density=1750),
    OFingerExtension(
      r=r_OFingerBone,
      r_shape=r_shape_OFingerBone,
      r_0(fixed=false),
      color={255,255,0},
      diameter=diameterOFingerBone,
      animation=true,
      specularCoefficient=1,
      density=1750),
    fixedTranslation1(r={-r_OFingerBone[1]*0.5,-diameterOFingerBone*0.25,0}),
    revolute1(
      animation=false,
      n={0,0,1},
      useAxisFlange=true,
      phi(fixed=false, start=1.5),
      cylinderLength=0.001,
      cylinderDiameter=0.001),
    fixedTranslation3(r={-0.5*r_OFingerBone[1],diameterOFingerBone*0.5,0}),
    fixedTranslation5(r={diameterOFingerBone*0.6,0,0}),
    fixedTranslation(r={-r_IFingerBone[1]*0.5,0,diameterOFingerBone*0.1}),
    fixedTranslation2(r={-r_IFingerBone[1]*0.5,0,diameterOFingerBone*0.5}),
    fixedTranslation6(r={-r_OFingerBone[1]*0.5,0,-diameterOFingerBone*0.5}),
    fixedTranslation7(r={-r_OFingerBone[1]*0.5,0,diameterOFingerBone*0.5}),
    fixedTranslation8(r={diameterOFingerBone*0.6,0,0}),
    revolute3(
      animation=false,
      n={0,1,0},
      phi(fixed=false, start=1.5),
      useAxisFlange=true,
      cylinderLength=0.001,
      cylinderDiameter=0.001),
    fixedTranslation9(r={-diameterOFingerBone*0.6,0,0}),
    fixedTranslation10(r={-diameterOFingerBone*0.6,0,0}));

  parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
  parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
  parameter Modelica.SIunits.Angle phi_0_regularJoint = 0;
  parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
  parameter Boolean closedDoubleJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
  parameter Boolean closedRegularJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
  parameter Boolean torD = true "True if direct torque on joint is desired" annotation(Dialog(tab = "Advanced", group = "Parameters"));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(c=5, d=15)
    annotation (Placement(transformation(extent={{-75,35},{-55,55}})));
equation
  connect(springDamper.flange_b, twoDegreeJoint.flange_a1) annotation (Line(
        points={{-55,45},{-30,45},{-30,20},{1.6971,20}}, color={0,0,0}));
  connect(springDamper.flange_a, twoDegreeJoint.flange_b1) annotation (Line(
        points={{-75,45},{-40,45},{-40,20},{-1.4552,20}}, color={0,0,0}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-105, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-50, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide"), Text(visible = true, origin = {-5.816, 146.068}, extent = {{-34.184, -6.068}, {34.184, 6.068}}, textString = "doubleJointControl"), Line(visible = true, origin = {-7.817, 134.041}, points = {{0, -5.959}, {0, 5.959}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealBoneDoubleJoint;
