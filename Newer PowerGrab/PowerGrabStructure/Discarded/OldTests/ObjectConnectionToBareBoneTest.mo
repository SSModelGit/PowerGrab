within PowerGrabStructure.Discarded.OldTests;
model ObjectConnectionToBareBoneTest
  inner Modelica.Mechanics.MultiBody.World world(n = {0, -1, 0}, g = 0, gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity) annotation(Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-100, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.25, 0.5, -0.4}) annotation(Placement(visible = true, transformation(origin = {-78.05200000000001, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0.1, 0}) annotation(Placement(visible = true, transformation(origin = {45, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid4(amplitude = 1, period = 10, width = 5, offset = 0) annotation(Placement(visible = true, transformation(origin = {72.15900000000001, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OldComponents.ObjectLFConnection objectLFConnection(
    threshold=0.25,
    k=5000,
    dampingCoefficient=5000) annotation (Placement(visible=true,
        transformation(
        origin={-42.837,30},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  PowerGrabStructure.BoneStructure.Finger.Basic.Examples.BoneDoubleJointComponent
    boneDoubleJointComponent(closedDoubleJoint=false, closedRegularJoint=
        false) annotation (Placement(visible=true, transformation(
        origin={-20,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid(amplitude = 0, period = 1) annotation(Placement(visible = true, transformation(origin = {-70, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Trapezoid trapezoid1(amplitude = 1, period = 5, startTime = 5, width = 5) annotation(Placement(visible = true, transformation(origin = {-37.056, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  model TestOCLFtoWholeFingerArray
    OldComponents.ObjectLFConnection objectLFConnection(threshold=0.25)
      annotation (Placement(visible=true, transformation(
          origin={-10,27.15},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    OldComponents.WholeFingerArray wholeFingerArray(
      fDistalClosed=false,
      mDistalClosed=false,
      cDistalSideClosed=false,
      cDistalRegularClosed=false) annotation (Placement(visible=true,
          transformation(
          origin={17.5,70},
          extent={{-12.5,-12.5},{12.5,12.5}},
          rotation=0)));
    inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-132.292, -21.955}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-65, 53.311}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.2, 1.2, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -21.693}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-117.828, 77.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-118.181, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OldComponents.ObjectLFConnection objectLFConnection1(threshold=0.25)
      annotation (Placement(visible=true, transformation(
          origin={5,7.491},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    OldComponents.ObjectLFConnection objectLFConnection2(threshold=0.25)
      annotation (Placement(visible=true, transformation(
          origin={5,-20},
          extent={{-10,-10},{10,10}},
          rotation=0)));
  equation
    connect(objectLFConnection2.frame_b, wholeFingerArray.frame_a1) annotation(Line(visible = true, origin = {9.590999999999999, 11.3}, points={{2.9578,
            -31.3},{8.409,-31.3},{8.409,-18.3},{-7.591,-18.3},{-7.591,49.6},{
            -4.591,49.6}}));
    connect(objectLFConnection1.frame_b, wholeFingerArray.frame_a2) annotation(Line(visible = true, origin = {9.590999999999999, 32.661}, points={{2.9578,
            -25.17},{8.409,-25.17},{8.409,-12.17},{-7.591,-12.17},{-7.591,
            37.339},{-4.591,37.339}}));
    connect(fixedTranslation.frame_b, objectLFConnection2.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -20.846}, points={{-10.351,
            -0.847},{1.649,-0.847},{1.649,0.846},{7.0533,0.846}}));
    connect(fixedTranslation.frame_b, objectLFConnection1.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -7.101}, points={{-10.351,
            -14.592},{1.649,-14.592},{1.649,14.592},{7.0533,14.592}}));
    connect(objectLFConnection.frame_b, wholeFingerArray.frame_a3) annotation(Line(visible = true, origin = {2.118, 48.8}, points={{-4.5692,
            -21.65},{0.882,-21.65},{0.882,-8.65},{-0.118,-8.65},{-0.118,30.3},
            {3.0413,30.3}}));
    connect(fixedRotation.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-45.25, 15.809}, points = {{-9.75, 37.502}, {2.25, 37.502}, {2.25, -37.502}, {5.25, -37.502}}));
    connect(one.y, wholeFingerArray.anteriorInput[3]) annotation(Line(visible = true, origin = {-21.789, 75.72799999999999}, points={{-85.039,
            1.53},{23.789,1.53},{23.789,-1.0304},{37.4588,-1.0304}},                                                                                                                                       color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.anteriorInput[4]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
            -14.599},{23.878,-14.599},{23.878,16.0986},{37.5478,16.0986}},                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.anteriorInput[2]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
            -14.599},{23.878,-14.599},{23.878,14.0986},{37.5478,14.0986}},                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.anteriorInput[1]) annotation(Line(visible = true, origin = {-21.878, 59.599}, points={{-85.303,
            -14.599},{23.878,-14.599},{23.878,13.0986},{37.5478,13.0986}},                                                                                                                               color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[4]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,11.3606},{37.6166,11.3606}},                                                                                                                                                                                          color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[3]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,10.3606},{37.6166,10.3606}},                                                                                                                                                                                          color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[2]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,9.3606},{37.6166,9.3606}},                                                                                                                                                                                            color = {0, 0, 127}));
    connect(zero.y, wholeFingerArray.posteriorInput[1]) annotation(Line(visible = true, origin = {-21.854, 54.86}, points={{-85.327,
            -9.86},{23.854,-9.86},{23.854,8.3606},{37.6166,8.3606}},                                                                                                                                                                                            color = {0, 0, 127}));
    connect(fixedTranslation.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-19.562, -1.079}, points={{-0.438,
            -20.614},{2.674,-20.614},{2.674,-7.614},{-3.438,-7.614},{-3.438,
            28.229},{1.9663,28.229}}));
    connect(fixedRotation.frame_b, wholeFingerArray.frame_a) annotation(Line(visible = true, origin = {-8.109, 55.146}, points={{-46.891,
            -1.835},{23.4455,-1.835},{23.4455,3.669}}));
    connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-88.32899999999999, 15.678}, points={{-33.963,
            -37.633},{10.317,-37.633},{10.317,37.633},{13.329,37.633}}));
    annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end TestOCLFtoWholeFingerArray;
equation
  connect(trapezoid1.y, boneDoubleJointComponent.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-20.145, 57.053}, points={{-5.911,
          22.947},{2.9558,22.947},{2.9558,-45.8927}},                                                                                                                                                   color = {0, 0, 127}));
  connect(trapezoid.y, boneDoubleJointComponent.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-28.547, 43.678}, points={{-30.453,
          16.322},{15.2262,16.322},{15.2262,-32.6446}},                                                                                                                                                    color = {0, 0, 127}));
  connect(trapezoid4.y, boneDoubleJointComponent.LoadTorque) annotation(Line(visible = true, origin = {41.311, 7.086}, points={{41.848,
          -12.086},{44.848,-12.086},{44.848,10.139},{-65.7719,10.139},{
          -65.7719,3.8939}},                                                                                                                                                                                                        color = {0, 0, 127}));
  connect(boneDoubleJointComponent.frame_b2, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {12.62, 0}, points={{
          -22.3808,0},{22.38,0}}));
  connect(fixedRotation.frame_b, boneDoubleJointComponent.frame_a) annotation(Line(visible = true, origin = {-60, 0}, points = {{-30, 0}, {30, 0}}));
  connect(objectLFConnection.frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {33.984, 15}, points={{
          -69.2722,15},{24.128,15},{24.128,-15},{21.016,-15}}));
  connect(fixedTranslation.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-59.243, 30}, points={{-8.809,
          0},{8.8103,0}}));
  connect(fixedTranslation.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-87.48399999999999, 15.667}, points = {{-0.5679999999999999, 14.333}, {-3.568, 14.333}, {-3.568, 1.333}, {5.109, 1.333}, {5.109, -15.667}, {-2.516, -15.667}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-115, -0}, points = {{-5, 0}, {5, -0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ObjectConnectionToBareBoneTest;
