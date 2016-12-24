within PowerGrabStructure.Examples.HandWithObject;
model RealHandContactTrial
  extends PowerGrabStructure.Templates.HandWithObject.HandContact(
    redeclare Finger.RealFingerContact middleMostFinger(
      threshold=threshold,
      fingerLength={mFinger*0.343137255,mFinger*0.31372549,mFinger*0.196078431,
          mFinger*0.147058824},
      mu=mu,
      delta=delta[1],
      k=500,
      phiSide0=0,
      bufferRange=delta[2],
      diameter=0.02,
      bufferEffect=25,
      v2delta=0.01,
      v0Mag=1,
      bufferDamping=15),
    redeclare Finger.RealFingerContact opposable(
      threshold=threshold,
      fingerLength={tFinger*0.137931034,tFinger*0.344827586,tFinger*0.275862069,
          tFinger*0.24137931},
      mu=mu,
      delta=delta[1],
      k=500,
      phiSide0=0,
      bufferRange=delta[2]),
    redeclare Finger.RealFingerContact middleLeftFinger(
      fingerLength={rFinger*0.319148936,rFinger*0.319148936,rFinger*0.212765957,
          rFinger*0.14893617},
      mu=mu,
      delta=delta[1],
      threshold=threshold,
      k=500,
      phiSide0=0,
      bufferRange=delta[2]),
    redeclare Finger.RealFingerContact leftMostFinger(
      fingerLength={lFinger*0.337837838,lFinger*0.324324324,lFinger*0.168918919,
          lFinger*0.168918919},
      mu=mu,
      delta=delta[1],
      threshold=threshold,
      k=500,
      bufferRange=delta[2],
      phiSide0=0),
    redeclare Finger.RealFingerContact middleRight(
      fingerLength={iFinger*0.342857143,iFinger*0.342857143,iFinger*0.171428571,
          iFinger*0.142857143},
      mu=mu,
      delta=delta[1],
      threshold=threshold,
      k=500,
      bufferRange=delta[2],
      phiSide0=0),
    second=false,
    third=false,
    fourth=false,
    fifth=false,
    bodyShape(r_0(
                 fixed =               false)));
  parameter Modelica.SIunits.Length mFinger = 0.204;
  parameter Modelica.SIunits.Length iFinger = 0.175;
  parameter Modelica.SIunits.Length rFinger = 0.188;
  parameter Modelica.SIunits.Length lFinger = 0.148;
  parameter Modelica.SIunits.Length tFinger = 0.145;
  parameter Modelica.SIunits.Length threshold = 0.0375;
  parameter Real mu = 0.01;
  parameter Modelica.SIunits.Length delta[2] = {0.01, 0.015} "In order of: delta of friction, buffer range";
  parameter Modelica.SIunits.Position object_x[3] = {-0.06, 0.06, -0.01};
  annotation(experiment(StopTime = 15.0, Interval = 0.1), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end RealHandContactTrial;