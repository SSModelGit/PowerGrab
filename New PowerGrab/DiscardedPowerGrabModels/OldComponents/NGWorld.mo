within DiscardedPowerGrabModels.OldComponents;
model NGWorld "World component with the parameter for gravityType preset to NoGravity"
  import Modelica.Mechanics.MultiBody.Types.GravityTypes;
  import Modelica.Mechanics.MultiBody.Types;
  import Modelica.SIunits;
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed in the origin of the world frame" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
  parameter Boolean enableAnimation = true "= true, if animation of all components is enabled";
  parameter Boolean animateWorld = true "= true, if world coordinate system shall be visualized" annotation(Dialog(enable = enableAnimation));
  parameter Boolean animateGravity = true "= true, if gravity field shall be visualized (acceleration vector or field center)" annotation(Dialog(enable = enableAnimation));
  parameter Types.AxisLabel label1 = "x" "Label of horizontal axis in icon";
  parameter Types.AxisLabel label2 = "y" "Label of vertical axis in icon";
  parameter Types.GravityTypes gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity "Type of gravity field" annotation(Evaluate = true);
  parameter Modelica.SIunits.Acceleration g = 9.81 "Constant gravity acceleration" annotation(Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity));
  parameter Types.Axis n = {0, -1, 0} "Direction of gravity resolved in world frame (gravity = g*n/length(n))" annotation(Evaluate = true, Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity));
  parameter Real mue(unit = "m3/s2", min = 0) = 398600000000000.0 "Gravity field constant (default = field constant of earth)" annotation(Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity));
  parameter Boolean driveTrainMechanics3D = true "= true, if 3-dim. mechanical effects of Parts.Mounting1D/Rotor1D/BevelGear1D shall be taken into account";
  parameter Modelica.SIunits.Distance axisLength = nominalLength / 2 "Length of world axes arrows" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
  parameter Modelica.SIunits.Distance axisDiameter = axisLength / defaultFrameDiameterFraction "Diameter of world axes arrows" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
  parameter Boolean axisShowLabels = true "= true, if labels shall be shown" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
  input Types.Color axisColor_x = Modelica.Mechanics.MultiBody.Types.Defaults.FrameColor "Color of x-arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
  input Types.Color axisColor_y = axisColor_x annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
  input Types.Color axisColor_z = axisColor_x "Color of z-arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
  parameter Modelica.SIunits.Position gravityArrowTail[3] = {0, 0, 0} "Position vector from origin of world frame to arrow tail, resolved in world frame" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
  parameter Modelica.SIunits.Length gravityArrowLength = axisLength / 2 "Length of gravity arrow" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
  parameter Modelica.SIunits.Diameter gravityArrowDiameter = gravityArrowLength / defaultWidthFraction "Diameter of gravity arrow" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
  input Types.Color gravityArrowColor = {0, 230, 0} "Color of gravity arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
  parameter Modelica.SIunits.Diameter gravitySphereDiameter = 12742000 "Diameter of sphere representing gravity center (default = mean diameter of earth)" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = PointGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity));
  input Types.Color gravitySphereColor = {0, 230, 0} "Color of gravity sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateGravity = true and gravityType = PointGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity));
  parameter Modelica.SIunits.Length nominalLength = 1 "\"Nominal\" length of multi-body system" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultAxisLength = nominalLength / 5 "Default for length of a frame axis (but not world frame)" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultJointLength = nominalLength / 10 "Default for the fixed length of a shape representing a joint" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultJointWidth = nominalLength / 20 "Default for the fixed width of a shape representing a joint" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultForceLength = nominalLength / 10 "Default for the fixed length of a shape representing a force (e.g., damper)" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultForceWidth = nominalLength / 20 "Default for the fixed width of a shape representing a force (e.g., spring, bushing)" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultBodyDiameter = nominalLength / 9 "Default for diameter of sphere representing the center of mass of a body" annotation(Dialog(tab = "Defaults"));
  parameter Real defaultWidthFraction = 20 "Default for shape width as a fraction of shape length (e.g., for Parts.FixedTranslation)" annotation(Dialog(tab = "Defaults"));
  parameter Modelica.SIunits.Length defaultArrowDiameter = nominalLength / 40 "Default for arrow diameter (e.g., of forces, torques, sensors)" annotation(Dialog(tab = "Defaults"));
  parameter Real defaultFrameDiameterFraction = 40 "Default for arrow diameter of a coordinate system as a fraction of axis length" annotation(Dialog(tab = "Defaults"));
  parameter Real defaultSpecularCoefficient(min = 0) = 0.7 "Default reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Defaults"));
  parameter Real defaultN_to_m(unit = "N/m", min = 0) = 1000 "Default scaling of force arrows (length = force/defaultN_to_m)" annotation(Dialog(tab = "Defaults"));
  parameter Real defaultNm_to_m(unit = "N.m/m", min = 0) = 1000 "Default scaling of torque arrows (length = torque/defaultNm_to_m)" annotation(Dialog(tab = "Defaults"));
  /* adrpo: 2012-09-04 -> replace gravityAcceleration function with the one in MSL 3.1 (not replaceable)
          replaceable function gravityAcceleration =
               Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration
              (    gravityType=gravityType, g=g*Modelica.Math.Vectors.normalizeWithAssert(n), mue=mue)
               constrainedby
            Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration
            "Function to compute the gravity acceleration, resolved in world frame"
               annotation(choicesAllMatching=true,Dialog(enable=gravityType==
                           Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity),
            Documentation(info="<html>
        <p>Replaceable function to define the gravity field.
           Default is function
           <a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration\">standardGravityAcceleration</a>
           that provides some simple gravity fields (no gravity, constant parallel gravity field,
           point gravity field).
           By redeclaring this function, any type of gravity field can be defined, see example
             <a href=\"modelica://Modelica.Mechanics.MultiBody.Examples.Elementary.UserDefinedGravityField\">Examples.Elementary.UserDefinedGravityField</a>.
        </p>
        </html>"));
          */
  function gravityAcceleration = gravityAccelerationTypes(gravityType = gravityType, g = g * Modelica.Math.Vectors.normalize(n), mue = mue);
