within PowerGrabStructure.Templates;
package HandWithObject
  replaceable partial model HandContact

  replaceable PowerGrabStructure.Finger.Templates.FingerContact
    middleMostFinger annotation (Placement(visible=true, transformation(
        origin={-46.326,57.203},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  replaceable PowerGrabStructure.Finger.Templates.FingerContact opposable if
    second annotation (Placement(visible=true, transformation(
        origin={-21.326,-77.797},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-162.128, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-122.117, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = object_x) annotation(Placement(visible = true, transformation(origin = {-130, -46.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-162.714, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = 180, n = {1, 0, 0}) if second annotation(Placement(visible = true, transformation(origin = {-97.996, -98.20699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = 90, n = {0, 0, 1}, r = {-0.11, 0.04, 0.01}) if second annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, -70.297}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-0.01, 0, -0.03}) if third annotation(Placement(visible = true, transformation(origin = {35.347, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation3(n = {0, 0, 1}, angle = 90) if third annotation(Placement(visible = true, transformation(origin = {62.532, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-0.03, 0, -0.05}) if fourth annotation(Placement(visible = true, transformation(origin = {35.347, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation4(n = {0, 0, 1}, angle = 90) if fourth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation5(n = {1, 0, 0}, angle = -20) if fifth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  replaceable PowerGrabStructure.Finger.Templates.FingerContact
    middleLeftFinger if third annotation (Placement(visible=true,
        transformation(
        origin={105,27.5},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  replaceable PowerGrabStructure.Finger.Templates.FingerContact leftMostFinger if
       fourth annotation (Placement(visible=true, transformation(
        origin={97.998,-14.643},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  replaceable PowerGrabStructure.Finger.Templates.FingerContact middleRightFinger if
    fifth annotation (Placement(visible=true, transformation(
        origin={97.998,-56.5},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
    Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 100, d = 10000, s_unstretched = 0) annotation(Placement(visible = true, transformation(origin = {-100, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0.01, 0, 0}, r_CM = {0, 0, 0}, m = 0.01, r_0(fixed = true, start = object_x)) annotation(Placement(visible = true, transformation(origin = {-60, -46.755}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation6(n = {1, 0, 0}, angle = 0) annotation(Placement(visible = true, transformation(origin = {-85, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation7(angle = 45, n = {1, 0, 0}) if fourth annotation(Placement(visible = true, transformation(origin = {67.408, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Ramp DistalPhalangeActuation(
      duration=2,
      startTime=5,
      height=0.2) annotation (Placement(visible=true, transformation(
          origin={-208.139,72.672},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Sources.Ramp MiddlePhalangeActuation(
      duration=2,
      startTime=3,
      height=0.6) annotation (Placement(visible=true, transformation(
          origin={-207.786,40},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Sources.Ramp ProximalPhalangeActuation(duration=0.01)
      annotation (Placement(visible=true, transformation(
          origin={-210,5},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation8(angle = 0, n = {0, 1, 0}) if second annotation(Placement(visible = true, transformation(origin = {-65, -95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation9(angle = 30, n = {1, 0, 0}) if third annotation(Placement(visible = true, transformation(origin = {128.282, 87.054}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation10(angle = 90, n = {0, 0, 1}, r = {0, 0, 0.022}) if fifth annotation(Placement(visible = true, transformation(origin = {35, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Modelica.SIunits.Position object_x[3];
    parameter Boolean second = true;
    parameter Boolean third = true;
    parameter Boolean fourth = true;
    parameter Boolean fifth = true;
    annotation(experiment(StopTime = 15.0, Interval = 0.1, Algorithm = "cvodes"), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end HandContact;
end HandWithObject;
