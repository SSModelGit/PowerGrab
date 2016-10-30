within DiscardedPowerGrabModels.OldComponents;
model Body
  "Rigid body with mass, inertia tensor and one frame connector (12 potential states)"
  import Modelica.Mechanics.MultiBody.Types;
  import Modelica.Mechanics.MultiBody.Frames;
  import Modelica.SIunits.Conversions.to_unit1;
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed at body" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
  parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder and sphere)";
  parameter Real multAnimate "scaling factor for animation";
  parameter Modelica.SIunits.Position r_CM[3](start = {0, 0, 0}) "Vector from frame_a to center of mass, resolved in frame_a";
  parameter Modelica.SIunits.Mass m(min = 0, start = 1) "Mass of rigid body";
  parameter Modelica.SIunits.Inertia I_11(min = 0) = 0.001 "(1,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
  parameter Modelica.SIunits.Inertia I_22(min = 0) = 0.001 "(2,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
  parameter Modelica.SIunits.Inertia I_33(min = 0) = 0.001 "(3,3) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
  parameter Modelica.SIunits.Inertia I_21(min = -Modelica.Constants.inf) = 0 "(2,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
  parameter Modelica.SIunits.Inertia I_31(min = -Modelica.Constants.inf) = 0 "(3,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
  parameter Modelica.SIunits.Inertia I_32(min = -Modelica.Constants.inf) = 0 "(3,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
  Modelica.SIunits.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
  Modelica.SIunits.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
  Modelica.SIunits.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
  parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
  parameter Modelica.SIunits.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
  parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
  parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
  parameter Modelica.SIunits.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
  parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
  parameter Modelica.SIunits.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
  parameter Modelica.SIunits.Diameter sphereDiameter = 0.001 "Diameter of sphere" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  input Modelica.Mechanics.MultiBody.Types.Color sphereColor = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
  parameter Modelica.SIunits.Diameter cylinderDiameter = sphereDiameter / Modelica.Mechanics.MultiBody.Types.Defaults.BodyCylinderDiameterFraction "Diameter of cylinder" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  input Modelica.Mechanics.MultiBody.Types.Color cylinderColor = sphereColor "Color of cylinder" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
  input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
  parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Evaluate = true, Dialog(tab = "Advanced"));
  parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced"));
  parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
  final parameter Modelica.SIunits.Inertia I[3, 3] = [I_11, I_21, I_31; I_21, I_22, I_32; I_31, I_32, I_33] "inertia tensor";
  final parameter Modelica.Mechanics.MultiBody.Frames.Orientation R_start = Modelica.Mechanics.MultiBody.Frames.axesRotations(sequence_start, angles_start, zeros(3)) "Orientation object from world frame to frame_a at initial time";
  final parameter Modelica.SIunits.AngularAcceleration z_a_start[3] = Frames.resolve2(R_start, z_0_start) "Initial values of angular acceleration z_a = der(w_a), i.e., time derivative of angular velocity resolved in frame_a";
  Modelica.SIunits.AngularVelocity w_a[3](start = Frames.resolve2(R_start, w_0_start), fixed = fill(w_0_fixed, 3), each stateSelect = if enforceStates then if useQuaternions then StateSelect.always else StateSelect.never else StateSelect.avoid) "Absolute angular velocity of frame_a resolved in frame_a";
  Modelica.SIunits.AngularAcceleration z_a[3](start = Frames.resolve2(R_start, z_0_start), fixed = fill(z_0_fixed, 3)) "Absolute angular acceleration of frame_a resolved in frame_a";
  Modelica.SIunits.Acceleration g_0[3] "Gravity acceleration resolved in world frame";
