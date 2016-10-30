within PowerGrabStructure;

package Examples "Example Models"
  package Finger
    model RealFingerContact
      import PowerGrabStructure;
      extends PowerGrabStructure.Templates.Finger.FingerContact(fixedTranslation2(r = {-fingerLength[4] / 2, fingerArray.diameterOboneFDistal * 0.75, 0}), fixedTranslation1(r = {-fingerLength[3] / 4, fingerArray.diameterOboneMDistal * 0.75, 0}), fixedTranslation(r = {-fingerLength[2] / 4, fingerArray.diameterOboneCDistal * 0.75, 0}), redeclare PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray anteriorMuscles(maxFDistal = fMuscle_max, maxMDistal = fMuscle_max, maxCDistal = fMuscle_max), redeclare PowerGrabStructure.BoneStructure.Finger.Examples.RealFingerStructure fingerStructure(r_IboneFDistal = {fingerLength[3] / 2, 0, 0}, diameterIboneFDistal = diameter, r_OboneFDistal = {fingerLength[4], 0, 0}, diameterOboneFDistal = diameter, phi_0_boneFDistal = initialRotations[1], r_IboneMDistal = {fingerLength[2] / 2, 0, 0}, diameterIboneMDistal = diameter, r_OboneMDistal = {fingerLength[3] / 2, 0, 0}, diameterOboneMDistal = diameter, phi_0_boneMDistal = initialRotations[2], r_IboneCDistal = {fingerLength[1] / 2, 0, 0}, diameterIboneCDistal = diameter, r_OboneCDistal = {fingerLenth[2] / 2, 0, 0}, diameterOboneCDistal = diameter, phi_0_boneCDistal = initialRotations[3], phi_0_doubleJoint = phiSide0), redeclare PowerGrabStructure.Muscle.Examples.FingerMuscleLineArray posteriorMuscles(maxFDistal = fMuscle_max, maxMDistal = fMuscle_max, maxCDistal = fMuscle_max), redeclare PowerGrabStructure.ContactObject.Examples.PrismDampingOC objectConnection3(boneLength = fingerLength[1], threshold = threshold, k = k, bufferEffect = bufferEffect, dampingCoefficient = dampingCoefficient, bufferDamping = bufferDamping, mu = mu, bufferRange = bufferRange, delta = delta, v0Mag = v0Mag, v2delta = v2delta), redeclare PowerGrabStructure.ContactObject.Examples.PrismDampingOC objectConnection(boneLength = fingerLength[4], threshold = threshold, k = k, bufferEffect = bufferEffect, dampingCoefficient = dampingCoefficient, bufferDamping = bufferDamping, mu = mu, bufferRange = bufferRange, delta = delta, v0Mag = v0Mag, v2delta = v2delta), redeclare PowerGrabStructure.ContactObject.Examples.PrismDampingOC objectConnection1(boneLength = fingerLength[3], threshold = threshold, k = k, bufferEffect = bufferEffect, dampingCoefficient = dampingCoefficient, bufferDamping = bufferDamping, mu = mu, bufferRange = bufferRange, delta = delta, v0Mag = v0Mag, v2delta = v2delta), redeclare PowerGrabStructure.ContactObject.Examples.PrismDampingOC objectConnection2(boneLength = fingerLength[2], threshold = threshold, k = k, bufferEffect = bufferEffect, dampingCoefficient = dampingCoefficient, bufferDamping = bufferDamping, mu = mu, bufferRange = bufferRange, delta = delta, v0Mag = v0Mag, v2delta = v2delta));
      parameter Modelica.SIunits.Angle phiSide0 annotation(Dialog(group = "Initial values"));
      parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
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
  end Finger;

  package Hand
  end Hand;

  package HandWithObject
    model RealHandContactTrial
      extends PowerGrabStructure.Templates.HandWithObject.HandContact(redeclare PowerGrabStructure.Examples.Finger.RealFingerContact middleMostFinger(fDistalClosed = false, mDistalClosed = false, cDistalSideClosed = false, cDistalRegularClosed = false, threshold = threshold, fingerLength = {mFinger * 0.343137255, mFinger * 0.31372549, mFinger * 0.196078431, mFinger * 0.147058824}, mu = mu, delta = delta[1], k = 500, phiSide0 = 0, bufferRange = delta[2], diameter = 0.02, bufferEffect = 25, v2delta = 0.01, v0Mag = 1, bufferDamping = 15), redeclare PowerGrabStructure.Examples.Finger.RealFingerContact opposable(mDistalClosed = false, cDistalRegularClosed = false, fDistalClosed = false, cDistalSideClosed = false, threshold = threshold, fingerLength = {tFinger * 0.137931034, tFinger * 0.344827586, tFinger * 0.275862069, tFinger * 0.24137931}, mu = mu, delta = delta[1], k = 500, phiSide0 = 0, bufferRange = delta[2]), redeclare PowerGrabStructure.Examples.Finger.RealFingerContact middleLeftFinger(fDistalClosed = false, mDistalClosed = false, cDistalRegularClosed = false, cDistalSideClosed = true, fingerLength = {rFinger * 0.319148936, rFinger * 0.319148936, rFinger * 0.212765957, rFinger * 0.14893617}, mu = mu, delta = delta[1], threshold = threshold, k = 500, phiSide0 = 0, bufferRange = delta[2]), redeclare PowerGrabStructure.Examples.Finger.RealFingerContact leftMostFinger(fDistalClosed = false, mDistalClosed = false, cDistalRegularClosed = false, cDistalSideClosed = false, fingerLength = {lFinger * 0.337837838, lFinger * 0.324324324, lFinger * 0.168918919, lFinger * 0.168918919}, mu = mu, delta = delta[1], threshold = threshold, k = 500, bufferRange = delta[2], phiSide0 = 0), redeclare PowerGrabStructure.Examples.Finger.RealFingerContact middleRight(fDistalClosed = false, mDistalClosed = false, cDistalRegularClosed = false, cDistalSideClosed = false, fingerLength = {iFinger * 0.342857143, iFinger * 0.342857143, iFinger * 0.171428571, iFinger * 0.142857143}, mu = mu, delta = delta[1], threshold = threshold, k = 500, bufferRange = delta[2], phiSide0 = 0), second = false, third = false, fourth = false, fifth = false);
      parameter Modelica.SIunits.Length mFinger = 0.204;
      parameter Modelica.SIunits.Length iFinger = 0.175;
      parameter Modelica.SIunits.Length rFinger = 0.188;
      parameter Modelica.SIunits.Length lFinger = 0.148;
      parameter Modelica.SIunits.Length tFinger = 0.145;
      parameter Modelica.SIunits.Length threshold = 0.0375;
      parameter Real mu = 0.01;
      parameter Modelica.SIunits.Length delta[2] = {0.01, 0.015} "In order of: delta of friction, buffer range";
      parameter Modelica.SIunits.Position object_x[3] = {-0.06, 0.06, -0.01};
      annotation(experiment(StopTime = 15.0, Interval = 0.1, Algorithm = "cvodes"), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end RealHandContactTrial;
  end HandWithObject;
end Examples;
