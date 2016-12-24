within PowerGrabStructure.Muscle.Examples;
model FingerMuscleLineArray
  extends PowerGrabStructure.Muscle.Templates.MuscleArray(
    redeclare Subcomponents.Examples.MagnitudeMuscle cDistalMagnitude(f_max=
          maxCDistal),
    redeclare Subcomponents.Examples.MagnitudeMuscle mDistalMagnitude(f_max=
          maxMDistal),
    redeclare Subcomponents.Examples.MagnitudeMuscle fDistalMagnitude(f_max=
          maxFDistal),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle5(muscleColor=
          muscleColorF),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle6(muscleColor=
          muscleColorF),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle7(muscleColor=
          muscleColorF),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle8(muscleColor=
          muscleColorF),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle2(muscleColor=
          muscleColorM),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle3(muscleColor=
          muscleColorM),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle4(muscleColor=
          muscleColorM),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle(muscleColor=
          muscleColorC),
    redeclare Subcomponents.Examples.LineMuscle dirMuscle1(muscleColor=
          muscleColorC));

  parameter Modelica.SIunits.Force maxFDistal;
  parameter Modelica.SIunits.Force maxMDistal;
  parameter Modelica.SIunits.Force maxCDistal;
  parameter Integer muscleColorF[3] = {255, 0, 0};
  parameter Integer muscleColorM[3] = {155, 0, 0};
  parameter Integer muscleColorC[3] = {75, 0, 0};
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Text(visible = true, origin = {85.672, 96.699}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "1"), Text(visible = true, origin = {85.483, 58.976}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "2"), Text(visible = true, origin = {84.663, 30}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "3"), Text(visible = true, origin = {85.73399999999999, -34.066}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "5"), Text(visible = true, origin = {85.544, -67.265}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "6"), Text(visible = true, origin = {85.355, -96.684}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "7"), Text(visible = true, origin = {85.544, -4.899}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "4"), Polygon(visible = true, origin = {-26.359, -65.02200000000001}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-23.641, -11.833}, {-0.729, -24.978}, {23.839, 13.366}, {0.531, 23.445}}), Polygon(visible = true, origin = {-8.209, -22.521}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-17.619, -19.056}, {6.319, -29.766}, {18.209, 24.411}, {-6.91, 24.411}}), Polygon(visible = true, origin = {-2.56, 28.978}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-12.56, -26.458}, {12.56, -26.458}, {12.56, 26.458}, {-12.56, 26.458}}), Polygon(visible = true, origin = {-9.390000000000001, 73.033}, fillColor = {230, 230, 230}, pattern = LinePattern.None,
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, points = {{-6.359, -16.967}, {21.359, -16.967}, {5.61, 16.967}, {-20.61, 16.967}}), Rectangle(visible = true, origin = {4.41, 74.018}, fillColor = {255, 102, 102},
            fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-17.564, -75.982}, fillColor = {128, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-10, -4.018}, fillColor = {255, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end FingerMuscleLineArray;
