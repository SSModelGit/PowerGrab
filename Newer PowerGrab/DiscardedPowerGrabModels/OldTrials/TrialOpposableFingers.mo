within DiscardedPowerGrabModels.OldTrials;
model TrialOpposableFingers
  DiscardedPowerGrabModels.OldComponents.ObjectLFConnection objectLFConnection(
      threshold=0.75) annotation (Placement(visible=true, transformation(
        origin={-25,27.15},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.WholeFingerArray wholeFingerArray(
    fDistalClosed=false,
    mDistalClosed=false,
    cDistalSideClosed=false,
    cDistalRegularClosed=false) annotation (Placement(visible=true,
        transformation(
        origin={17.5,70},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.WholeFingerArray wholeFingerArray1(
    mDistalClosed=false,
    cDistalRegularClosed=false,
    fDistalClosed=false,
    cDistalSideClosed=false) annotation (Placement(visible=true, transformation(
        origin={55,12.5},
        extent={{-12.5,-12.5},{12.5,12.5}},
        rotation=0)));
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-132.292, -21.955}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-65, 53.311}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-1.2, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-30, -21.693}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldComponents.ObjectLFConnection objectLFConnection1
    (threshold=0.75) annotation (Placement(visible=true, transformation(
        origin={5,-33.214},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-117.828, 77.258}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-118.181, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DiscardedPowerGrabModels.OldComponents.ObjectLFConnection objectLFConnection2
    (threshold=0.75) annotation (Placement(visible=true, transformation(
        origin={-25,10},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.ObjectLFConnection objectLFConnection3
    (threshold=0.75) annotation (Placement(visible=true, transformation(
        origin={-25,43.039},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.ObjectLFConnection objectLFConnection4
    (threshold=0.75) annotation (Placement(visible=true, transformation(
        origin={5,-15},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  DiscardedPowerGrabModels.OldComponents.ObjectLFConnection objectLFConnection5
    (threshold=0.75) annotation (Placement(visible=true, transformation(
        origin={5,-50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = -90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-36.689, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = 180, n = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-65, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixedRotation2.frame_b, wholeFingerArray1.frame_a) annotation(Line(visible = true, origin = {26.328, -46.228}, points={{-53.017,
          -23.772},{26.5085,-23.772},{26.5085,47.543}}));
  connect(fixedRotation1.frame_b, fixedRotation2.frame_a) annotation(Line(visible = true, origin = {-50.844, -70}, points={{-4.156,
          0},{4.155,0}}));
  connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-88.32899999999999, -45.977}, points={{-33.963,
          24.022},{10.317,24.022},{10.317,-24.023},{13.329,-24.023}}));
  connect(objectLFConnection5.frame_b, wholeFingerArray1.frame_a1) annotation(Line(visible = true, origin = {33.512, -23.3}, points={{
          -20.9632,-26.7},{5.988,-26.7},{5.988,26.7},{8.988,26.7}}));
  connect(objectLFConnection1.frame_b, wholeFingerArray1.frame_a2) annotation(Line(visible = true, origin = {33.512, -10.357}, points={{
          -20.9632,-22.857},{5.988,-22.857},{5.988,22.857},{8.988,22.857}}));
  connect(objectLFConnection4.frame_b, wholeFingerArray1.frame_a3) annotation(Line(visible = true, origin = {33.552, 3.3}, points={{
          -21.0032,-18.3},{5.948,-18.3},{5.948,18.3},{9.1073,18.3}}));
  connect(fixedTranslation.frame_b, objectLFConnection5.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -35.846}, points={{-10.351,
          14.153},{1.649,14.153},{1.649,-14.154},{7.0533,-14.154}}));
  connect(fixedTranslation.frame_b, objectLFConnection4.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -18.346}, points={{-10.351,
          -3.347},{1.649,-3.347},{1.649,3.346},{7.0533,3.346}}));
  connect(objectLFConnection2.frame_b, wholeFingerArray.frame_a1) annotation(Line(visible = true, origin = {-2.113, 35.45}, points={{
          -15.3382,-25.45},{4.113,-25.45},{4.113,25.45},{7.113,25.45}}));
  connect(objectLFConnection.frame_b, wholeFingerArray.frame_a2) annotation(Line(visible = true, origin = {-2.113, 48.575}, points={{
          -15.3382,-21.425},{4.113,-21.425},{4.113,21.425},{7.113,21.425}}));
  connect(objectLFConnection3.frame_b, wholeFingerArray.frame_a3) annotation(Line(visible = true, origin = {-2.073, 61.069}, points={{
          -15.3782,-18.03},{4.073,-18.03},{4.073,18.031},{7.2323,18.031}}));
  connect(fixedTranslation.frame_b, objectLFConnection2.frame_a) annotation(Line(visible = true, origin = {-27.062, -6.795}, points={{7.062,
          -14.898},{10.174,-14.898},{10.174,-1.898},{-10.938,-1.898},{-10.938,
          16.795},{-5.5337,16.795}}));
  connect(fixedTranslation.frame_b, objectLFConnection3.frame_a) annotation(Line(visible = true, origin = {-27.062, 4.218}, points={{7.062,
          -25.911},{10.174,-25.911},{10.174,-12.911},{-10.938,-12.911},{
          -10.938,38.821},{-5.5337,38.821}}));
  connect(one.y, wholeFingerArray1.anteriorInput[3]) annotation(Line(visible = true, origin = {6.336, 46.978}, points={{
          -113.164,30.28},{33.164,30.28},{33.164,-29.7804},{46.8338,-29.7804}},                                                                                                                   color = {0, 0, 127}));
  connect(one.y, wholeFingerArray.anteriorInput[3]) annotation(Line(visible = true, origin = {-21.789, 75.72799999999999}, points={{-85.039,
          1.53},{23.789,1.53},{23.789,-1.0304},{37.4588,-1.0304}},                                                                                                                                       color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.posteriorInput[4]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
          -113.452,18.89},{33.229,18.89},{33.229,-17.3894},{46.9916,-17.3894}},                                                                                                                    color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.posteriorInput[3]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
          -113.452,18.89},{33.229,18.89},{33.229,-18.3894},{46.9916,-18.3894}},                                                                                                                    color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.posteriorInput[2]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
          -113.452,18.89},{33.229,18.89},{33.229,-19.3894},{46.9916,-19.3894}},                                                                                                                    color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.posteriorInput[1]) annotation(Line(visible = true, origin = {6.271, 26.11}, points={{
          -113.452,18.89},{33.229,18.89},{33.229,-20.3894},{46.9916,-20.3894}},                                                                                                                    color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.anteriorInput[4]) annotation(Line(visible = true, origin = {6.247, 30.849}, points={{
          -113.428,14.151},{33.253,14.151},{33.253,-12.6514},{46.9228,
          -12.6514}},                                                                                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.anteriorInput[2]) annotation(Line(visible = true, origin = {6.247, 30.849}, points={{
          -113.428,14.151},{33.253,14.151},{33.253,-14.6514},{46.9228,
          -14.6514}},                                                                                                                                                                                  color = {0, 0, 127}));
  connect(zero.y, wholeFingerArray1.anteriorInput[1]) annotation(Line(visible = true, origin = {6.247, 30.849}, points={{
          -113.428,14.151},{33.253,14.151},{33.253,-15.6514},{46.9228,
          -15.6514}},                                                                                                                                                                                  color = {0, 0, 127}));
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
  connect(fixedTranslation.frame_b, objectLFConnection.frame_a) annotation(Line(visible = true, origin = {-27.062, -1.079}, points={{7.062,
          -20.614},{10.174,-20.614},{10.174,-7.614},{-10.938,-7.614},{-10.938,
          28.229},{-5.5337,28.229}}));
  connect(fixedTranslation.frame_b, objectLFConnection1.frame_a) annotation(Line(visible = true, origin = {-9.648999999999999, -27.453}, points={{-10.351,
          5.76},{1.649,5.76},{1.649,-5.761},{7.0533,-5.761}}));
  connect(fixedTranslation.frame_a, world.frame_b) annotation(Line(visible = true, origin = {-100.156, -21.824}, points={{60.156,
          0.131},{-19.01,0.131},{-19.01,-0.131},{-22.136,-0.131}}));
  connect(fixedRotation.frame_b, wholeFingerArray.frame_a) annotation(Line(visible = true, origin = {-8.109, 55.146}, points={{-46.891,
          -1.835},{23.4455,-1.835},{23.4455,3.669}}));
  connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-88.32899999999999, 15.678}, points={{-33.963,
          -37.633},{10.317,-37.633},{10.317,37.633},{13.329,37.633}}));
  annotation(experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TrialOpposableFingers;