protected
  function gravityAccelerationTypes "Gravity field acceleration depending on field type and position"
    import Modelica.Mechanics.MultiBody.Types.GravityTypes;
    extends Modelica.Icons.Function;
    input Modelica.SIunits.Position r[3] "Position vector from world frame to actual point, resolved in world frame";
    input GravityTypes gravityType "Type of gravity field";
    input Modelica.SIunits.Acceleration g[3] "Constant gravity acceleration, resolved in world frame, if gravityType=1";
    input Real mue(unit = "m3/s2") "Field constant of point gravity field, if gravityType=2";
    output Modelica.SIunits.Acceleration gravity[3] "Gravity acceleration at point r, resolved in world frame";
  algorithm
    gravity := if gravityType == GravityTypes.UniformGravity then g else if gravityType == GravityTypes.PointGravity then -mue / (r * r) * r / Modelica.Math.Vectors.length(r) else zeros(3);
    annotation(Inline = true);
  end gravityAccelerationTypes;

  /* The World object can only use the Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape model, but no
             other models in package Modelica.Mechanics.MultiBody.Visualizers, since the other models access
             data of the "outer Modelica.Mechanics.MultiBody.World world" object, i.e., there are
             mutually dependent classes. For this reason, the higher level visualization
             objects cannot be used.
          */
  parameter Integer ndim = if enableAnimation and animateWorld then 1 else 0;
  parameter Integer ndim2 = if enableAnimation and animateWorld and axisShowLabels then 1 else 0;
  // Parameters to define axes
  parameter Modelica.SIunits.Length headLength = min(axisLength, axisDiameter * Types.Defaults.FrameHeadLengthFraction);
  parameter Modelica.SIunits.Length headWidth = axisDiameter * Types.Defaults.FrameHeadWidthFraction;
  parameter Modelica.SIunits.Length lineLength = max(0, axisLength - headLength);
  parameter Modelica.SIunits.Length lineWidth = axisDiameter;
  // Parameters to define axes labels
  parameter Modelica.SIunits.Length scaledLabel = Modelica.Mechanics.MultiBody.Types.Defaults.FrameLabelHeightFraction * axisDiameter;
  parameter Modelica.SIunits.Length labelStart = 1.05 * axisLength;
  // x-axis
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape x_arrowLine(shapeType = "cylinder", length = lineLength, width = lineWidth, height = lineWidth, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, color = axisColor_x, specularCoefficient = 0) if enableAnimation and animateWorld;
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape x_arrowHead(shapeType = "cone", length = headLength, width = headWidth, height = headWidth, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, color = axisColor_x, r = {lineLength, 0, 0}, specularCoefficient = 0) if enableAnimation and animateWorld;
  Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines x_label(lines = scaledLabel * {[0, 0; 1, 1], [0, 1; 1, 0]}, diameter = axisDiameter, color = axisColor_x, r_lines = {labelStart, 0, 0}, n_x = {1, 0, 0}, n_y = {0, 1, 0}, specularCoefficient = 0) if enableAnimation and animateWorld and axisShowLabels;
  // y-axis
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape y_arrowLine(shapeType = "cylinder", length = lineLength, width = lineWidth, height = lineWidth, lengthDirection = {0, 1, 0}, widthDirection = {1, 0, 0}, color = axisColor_y, specularCoefficient = 0) if enableAnimation and animateWorld;
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape y_arrowHead(shapeType = "cone", length = headLength, width = headWidth, height = headWidth, lengthDirection = {0, 1, 0}, widthDirection = {1, 0, 0}, color = axisColor_y, r = {0, lineLength, 0}, specularCoefficient = 0) if enableAnimation and animateWorld;
  Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines y_label(lines = scaledLabel * {[0, 0; 1, 1.5], [0, 1.5; 0.5, 0.75]}, diameter = axisDiameter, color = axisColor_y, r_lines = {0, labelStart, 0}, n_x = {0, 1, 0}, n_y = {-1, 0, 0}, specularCoefficient = 0) if enableAnimation and animateWorld and axisShowLabels;
  // z-axis
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape z_arrowLine(shapeType = "cylinder", length = lineLength, width = lineWidth, height = lineWidth, lengthDirection = {0, 0, 1}, widthDirection = {0, 1, 0}, color = axisColor_z, specularCoefficient = 0) if enableAnimation and animateWorld;
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape z_arrowHead(shapeType = "cone", length = headLength, width = headWidth, height = headWidth, lengthDirection = {0, 0, 1}, widthDirection = {0, 1, 0}, color = axisColor_z, r = {0, 0, lineLength}, specularCoefficient = 0) if enableAnimation and animateWorld;
  Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines z_label(lines = scaledLabel * {[0, 0; 1, 0], [0, 1; 1, 1], [0, 1; 1, 0]}, diameter = axisDiameter, color = axisColor_z, r_lines = {0, 0, labelStart}, n_x = {0, 0, 1}, n_y = {0, 1, 0}, specularCoefficient = 0) if enableAnimation and animateWorld and axisShowLabels;
  // Uniform gravity visualization
  parameter Modelica.SIunits.Length gravityHeadLength = min(gravityArrowLength, gravityArrowDiameter * Types.Defaults.ArrowHeadLengthFraction);
  parameter Modelica.SIunits.Length gravityHeadWidth = gravityArrowDiameter * Types.Defaults.ArrowHeadWidthFraction;
  parameter Modelica.SIunits.Length gravityLineLength = max(0, gravityArrowLength - gravityHeadLength);
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravityArrowLine(shapeType = "cylinder", length = gravityLineLength, width = gravityArrowDiameter, height = gravityArrowDiameter, lengthDirection = n, widthDirection = {0, 1, 0}, color = gravityArrowColor, r_shape = gravityArrowTail, specularCoefficient = 0) if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity;
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravityArrowHead(shapeType = "cone", length = gravityHeadLength, width = gravityHeadWidth, height = gravityHeadWidth, lengthDirection = n, widthDirection = {0, 1, 0}, color = gravityArrowColor, r_shape = gravityArrowTail + Modelica.Math.Vectors.normalize(n) * gravityLineLength, specularCoefficient = 0) if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity;
  // Point gravity visualization
  parameter Integer ndim_pointGravity = if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity then 1 else 0;
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravitySphere(shapeType = "sphere", r_shape = {-gravitySphereDiameter / 2, 0, 0}, lengthDirection = {1, 0, 0}, length = gravitySphereDiameter, width = gravitySphereDiameter, height = gravitySphereDiameter, color = gravitySphereColor, specularCoefficient = 0) if enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity;
  /*
          function gravityAcceleration = gravityAccelerationTypes (
              gravityType=gravityType,
              g=g*Modelica.Math.Vectors.normalize(
                                             n),
              mue=mue);
        */
