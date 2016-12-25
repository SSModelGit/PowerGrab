within PowerGrabStructure.Finger.Templates;
partial model FingerNoContact
  extends Interfaces.FingerNoContact;
  replaceable PowerGrabStructure.Finger.Muscle.Templates.MuscleArray
    anteriorMuscles
    annotation (Placement(transformation(extent={{-200,-46},{-98,56}})));
  replaceable PowerGrabStructure.Finger.Muscle.Templates.MuscleArray
    posteriorMuscles
    annotation (Placement(transformation(extent={{166,-48},{64,54}})));
  replaceable PowerGrabStructure.Finger.BoneStructure.Templates.FingerStructure
    fingerStructure
    annotation (Placement(transformation(extent={{-74,-48},{38,54}})));
equation
  connect(anteriorInput[1], anteriorMuscles.perFDistal) annotation(Line(points={{-265,
          -14.052},{-233.5,-14.052},{-233.5,42.6967},{-198.798,42.6967}},                                                                                      color = {0, 0, 127}));
  connect(anteriorInput[2], anteriorMuscles.perMDistal) annotation(Line(points = {{-265, -4.052}, {-233.5, -4.052}, {-233.5, 2.57138}, {-200, 2.57138}}, color = {0, 0, 127}));
  connect(anteriorInput[3], anteriorMuscles.perCDistal) annotation(Line(points={{-265,
          5.948},{-234.5,5.948},{-234.5,-34.3577},{-200,-34.3577}},                                                                                      color = {0, 0, 127}));
  connect(posteriorInput[2], posteriorMuscles.perMDistal) annotation(Line(points = {{260, -5.134}, {206, -5.134}, {206, 0.57138}, {166, 0.57138}}, color = {0, 0, 127}));
  connect(posteriorInput[1], posteriorMuscles.perFDistal) annotation(Line(points={{260,
          -15.134},{203,-15.134},{203,40.6967},{164.798,40.6967}},                                                                                       color = {0, 0, 127}));
  connect(posteriorInput[3], posteriorMuscles.perCDistal) annotation(Line(points={{260,
          4.866},{205,4.866},{205,-36.3577},{166,-36.3577}},                                                                                       color = {0, 0, 127}));
  connect(anteriorMuscles.frame_1, fingerStructure.frame_1A) annotation(Line(points={{-98,
          54.47},{-92,54.47},{-92,64.0516},{-85.037,64.0516}},                                                                                           color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorMuscles.frame_2, fingerStructure.frame_2A) annotation(Line(points={{-98,
          37.13},{-93,37.13},{-93,43.8},{-85.2,43.8}},                                                                                    color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorMuscles.frame_3, fingerStructure.frame_3A) annotation(Line(points={{-98,
          20.3},{-92,20.3},{-92,23.2796},{-85.0678,23.2796}},                                                                                          color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorMuscles.frame_4, fingerStructure.frame_4A) annotation(Line(points={{-98,
          3.53375},{-92,3.53375},{-92,2.99694},{-85.2034,2.99694}},                                                                                          color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorMuscles.frame_5, fingerStructure.frame_5A) annotation(Line(points={{-98,
          -12.8954},{-92,-12.8954},{-92,-17.3878},{-85.1866,-17.3878}},                                                                                          color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorMuscles.frame_6, fingerStructure.frame_6A) annotation(Line(points={{-98,
          -29.4275},{-91,-29.4275},{-91,-37.6597},{-85.046,-37.6597}},                                                                                           color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorMuscles.frame_7, fingerStructure.frame_7A) annotation(Line(points={{-98,-46},
          {-98,-53},{-84.962,-53},{-84.962,-57.9833}},                                                                                                 color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_1, fingerStructure.frame_1P) annotation(Line(points={{64,
          52.47},{57,52.47},{57,64.3046},{49.3148,64.3046}},                                                                                          color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_2, fingerStructure.frame_2P) annotation(Line(points={{64,
          35.13},{56,35.13},{56,43.8},{49.3249,43.8}},                                                                                      color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_3, fingerStructure.frame_3P) annotation(Line(points={{64,18.3},
          {56,18.3},{56,23.3077},{49.0986,23.3077}},                                                                                                color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_4, fingerStructure.frame_4P) annotation(Line(points={{64,
          1.53375},{58,1.53375},{58,2.69451},{48.8646,2.69451}},                                                                                          color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_5, fingerStructure.frame_5P) annotation(Line(points={{64,
          -14.8954},{56,-14.8954},{56,-17.4668},{49.1266,-17.4668}},                                                                                          color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_6, fingerStructure.frame_6P) annotation(Line(points={{64,
          -31.4275},{56,-31.4275},{56,-37.9887},{49.2,-37.9887}},                                                                                        color = {95, 95, 95}, thickness = 0.5));
  connect(posteriorMuscles.frame_7, fingerStructure.frame_7P) annotation(Line(points={{64,-48},
          {58,-48},{58,-58.2},{48.9659,-58.2}},                                                                                           color = {95, 95, 95}, thickness = 0.5));
  connect(frame_a, fingerStructure.frame_a) annotation(Line(points={{-139,-92},{
          -30,-92},{-30,-53.1},{-29.2,-53.1}},                                                                                     color = {95, 95, 95}, thickness = 0.5));
  connect(anteriorInput[4], fingerStructure.sideAnterior) annotation(Line(points={{-265,
          15.948},{-264,15.948},{-264,56},{-32,56},{-32,28.5},{-31.6942,28.5}},                                                                                              color = {0, 0, 127}));
  connect(posteriorInput[4], fingerStructure.sidePosterior) annotation(Line(points={{260,
          14.866},{260,14},{262,14},{262,-66},{0,-66},{0,-21.4667},{-31.557,
          -21.4667}},                                                                                                                                                                             color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = false, initialScale = 0.1, grid = {25, 25}), graphics={  Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));

end FingerNoContact;
