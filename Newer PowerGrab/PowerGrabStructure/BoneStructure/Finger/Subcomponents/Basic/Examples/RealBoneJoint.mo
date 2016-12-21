within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Examples;
model RealBoneJoint
  extends
    PowerGrabStructure.BoneStructure.Finger.Subcomponents.Basic.Templates.BoneJoint(
      redeclare Joints.Examples.OneDegreeJoint joint, IFingerBone(r=
          r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true,
  r_0(                                                                                                                                                                                 fixed =     false)),
    OFingerExtension(r=r_OFingerBone, r_shape = r_shape_OFingerBone,
  r_0(                                                                                                               start =     {0, 0.08, 0}, fixed =     false),color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1), OFingerAnteriorSurfaceOrientation(r={-
        r_OFingerBone[1]*0.5,-diameterOFingerBone*0.25,0}),anteriorMuscleAttachmentPoint(
    animation=false,
    n={0,0,1},
    useAxisFlange=true,
    cylinderLength=0.001,
    cylinderDiameter=0.001,
    phi(fixed=false, start=1.5)), posteriorMuscleAttachmentPoint(
    animation=false,
    n={0,0,1},
    useAxisFlange=true,
    cylinderLength=0.001,
    cylinderDiameter=0.001,
    phi(start=1.5, fixed=false)), OFingerPosteriorSurfaceOrientation(r={-0.5*
        r_OFingerBone[1],-diameterOFingerBone*0.5,0}), posteriorSurfaceOrientation(r={-
        diameterOFingerBone*0.6,0,0}), anteriorSurfaceOrientation(r={
        diameterOFingerBone*0.6,0,0}), damperAnterior(useHeatPort=
        false, d=200), damperPosterior(d=200,
      phi_rel(fixed=false)),  posteriorMuscleAttachmentPositionValue(k1=0.5, k2=-1), posteriorOffset(k=4.71), anteriorMuscleAttachmentPositionValue(k2=0.5), anteriorOffset(k=1.57), posteriorMuscleAttachmentPointPosition(
      useSupport=false));
  parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
  parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
  parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
  parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
  parameter Modelica.SIunits.Angle phi_0_restrained;
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Boolean torD = true "True if direct torque on joint is desired";
  parameter Boolean stateSelect = true;
  parameter Boolean closedLoop = true;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255},
          fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealBoneJoint;