equation
  Connections.root(frame_b.R);
  assert(Modelica.Math.Vectors.length(n) > 1e-10, "Parameter n of World object is wrong (length(n) > 0 required)");
  frame_b.r_0 = zeros(3);
  frame_b.R = Frames.nullRotation();
  annotation(defaultComponentName = "world", defaultComponentPrefixes = "inner", missingInnerMessage = "No \"world\" component is defined. A default world
    component with the default gravity field will be used
    (g=9.81 in negative y-axis). If this is not desired,
    drag Modelica.Mechanics.MultiBody.World into the top level of your model.", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Line(points = {{-100, -118}, {-100, 61}}, color = {0, 0, 0}, thickness = 0.5), Polygon(points = {{-100, 100}, {-120, 60}, {-80, 60}, {-100, 100}, {-100, 100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Line(points = {{-119, -100}, {59, -100}}, color = {0, 0, 0}, thickness = 0.5), Polygon(points = {{99, -100}, {59, -80}, {59, -120}, {99, -100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Text(extent = {{-150, 145}, {150, 105}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{95, -113}, {144, -162}}, lineColor = {0, 0, 0}, textString = "%label1"), Text(extent = {{-170, 127}, {-119, 77}}, lineColor = {0, 0, 0}, textString = "%label2"), Line(points = {{-56, 78}, {-56, -26}}, color = {0, 0, 255}), Polygon(points = {{-68, -26}, {-56, -66}, {-44, -26}, {-68, -26}}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{2, 78}, {2, -26}}, color = {0, 0, 255}), Polygon(points = {{-10, -26}, {2, -66}, {14, -26}, {-10, -26}}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{66, 80}, {66, -26}}, color = {0, 0, 255}), Polygon(points = {{54, -26}, {66, -66}, {78, -26}, {54, -26}}, fillColor = {0, 0, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, lineColor = {0, 0, 255})}), Documentation(info = "<HTML>
    <p>
    Model <b>World</b> represents a global coordinate system fixed in
    ground. This model serves several purposes:
    <ul>
    <li> It is used as <b>inertial system</b> in which
         the equations of all elements of the MultiBody library
         are defined.</li>
    <li> It is the world frame of an <b>animation window</b> in which
         all elements of the MultiBody library are visualized.</li>
    <li> It is used to define the <b>gravity field</b> in which a
         multi-body model is present. Default is a uniform gravity
         field where the gravity acceleration vector g is the
         same at every position. Additionally, a point gravity field or no
         gravity can be selected. Also, function gravityAcceleration can
         be redeclared to a user-defined function that computes the gravity
         acceleration, see example
         <a href=\"modelica://Modelica.Mechanics.MultiBody.Examples.Elementary.UserDefinedGravityField\">Examples.Elementary.UserDefinedGravityField</a>.
         </li>
    <li> It is used to define <b>default settings</b> of animation properties
         (e.g., the diameter of a sphere representing by default
         the center of mass of a body, or the diameters of the cylinders
         representing a revolute joint).</li>
    <li> It is used to define a <b>visual representation</b> of the
         world model (= 3 coordinate axes with labels) and of the defined
         gravity field.<br>
        <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/world.png\" ALT=\"MultiBody.World\">
    </li>
    </ul>
    <p>
    Since the gravity field function is required from all bodies with mass
    and the default settings of animation properties are required
    from nearly every component, exactly one instance of model World needs
    to be present in every model on the top level. The basic declaration
    needs to be:
    </p>
    <pre>
        <b>inner</b> Modelica.Mechanics.MultiBody.World world
    </pre>
    <p>
    Note, it must be an <b>inner</b> declaration with instance name <b>world</b>
    in order that this world object can be accessed from all objects in the
    model. When dragging the \"World\" object from the package browser into
    the diagram layer, this declaration is automatically generated
    (this is defined via annotations in model World).
    </p>
    <p>
    All vectors and tensors of a mechanical system are resolved in a
    frame that is local to the corresponding component. Usually,
    if all relative joint coordinates vanish, the local frames
    of all components are parallel to each other, as well as to the
    world frame (this holds as long as a Parts.FixedRotation,
    component is <b>not</b> used). In this \"reference configuration\"
    it is therefore
    alternatively possible to resolve all vectors in the world
    frame, since all frames are parallel to each other.
    This is often very convenient. In order to give some visual
    support in such a situation, in the icon of a World instance
    two axes of the world frame are shown and the labels
    of these axes can be set via parameters.
    </p>
    </html>"));
end NGWorld;
