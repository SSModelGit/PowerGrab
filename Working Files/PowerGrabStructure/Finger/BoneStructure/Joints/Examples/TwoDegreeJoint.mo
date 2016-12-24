within PowerGrabStructure.Finger.BoneStructure.Joints.Examples;
model TwoDegreeJoint "Joint with two degrees of freedom"
  extends Templates.TwoDegreeJoint(redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
      useAxisFlange=useAxisFlange,
      theta_1=sidetheta_limits[1],
      theta_2=sidetheta_limits[2],
      phi_0_restrained=phi0[1],
      axisRotation={0,1,0}),                  redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute1(
      useAxisFlange=useAxisFlange,
      theta_1=normtheta_limits[1],
      theta_2=normtheta_limits[2],
      phi_0_restrained=phi0[2]));
  parameter Modelica.SIunits.Angle sidetheta_limits[2] = {0,0};
  parameter Modelica.SIunits.Angle normtheta_limits[2] = {0,0};
  parameter Modelica.SIunits.Angle phi0[2]={0,0};
end TwoDegreeJoint;
