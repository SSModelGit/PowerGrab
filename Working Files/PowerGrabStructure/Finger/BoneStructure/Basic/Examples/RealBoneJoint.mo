within PowerGrabStructure.Finger.BoneStructure.Basic.Examples;
model RealBoneJoint
  extends PowerGrabStructure.Finger.BoneStructure.Basic.Templates.BoneJoint(
    redeclare Joints.Examples.OneDegreeJoint joint(
      phi_0_restrained=phi_0_restrained,
      theta_1=-0.087266462599716,
      theta_2=1.5882496193148),
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
      r_0(start={0,0.08,0}, fixed=false),
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
    revolute2(
      animation=false,
      n={0,0,1},
      phi(start=1.5, fixed=false),
      useAxisFlange=true,
      cylinderLength=0.001,
      cylinderDiameter=0.001),
    fixedTranslation3(r={-0.5*r_OFingerBone[1],-diameterOFingerBone*0.5,0}),
    fixedTranslation4(r={-diameterOFingerBone*0.6,0,0}),
    fixedTranslation5(r={diameterOFingerBone*0.6,0,0}));
  parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
  parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
  parameter Modelica.SIunits.Angle phi_0_restrained;
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealBoneJoint;
