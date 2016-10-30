within DiscardedPowerGrabModels.OldComponents;
model YappariMadaTsukutteimasu
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-135, -75}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-98.062, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 102.441}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {140, -75}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {0, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance anteriorMuscleLowerExtension annotation(Placement(visible = true, transformation(origin = {-81.956, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance anteriorMuscleUpperExtension annotation(Placement(visible = true, transformation(origin = {85, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance posteriorMuscleLowerExtension annotation(Placement(visible = true, transformation(origin = {-85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.Distance posteriorMuscleUpperExtension annotation(Placement(visible = true, transformation(origin = {85, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput forceCValue "Value of constant force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-85.251, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LowerAnteriorMuscle annotation(Placement(visible = true, transformation(origin = {-82.46899999999999, 22.761}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass UpperAnteriorMuscle annotation(Placement(visible = true, transformation(origin = {86.783, 23.283}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LowerPosteriorMuscle annotation(Placement(visible = true, transformation(origin = {-85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass UpperPosteriorMuscle annotation(Placement(visible = true, transformation(origin = {85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force anteriorMuscleLowerForce annotation(Placement(visible = true, transformation(origin = {-55, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force anteriorMuscleUpperForce annotation(Placement(visible = true, transformation(origin = {65, 7.408}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force posteriorMuscleLowerForce annotation(Placement(visible = true, transformation(origin = {-55, -45}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force posteriorMuscleUpperForce annotation(Placement(visible = true, transformation(origin = {61.764, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.SIunits.Position x_a;
  Modelica.SIunits.Position x_p;
  Modelica.SIunits.Length x_0_a;
  Modelica.SIunits.Length x_0_p;
  Real xPercent_a;
  Real xPercent_p;
  parameter Modelica.SIunits.TranslationalSpringConstant k_0_a;
  parameter Modelica.SIunits.TranslationalSpringConstant k_0_p;
  parameter Modelica.SIunits.Length x_min_a "Minimum value for anterior muscle unstretched length";
  parameter Modelica.SIunits.Length x_max_a "Maximum value for anterior muscle unstretched length";
  parameter Modelica.SIunits.Length x_min_p "Minimum value for posterior muscle unstretched length";
  parameter Modelica.SIunits.Length x_max_p "Maximum value for posterior muscle unstretched length";
  Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Damper damper1(animation = false, d = 100) annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(damper1.frame_b, frame_b1) annotation(Line(visible = true, origin = {98, -62.5}, points = {{-88, 12.5}, {23, 12.5}, {23, -12.5}, {42, -12.5}}));
  connect(damper1.frame_a, frame_a1) annotation(Line(visible = true, origin = {-94.25, -62.5}, points = {{84.25, 12.5}, {-21.75, 12.5}, {-21.75, -12.5}, {-40.75, -12.5}}));
  connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
  connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.419}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
  connect(posteriorMuscleUpperForce.flange, UpperPosteriorMuscle.flange_b) annotation(Line(visible = true, origin = {83.667, -46.667}, points = {{-11.903, 1.667}, {6.333, 1.667}, {7.333, -3.333}}, color = {0, 127, 0}));
  connect(posteriorMuscleLowerForce.flange, LowerPosteriorMuscle.flange_b) annotation(Line(visible = true, origin = {-74.333, -46.667}, points = {{9.333, 1.667}, {-4.667, 1.667}, {-4.667, -3.333}}, color = {0, 127, 0}));
  connect(anteriorMuscleUpperForce.flange, UpperAnteriorMuscle.flange_b) annotation(Line(visible = true, origin = {86.73699999999999, 9.367000000000001}, points = {{-11.737, -1.958}, {5.691, -1.958}, {6.046, 3.917}}, color = {0, 127, 0}));
  connect(anteriorMuscleLowerForce.flange, LowerAnteriorMuscle.flange_b) annotation(Line(visible = true, origin = {-72.646, 10.92}, points = {{7.646, -0.92}, {-3.823, -0.92}, {-3.823, 1.841}}, color = {0, 127, 0}));
  connect(UpperPosteriorMuscle.frame_b, frame_b1) annotation(Line(visible = true, origin = {119.25, -67.5}, points = {{-24.25, 7.5}, {1.75, 7.5}, {1.75, -7.5}, {20.75, -7.5}}));
  connect(UpperPosteriorMuscle.frame_a, frame_resolve1) annotation(Line(visible = true, origin = {28.25, -74.5}, points = {{46.75, 14.5}, {-9.25, 14.5}, {-9.25, -14.5}, {-28.25, -14.5}}));
  connect(LowerPosteriorMuscle.frame_a, frame_a1) annotation(Line(visible = true, origin = {-115.5, -67.5}, points = {{20.5, 7.5}, {-0.5, 7.5}, {-0.5, -7.5}, {-19.5, -7.5}}));
  connect(LowerPosteriorMuscle.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-28.25, -74.5}, points = {{-46.75, 14.5}, {9.25, 14.5}, {9.25, -14.5}, {28.25, -14.5}}));
  connect(UpperAnteriorMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {121.175, 40.036}, points = {{-24.392, -16.753}, {1.797, -16.753}, {1.797, 16.753}, {20.797, 16.753}}));
  connect(UpperAnteriorMuscle.frame_a, frame_resolve) annotation(Line(visible = true, origin = {28.696, 56.142}, points = {{48.087, -32.858}, {-9.696, -32.858}, {-9.696, 32.858}, {-28.696, 32.858}}));
  connect(LowerAnteriorMuscle.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-27.617, 55.88}, points = {{-44.852, -33.12}, {8.617000000000001, -33.12}, {8.617000000000001, 33.12}, {27.617, 33.12}}));
  connect(frame_a, LowerAnteriorMuscle.frame_a) annotation(Line(visible = true, origin = {-106.108, 40.098}, points = {{-28.892, 17.336}, {7.626, 17.336}, {7.626, -17.336}, {13.639, -17.337}}));
  connect(posteriorMuscleUpperExtension.frame_b, frame_b1) annotation(Line(visible = true, origin = {119.25, -77.5}, points = {{-24.25, -2.5}, {1.75, -2.5}, {1.75, 2.5}, {20.75, 2.5}}));
  connect(posteriorMuscleUpperExtension.frame_a, frame_resolve1) annotation(Line(visible = true, origin = {28.25, -84.5}, points = {{46.75, 4.5}, {-9.25, 4.5}, {-9.25, -4.5}, {-28.25, -4.5}}));
  connect(posteriorMuscleLowerExtension.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-28.25, -84.5}, points = {{-46.75, 4.5}, {9.25, 4.5}, {9.25, -4.5}, {28.25, -4.5}}));
  connect(frame_a1, posteriorMuscleLowerExtension.frame_a) annotation(Line(visible = true, origin = {-106.662, -77.5}, points = {{-28.338, 2.5}, {8.337, 2.5}, {8.337, -2.5}, {11.662, -2.5}}));
  connect(anteriorMuscleUpperExtension.frame_b, frame_b) annotation(Line(visible = true, origin = {120.729, 55.894}, points = {{-25.729, -0.894}, {2.243, -0.894}, {2.243, 0.895}, {21.243, 0.895}}));
  connect(anteriorMuscleUpperExtension.frame_a, frame_resolve) annotation(Line(visible = true, origin = {28.25, 72}, points = {{46.75, -17}, {-9.25, -17}, {-9.25, 17}, {-28.25, 17}}));
  connect(anteriorMuscleLowerExtension.frame_b, frame_resolve) annotation(Line(visible = true, origin = {-27.489, 72}, points = {{-44.467, -17}, {8.489000000000001, -17}, {8.489000000000001, 17}, {27.489, 17}}));
  connect(frame_a, anteriorMuscleLowerExtension.frame_a) annotation(Line(visible = true, origin = {-104.38, 56.217}, points = {{-30.62, 1.217}, {9.099, 1.217}, {9.099, -1.217}, {12.424, -1.217}}));
  anteriorMuscleLowerForce.f = anteriorMuscleUpperForce.f;
  posteriorMuscleLowerForce.f = posteriorMuscleUpperForce.f;
  x_a = anteriorMuscleLowerExtension.distance + anteriorMuscleUpperExtension.distance;
  x_p = posteriorMuscleLowerExtension.distance + posteriorMuscleUpperExtension.distance;
  x_0_a = x_min_a + xPercent_a * (x_max_a - x_min_a);
  x_0_p = x_min_p + xPercent_p * (x_max_p - x_min_p);
  anteriorMuscleLowerForce.f = -k_0_a * (x_a - x_0_a);
  posteriorMuscleLowerForce.f = -k_0_p * (x_p - x_0_p);
  frame_a.f + frame_a1.f = forceCValue;
  frame_b.f + frame_b1.f = forceCValue;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}}), Text(visible = true, origin = {-83.256, 56.669}, extent = {{-23.256, -6.669}, {23.256, 6.669}}, textString = "kPercent_a"), Text(visible = true, origin = {-83.50700000000001, -17.476}, extent = {{-23.507, -7.476}, {23.507, 7.476}}, textString = "xPercent_a"), Text(visible = true, origin = {103.365, 56.086}, extent = {{-23.365, -6.086}, {23.365, 6.086}}, textString = "kPercent_p"), Text(visible = true, origin = {102.408, -15.991}, extent = {{-25.069, -8.228999999999999}, {25.069, 8.228999999999999}}, textString = "xPercent_p"), Text(visible = true, origin = {-102.083, 124.079}, extent = {{-37.917, -11.638}, {37.917, 11.638}}, textString = "Anterior Lower"), Text(visible = true, origin = {100, 125.665}, extent = {{-35.991, -7.551}, {35.991, 7.551}}, textString = "Anterior Upper"), Text(visible = true, origin = {-94.896, -123.472}, extent = {{-39.431, -10.855}, {39.431, 10.855}}, textString = "Posterior Lower"), Text(visible = true, origin = {97.35299999999999, -123.005}, extent = {{-40.366, -6.995}, {40.366, 6.995}}, textString = "Posterior Upper"), Ellipse(visible = true, origin = {-2.674, 85.142}, fillColor = {128, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}}), Ellipse(visible = true, origin = {0, -86.60299999999999}, fillColor = {128, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-117.326, -30.19}, {117.326, 30.19}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end YappariMadaTsukutteimasu;