protected
  outer Modelica.Mechanics.MultiBody.World world;
  // Declarations for quaternions (dummies, if quaternions are not used)
  parameter Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation Q_start = Frames.to_Q(R_start) "Quaternion orientation object from world frame to frame_a at initial time";
  Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation Q(start = Q_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.prefer else StateSelect.never else StateSelect.avoid) "Quaternion orientation object from world frame to frame_a (dummy value, if quaternions are not used as states)";
  // Declaration for 3 angles
  parameter Modelica.SIunits.Angle phi_start[3] = if sequence_start[1] == sequence_angleStates[1] and sequence_start[2] == sequence_angleStates[2] and sequence_start[3] == sequence_angleStates[3] then angles_start else Frames.axesRotationsAngles(R_start, sequence_angleStates) "Potential angle states at initial time";
  Modelica.SIunits.Angle phi[3](start = phi_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "Dummy or 3 angles to rotate world frame into frame_a of body";
  Modelica.SIunits.AngularVelocity phi_d[3](each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "= der(phi)";
  Modelica.SIunits.AngularAcceleration phi_dd[3] "= der(phi_d)";
  // Declarations for animation
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinder(shapeType = "cylinder", color = cylinderColor, specularCoefficient = specularCoefficient, length = 100 * (if Modelica.Math.Vectors.length(r_CM) > sphereDiameter / 2 then Modelica.Math.Vectors.length(r_CM) - (if cylinderDiameter > 1.1 * sphereDiameter then sphereDiameter / 2 else 0) else 0), width = 100 * cylinderDiameter, height = 100 * cylinderDiameter, lengthDirection = to_unit1(r_CM), widthDirection = {0, 1, 0}, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
  Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape sphere(shapeType = "sphere", color = sphereColor, specularCoefficient = specularCoefficient, length = sphereDiameter, width = sphereDiameter, height = sphereDiameter, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, r_shape = r_CM - {1, 0, 0} * sphereDiameter / 2, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation and sphereDiameter > 0;
initial equation
  if angles_fixed then
    if not Connections.isRoot(frame_a.R) then
      zeros(3) = Frames.Orientation.equalityConstraint(frame_a.R, R_start);
    elseif useQuaternions then
      zeros(3) = Frames.Quaternions.Orientation.equalityConstraint(Q, Q_start);
    else
      phi = phi_start;
    end if;
  end if;
  // Initialize positional variables
  // frame_a.R is computed somewhere else
  // frame_a.R is computed from quaternions Q
  // frame_a.R is computed from the 3 angles 'phi'
equation
  if enforceStates then
    Connections.root(frame_a.R);
  else
    Connections.potentialRoot(frame_a.R);
  end if;
  r_0 = frame_a.r_0;
  if not Connections.isRoot(frame_a.R) then
    Q = {0, 0, 0, 1};
    phi = zeros(3);
    phi_d = zeros(3);
    phi_dd = zeros(3);
  elseif useQuaternions then
    frame_a.R = Frames.from_Q(Q, Frames.Quaternions.angularVelocity2(Q, der(Q)));
    {0} = Frames.Quaternions.orientationConstraint(Q);
    phi = zeros(3);
    phi_d = zeros(3);
    phi_dd = zeros(3);
  else
    phi_d = der(phi);
    phi_dd = der(phi_d);
    frame_a.R = Frames.axesRotations(sequence_angleStates, phi, phi_d);
    Q = {0, 0, 0, 1};
  end if;
  // Body does not have states
  // Dummies
  // Use Quaternions as states (with dynamic state selection)
  // Dummies
  // Use Cardan angles as states
  // Dummies
  // gravity acceleration at center of mass resolved in world frame
  g_0 = world.gravityAcceleration(frame_a.r_0 + Frames.resolve1(frame_a.R, r_CM));
  // translational kinematic differential equations
  v_0 = der(frame_a.r_0);
  a_0 = der(v_0);
  // rotational kinematic differential equations
  w_a = Frames.angularVelocity2(frame_a.R);
  z_a = der(w_a);
  /* Newton/Euler equations with respect to center of mass
                                    a_CM = a_a + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM));
                                    f_CM = m*(a_CM - g_a);
                                    t_CM = I*z_a + cross(w_a, I*w_a);
                               frame_a.f = f_CM
                               frame_a.t = t_CM + cross(r_CM, f_CM);
                            Inserting the first three equations in the last two results in:
                          */
  frame_a.f = m * (Frames.resolve2(frame_a.R, a_0 - g_0) + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM)));
  frame_a.t = I * z_a + cross(w_a, I * w_a) + cross(r_CM, frame_a.f);
  annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-100, 30}, {-3, -31}}, lineColor = {0, 24, 48},
            fillPattern =                                                                                                                                                                           FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{150, -100}, {-150, -70}}, lineColor = {0, 0, 0}, textString = "m=%m"), Text(extent = {{-150, 110}, {150, 70}}, textString = "%name", lineColor = {0, 0, 255}), Ellipse(extent = {{-20, 60}, {100, -60}}, lineColor = {0, 24, 48},
            fillPattern =                                                                                                                                                                                                        FillPattern.Sphere, fillColor = {0, 127, 255})}), Documentation(info = "<HTML>
       <p>
       <b>Rigid body</b> with mass and inertia tensor.
       All parameter vectors have to be resolved in frame_a.
       The <b>inertia tensor</b> has to be defined with respect to a
       coordinate system that is parallel to frame_a with the
       origin at the center of mass of the body.
       </p>
       <p>
       By default, this component is visualized by a <b>cylinder</b> located
       between frame_a and the center of mass and by a <b>sphere</b> that has
       its center at the center of mass. If the cylinder length is smaller as
       the radius of the sphere, e.g., since frame_a is located at the
       center of mass, the cylinder is not displayed. Note, that
       the animation may be switched off via parameter animation = <b>false</b>.
       </p>
       <p>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Body.png\" ALT=\"Parts.Body\">
       </p>
       
       <p>
       <b>States of Body Components</b>
       </p>
       <p>
       Every body has potential states. If possible a tool will select
       the states of joints and not the states of bodies because this is
       usually the most efficient choice. In this case the position, orientation,
       velocity and angular velocity of frame_a of the body will be computed
       by the component that is connected to frame_a. However, if a body is moving
       freely in space, variables of the body have to be used as states. The potential
       states of the body are:
       </p>
       <ul>
       <li> The <b>position vector</b> frame_a.r_0 from the origin of the
            world frame to the origin of frame_a of the body, resolved in
            the world frame and the <b>absolute velocity</b> v_0 of the origin of
            frame_a, resolved in the world frame (= der(frame_a.r_0)).
       </li>
       <li> If parameter <b>useQuaternions</b> in the \"Advanced\" menu
            is <b>true</b> (this is the default), then <b>4 quaternions</b>
            are potential states. Additionally, the coordinates of the
            absolute angular velocity vector of the
            body are 3 potential states.<br>
            If <b>useQuaternions</b> in the \"Advanced\" menu
            is <b>false</b>, then <b>3 angles</b> and the derivatives of
            these angles are potential states. The orientation of frame_a
            is computed by rotating the world frame along the axes defined
            in parameter vector \"sequence_angleStates\" (default = {1,2,3}, i.e.,
            the Cardan angle sequence) around the angles used as potential states.
            For example, the default is to rotate the x-axis of the world frame
            around angles[1], the new y-axis around angles[2] and the new z-axis
            around angles[3], arriving at frame_a.
        </li>
       </ul>
       <p>
       The quaternions have the slight disadvantage that there is a
       non-linear constraint equation between the 4 quaternions.
       Therefore, at least one non-linear equation has to be solved
       during simulation. A tool might, however, analytically solve this
       simple constraint equation. Using the 3 angles as states has the
       disadvantage that there is a singular configuration in which a
       division by zero will occur. If it is possible to determine in advance
       for an application class that this singular configuration is outside
       of the operating region, the 3 angles might be used as potential
       states by setting <b>useQuaternions</b> = <b>false</b>.
       </p>
       <p>
       In text books about 3-dimensional mechanics often 3 angles and the
       angular velocity are used as states. This is not the case here, since
       3 angles and their derivatives are used as potential states
       (if useQuaternions = false). The reason
       is that for real-time simulation the discretization formula of the
       integrator might be \"inlined\" and solved together with the body equations.
       By appropriate symbolic transformation the performance is
       drastically increased if angles and their
       derivatives are used as states, instead of angles and the angular
       velocity.
       </p>
       <p>
       Whether or not variables of the body are used as states is usually
       automatically selected by the Modelica translator. If parameter
       <b>enforceStates</b> is set to <b>true</b> in the \"Advanced\" menu,
       then body variables are forced to be used as states according
       to the setting of parameters \"useQuaternions\" and
       \"sequence_angleStates\".
       </p>
       </HTML>"));
end Body;
