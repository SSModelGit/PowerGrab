within PowerGrabStructure.Finger.Examples;
model RealFingerNoContact
  extends Templates.FingerNoContact(
    redeclare PowerGrabStructure.Finger.Muscle.Examples.FingerMuscleLineArray
      anteriorMuscles(
      maxFDistal=fMuscle_max,
      maxMDistal=fMuscle_max,
      maxCDistal=fMuscle_max),
    redeclare
      PowerGrabStructure.Finger.BoneStructure.Examples.RealFingerStructure
      fingerStructure(
      r_IboneFDistal={fingerLength[3]/2,0,0},
      diameterIboneFDistal=diameter,
      r_OboneFDistal={fingerLength[4],0,0},
      diameterOboneFDistal=diameter,
      phi_0_boneFDistal=initialRotations[1],
      r_IboneMDistal={fingerLength[2]/2,0,0},
      diameterIboneMDistal=diameter,
      r_OboneMDistal={fingerLength[3]/2,0,0},
      diameterOboneMDistal=diameter,
      phi_0_boneMDistal=initialRotations[2],
      r_IboneCDistal={fingerLength[1]/2,0,0},
      diameterIboneCDistal=diameter,
      r_OboneCDistal={fingerLength[2]/2,0,0},
      diameterOboneCDistal=diameter,
      phi_0_boneCDistal=initialRotations[3],
      phi_0_doubleJoint=phiSide0),
    redeclare PowerGrabStructure.Finger.Muscle.Examples.FingerMuscleLineArray
      posteriorMuscles(
      maxFDistal=fMuscle_max,
      maxMDistal=fMuscle_max,
      maxCDistal=fMuscle_max));
  parameter Modelica.SIunits.Angle phiSide0 annotation(Dialog(group = "Initial values"));
  parameter Modelica.SIunits.Length fingerLength[4] "Length of bone from Palm, Proximal, Middle, and Distal";
  parameter Modelica.SIunits.Length diameter = 0.02;
  parameter Modelica.SIunits.Force fMuscle_max = 25;
  parameter Modelica.SIunits.Angle initialRotations[3] = {0, 0, 0} "In the order of: far distal phalange, middle phalange, and proximal phalange" annotation(Dialog(group = "Initial values"));
end RealFingerNoContact;
