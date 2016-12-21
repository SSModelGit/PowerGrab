within PowerGrabStructure.Muscle.Templates;
partial model MuscleArray
  extends Interfaces.MuscleArray;
  replaceable Subcomponents.Interfaces.MagnitudeMuscle fDistalMagnitude
    annotation (Placement(transformation(extent={{-112,46},{-92,66}})));
  replaceable Subcomponents.Interfaces.MagnitudeMuscle mDistalMagnitude
    annotation (Placement(transformation(extent={{-116,18},{-96,38}})));
  replaceable Subcomponents.Interfaces.MagnitudeMuscle cDistalMagnitude
    annotation (Placement(transformation(extent={{-114,-36},{-94,-16}})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={24,28})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle1 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={44,-26})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle2 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-16,62})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle3 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-12,28})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle4 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-12,-10})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle5 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-52,84})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle6 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-50,48})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle7 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-50,14})));
  replaceable Subcomponents.Interfaces.DirMuscle dirMuscle8 annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-48,-38})));
equation
  connect(perFDistal, fDistalMagnitude.forcePValue) annotation (Line(points={
          {-140,56.637},{-125,56.637},{-125,55.4315},{-110.681,55.4315}},
        color={0,0,127}));
  connect(perMDistal, mDistalMagnitude.forcePValue) annotation (Line(points={
          {-142.648,27.648},{-129.324,27.648},{-129.324,27.4315},{-114.681,
          27.4315}}, color={0,0,127}));
  connect(perCDistal, cDistalMagnitude.forcePValue) annotation (Line(points={
          {-144.38,-25.62},{-132.19,-25.62},{-132.19,-26.5685},{-112.681,
          -26.5685}}, color={0,0,127}));
  connect(dirMuscle.frame_b, frame_5) annotation (Line(
      points={{24.4,38},{88,38},{88,-14},{149,-14}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle.frame_a, frame_6) annotation (Line(
      points={{24.4,18},{24,18},{24,-39},{149,-39}},
      color={95,95,95},
      thickness=0.5));
  connect(cDistalMagnitude.fMagnitude, dirMuscle.muscleMagnitude) annotation (
     Line(points={{-93.315,-26.5908},{-39.6575,-26.5908},{-39.6575,28},{
          14.4013,28}}, color={0,0,127}));
  connect(cDistalMagnitude.fMagnitude, dirMuscle1.muscleMagnitude)
    annotation (Line(points={{-93.315,-26.5908},{-29.6575,-26.5908},{-29.6575,
          -26},{34.4013,-26}}, color={0,0,127}));
  connect(dirMuscle1.frame_b, frame_6) annotation (Line(
      points={{44.4,-16},{98,-16},{98,-39},{149,-39}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle1.frame_a, frame_7) annotation (Line(
      points={{44.4,-36},{44,-36},{44,-64},{149,-64}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle2.frame_b, frame_3) annotation (Line(
      points={{-15.6,72},{68,72},{68,36},{149,36}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle2.frame_a, frame_4) annotation (Line(
      points={{-15.6,52},{66,52},{66,11},{149,11}},
      color={95,95,95},
      thickness=0.5));
  connect(mDistalMagnitude.fMagnitude, dirMuscle2.muscleMagnitude)
    annotation (Line(points={{-95.315,27.4092},{-35.6575,27.4092},{-35.6575,
          62},{-25.5987,62}}, color={0,0,127}));
  connect(mDistalMagnitude.fMagnitude, dirMuscle3.muscleMagnitude)
    annotation (Line(points={{-95.315,27.4092},{-59.6575,27.4092},{-59.6575,
          28},{-21.5987,28}}, color={0,0,127}));
  connect(dirMuscle3.frame_b, frame_4) annotation (Line(
      points={{-11.6,38},{68,38},{68,11},{149,11}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle3.frame_a, frame_6) annotation (Line(
      points={{-11.6,18},{68,18},{68,-39},{149,-39}},
      color={95,95,95},
      thickness=0.5));
  connect(mDistalMagnitude.fMagnitude, dirMuscle4.muscleMagnitude)
    annotation (Line(points={{-95.315,27.4092},{-58.6575,27.4092},{-58.6575,
          -10},{-21.5987,-10}}, color={0,0,127}));
  connect(dirMuscle4.frame_b, frame_6) annotation (Line(
      points={{-11.6,0},{68,0},{68,-39},{149,-39}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle4.frame_a, frame_7) annotation (Line(
      points={{-11.6,-20},{-12,-20},{-12,-64},{149,-64}},
      color={95,95,95},
      thickness=0.5));
  connect(fDistalMagnitude.fMagnitude, dirMuscle5.muscleMagnitude)
    annotation (Line(points={{-91.315,55.4092},{-91.315,67.7046},{-61.5987,
          67.7046},{-61.5987,84}}, color={0,0,127}));
  connect(dirMuscle5.frame_b, frame_1) annotation (Line(
      points={{-51.6,94},{44,94},{44,86},{149,86}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle5.frame_a, frame_2) annotation (Line(
      points={{-51.6,74},{46,74},{46,61},{149,61}},
      color={95,95,95},
      thickness=0.5));
  connect(fDistalMagnitude.fMagnitude, dirMuscle6.muscleMagnitude)
    annotation (Line(points={{-91.315,55.4092},{-75.6575,55.4092},{-75.6575,
          48},{-59.5987,48}}, color={0,0,127}));
  connect(dirMuscle6.frame_b, frame_2) annotation (Line(
      points={{-49.6,58},{50,58},{50,61},{149,61}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle6.frame_a, frame_4) annotation (Line(
      points={{-49.6,38},{50,38},{50,11},{149,11}},
      color={95,95,95},
      thickness=0.5));
  connect(fDistalMagnitude.fMagnitude, dirMuscle7.muscleMagnitude)
    annotation (Line(points={{-91.315,55.4092},{-91.315,34.7046},{-59.5987,
          34.7046},{-59.5987,14}}, color={0,0,127}));
  connect(dirMuscle7.frame_b, frame_4) annotation (Line(
      points={{-49.6,24},{52,24},{52,11},{149,11}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle7.frame_a, frame_6) annotation (Line(
      points={{-49.6,4},{50,4},{50,-39},{149,-39}},
      color={95,95,95},
      thickness=0.5));
  connect(fDistalMagnitude.fMagnitude, dirMuscle8.muscleMagnitude)
    annotation (Line(points={{-91.315,55.4092},{-91.315,9.7046},{-57.5987,
          9.7046},{-57.5987,-38}}, color={0,0,127}));
  connect(dirMuscle8.frame_b, frame_6) annotation (Line(
      points={{-47.6,-28},{50,-28},{50,-39},{149,-39}},
      color={95,95,95},
      thickness=0.5));
  connect(dirMuscle8.frame_a, frame_7) annotation (Line(
      points={{-47.6,-48},{50,-48},{50,-64},{149,-64}},
      color={95,95,95},
      thickness=0.5));
end MuscleArray;
