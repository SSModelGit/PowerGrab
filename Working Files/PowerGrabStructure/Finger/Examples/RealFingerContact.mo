within PowerGrabStructure.Finger.Examples;
model RealFingerContact
  import PowerGrabStructure;
  extends PowerGrabStructure.Finger.Templates.FingerContact(
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
      maxCDistal=fMuscle_max),
    redeclare PowerGrabStructure.Finger.ContactObject.Examples.PrismDampingOC
      objectConnection3(
      boneLength=fingerLength[1],
      threshold=threshold,
      k=k,
      bufferEffect=bufferEffect,
      dampingCoefficient=dampingCoefficient,
      bufferDamping=bufferDamping,
      mu=mu,
      bufferRange=bufferRange,
      delta=delta,
      v0Mag=v0Mag,
      v2delta=v2delta),
    redeclare PowerGrabStructure.Finger.ContactObject.Examples.PrismDampingOC
      objectConnection(
      boneLength=fingerLength[4],
      threshold=threshold,
      k=k,
      bufferEffect=bufferEffect,
      dampingCoefficient=dampingCoefficient,
      bufferDamping=bufferDamping,
      mu=mu,
      bufferRange=bufferRange,
      delta=delta,
      v0Mag=v0Mag,
      v2delta=v2delta),
    redeclare PowerGrabStructure.Finger.ContactObject.Examples.PrismDampingOC
      objectConnection1(
      boneLength=fingerLength[3],
      threshold=threshold,
      k=k,
      bufferEffect=bufferEffect,
      dampingCoefficient=dampingCoefficient,
      bufferDamping=bufferDamping,
      mu=mu,
      bufferRange=bufferRange,
      delta=delta,
      v0Mag=v0Mag,
      v2delta=v2delta),
    redeclare PowerGrabStructure.Finger.ContactObject.Examples.PrismDampingOC
      objectConnection2(
      boneLength=fingerLength[2],
      threshold=threshold,
      k=k,
      bufferEffect=bufferEffect,
      dampingCoefficient=dampingCoefficient,
      bufferDamping=bufferDamping,
      mu=mu,
      bufferRange=bufferRange,
      delta=delta,
      v0Mag=v0Mag,
      v2delta=v2delta), fixedTranslation2(r = {-fingerLength[4] / 2, diameter * 0.75, 0}, animation = false),
      fixedTranslation1(r = {-fingerLength[3] / 4, diameter * 0.75, 0}, animation = false),
      fixedTranslation(r = {-fingerLength[2] / 4, diameter * 0.75, 0}, animation = false));
  parameter Modelica.SIunits.Angle phiSide0 annotation(Dialog(group = "Initial values"));
  parameter Modelica.SIunits.Length fingerLength[4] "Length of bone from Palm, Proximal, Middle, and Distal";
  parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
  parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
  parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
  parameter Real mu = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Length delta = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Velocity v0Mag = 1 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Velocity v2delta = 0.01 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.TranslationalSpringConstant bufferEffect = 25 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Length bufferRange = 0.1 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.TranslationalDampingConstant bufferDamping = 15 annotation(Dialog(tab = "Friction", group = "Parameters"));
  parameter Modelica.SIunits.Length diameter = 0.02;
  parameter Modelica.SIunits.Force fMuscle_max = 50;
  parameter Modelica.SIunits.Angle initialRotations[3] = {0, 0, 0} "In the order of: far distal phalange, middle phalange, and proximal phalange" annotation(Dialog(group = "Initial values"));
end RealFingerContact;
