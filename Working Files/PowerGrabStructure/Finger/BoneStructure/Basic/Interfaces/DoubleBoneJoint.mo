within PowerGrabStructure.Finger.BoneStructure.Basic.Interfaces;
partial model DoubleBoneJoint
  extends BoneJoint;
  Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin={-148.467,
            86},                                                                                                                              extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin={-65.892,
            109.603},                                                                                                                                                                                                        extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin={-148.053,
            -82.256},                                                                                                                               extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
end DoubleBoneJoint;
