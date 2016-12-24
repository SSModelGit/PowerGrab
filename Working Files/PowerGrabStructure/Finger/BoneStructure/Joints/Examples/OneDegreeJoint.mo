within PowerGrabStructure.Finger.BoneStructure.Joints.Examples;
model OneDegreeJoint "Joint with one degree of freedom"
  extends Templates.OneDegreeJoint(redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
        useAxisFlange=useAxisFlange,
      phi_0_restrained=phi_0_restrained,
      theta_1=theta_1,
      theta_2=theta_2));
  parameter Modelica.SIunits.Angle phi_0_restrained;
  parameter Modelica.SIunits.Angle theta_1;
  parameter Modelica.SIunits.Angle theta_2;
end OneDegreeJoint;
