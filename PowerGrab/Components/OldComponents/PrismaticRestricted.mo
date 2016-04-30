within PowerGrab.Components.OldComponents;

model PrismaticRestricted
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, s.fixed = false, n = axisOR, s.start = 0, v.start = 0, a.start = 0, v.fixed = false, a.fixed = false) annotation(Placement(visible = true, transformation(origin = {-16.756, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = c_upper, d = d_upper, s_rel0 = 0, n = 1, s_rel.start = 0, v_rel.start = 0) annotation(Placement(visible = true, transformation(origin = {40, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Rod rod(L = l_stop) annotation(Placement(visible = true, transformation(origin = {-60, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.ElastoGap elastoGap1(c = c_bottom, d = d_bottom, s_rel0 = 0, n = 1, s_rel.start = 0, v_rel.start = 0) annotation(Placement(visible = true, transformation(origin = {-60, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-80.80800000000001, 14.286}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {110, 15}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {74.074, 14.286}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  parameter Modelica.SIunits.Distance l_stop;
  parameter Modelica.SIunits.TranslationalSpringConstant c_upper;
  parameter Modelica.SIunits.TranslationalDampingConstant d_upper;
  parameter Modelica.SIunits.TranslationalSpringConstant c_bottom;
  parameter Modelica.SIunits.TranslationalDampingConstant d_bottom;
  Modelica.Mechanics.Translational.Components.SpringDamper springDamper(c = 0, d = 200) annotation(Placement(visible = true, transformation(origin = {-15, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Integer[3] axisOR = {1, 0, 0};
equation
  connect(springDamper.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-23.585, 20.667}, points = {{-1.415, 9.333}, {-1.415, -4.667}, {2.829, -4.667}}, color = {0, 127, 0}));
  connect(springDamper.flange_b, prismatic.axis) annotation(Line(visible = true, origin = {-6.252, 20.667}, points = {{1.252, 9.333}, {1.252, -4.667}, {-2.504, -4.667}}, color = {0, 127, 0}));
  connect(prismatic.frame_b, frame_b) annotation(Line(visible = true, origin = {71.31100000000001, 12.5}, points = {{-78.06699999999999, -2.5}, {19.689, -2.5}, {19.689, 2.5}, {38.689, 2.5}}, color = {95, 95, 95}));
  connect(frame_a, prismatic.frame_a) annotation(Line(visible = true, origin = {-51.574, 12.5}, points = {{-68.426, 2.5}, {21.805, 2.5}, {21.805, -2.5}, {24.817, -2.5}}));
  connect(prismatic.axis, elastoGap1.flange_b) annotation(Line(visible = true, origin = {-16.455, -4.5}, points = {{7.698, 20.5}, {12.923, 20.5}, {12.923, -20.5}, {-33.545, -20.5}}, color = {0, 127, 0}));
  connect(elastoGap1.flange_a, prismatic.support) annotation(Line(visible = true, origin = {-59.302, -4.5}, points = {{-10.698, -20.5}, {-13.923, -20.5}, {-13.923, 20.5}, {38.545, 20.5}}, color = {0, 127, 0}));
  connect(elastoGap.flange_a, prismatic.axis) annotation(Line(visible = true, origin = {36.923, 25.5}, points = {{13.077, 9.5}, {16.302, 9.5}, {16.302, -9.5}, {-45.68, -9.5}}, color = {0, 127, 0}));
  connect(rod.flange_b, elastoGap.flange_b) annotation(Line(visible = true, origin = {-10, 35}, points = {{-40, 0}, {40, 0}}, color = {0, 127, 0}));
  connect(prismatic.support, rod.flange_a) annotation(Line(visible = true, origin = {-59.302, 25.5}, points = {{38.545, -9.5}, {-13.923, -9.5}, {-13.923, 9.5}, {-10.698, 9.5}}, color = {0, 127, 0}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, origin = {-5.188, 12.451}, lineColor = {255, 0, 0}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-63.292, -5.188}, {63.292, 5.188}}), Line(visible = true, origin = {-33.981, 34.079}, points = {{-33.981, -15.921}, {33.981, 15.921}}, color = {255, 0, 0}), Line(visible = true, origin = {28.793, 33.819}, points = {{28.793, -16.181}, {-28.793, 16.181}}, color = {255, 0, 0}), Line(visible = true, origin = {-35, -11.368}, points = {{-35, 18.632}, {35, -18.632}}, color = {255, 0, 0}), Line(visible = true, origin = {29.052, -11.109}, points = {{29.052, 18.891}, {-29.052, -18.891}}, color = {255, 0, 0})}), experiment(StopTime = 100.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PrismaticRestricted;