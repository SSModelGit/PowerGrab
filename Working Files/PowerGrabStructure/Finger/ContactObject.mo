within PowerGrabStructure.Finger;
package ContactObject "Contact Object Models"

  package Interfaces
    partial model ObjectConnection
      "Interface for a contact model based around the connection to the object"
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_contact
        "Frame of the contact point"
        annotation (Placement(transformation(extent={{-116,-16},{-84,16}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_object
        "Frame connecting to object moving towards the contact point"
        annotation (Placement(transformation(extent={{84,-16},{116,18}})));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end ObjectConnection;
  end Interfaces;

  package Components

    model NonLinearSpringDamper
      import Modelica.Mechanics.MultiBody.Types;
      parameter Boolean animation = true "= true, if animation shall be enabled";
      input Modelica.SIunits.Distance width = world.defaultForceWidth "Width of spring" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
      input Modelica.SIunits.Distance coilWidth = width / 10 "Width of spring coil" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
      parameter Integer numberOfWindings = 5 "Number of spring windings" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
      input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor "Color of spring" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
      extends
        Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort(      final T = 293.15);
      Modelica.Blocks.Interfaces.RealInput k "Non-linear stiffness of the spring" annotation(Placement(visible = true, transformation(origin = {-100, -70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -57.521}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
      Modelica.Blocks.Interfaces.RealInput d annotation(Placement(visible = true, transformation(origin = {-100, 74.52500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
      parameter Modelica.SIunits.Length s_unstretched = 0 "Unstretched spring length";
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    protected
      Modelica.SIunits.Force f_d "Damping force";
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape shape(shapeType = "spring", color = color, length = s, width = width, height = coilWidth * 2, lengthDirection = e_a, widthDirection = {0, 1, 0}, extra = numberOfWindings, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
    equation
      f_d = d * der(s);
      f = k * (s - s_unstretched) + f_d;
      lossPower = f_d * der(s);
      y = abs(f);
      annotation(Documentation(info = "<HTML>
                   <p>
                   <b>Linear spring</b> and <b>linear damper</b>
                   in parallel acting as line force between frame_a and frame_b.
                   A <b>force f</b> is exerted on the origin of frame_b and with opposite sign
                   on the origin of frame_a along the line from the origin of frame_a to the origin
                   of frame_b according to the equation:
                   </p>
                   <pre>
                      f = c*(s - s_unstretched) + d*<b>der</b>(s);
                   </pre>
                   <p>
                   where \"c\", \"s_unstretched\" and \"d\" are parameters, \"s\" is the
                   distance between the origin of frame_a and the origin of frame_b
                   and der(s) is the time derivative of s.
                   </p>
                   </html>"),     Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, grid = {10, 10}), graphics={  Rectangle(visible = true, fillColor = {192, 192, 192},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-52, -100}, {38, -40}}), Text(visible = true, textColor = {0, 0, 255}, extent = {{-150, -150}, {150, -110}}, textString = "%name"), Line(visible = true, points = {{-80, 40}, {-60, 40}, {-45, 10}, {-15, 70}, {15, 10}, {45, 70}, {60, 40}, {80, 40}}), Line(visible = true, points = {{-80, 40}, {-80, -70}}), Line(visible = true, points = {{-80, -70}, {-52, -70}}), Line(visible = true, points = {{-52, -40}, {68, -40}}), Line(visible = true, points = {{-52, -100}, {68, -100}}), Line(visible = true, points = {{38, -70}, {80, -70}}), Line(visible = true, points = {{80, 40}, {80, -70}}), Line(visible = true, points = {{-100, 0}, {-80, 0}}), Line(visible = true, points = {{80, 0}, {100, 0}}), Line(visible = useHeatPort, points = {{-100, -101}, {-100, -80}, {-6, -80}}, color = {191, 0, 0}, pattern = LinePattern.Dot), Text(visible = true, origin = {-70, 65.92100000000001}, extent = {{-8.948, -11.511}, {8.948, 11.511}}, textString = "d"), Text(visible = true, origin = {-110, -60}, extent = {{-13.378, -9.118}, {13.378, 9.118}}, textString = "k")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Line(points = {{-80, 32}, {-58, 32}, {-43, 2}, {-13, 62}, {17, 2}, {47, 62}, {62, 32}, {80, 32}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-68, 32}, {-68, 97}}, color = {128, 128, 128}), Line(points = {{72, 32}, {72, 97}}, color = {128, 128, 128}), Line(points = {{-68, 92}, {72, 92}}, color = {128, 128, 128}), Polygon(points = {{62, 95}, {72, 92}, {62, 89}, {62, 95}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Text(extent = {{-20, 72}, {20, 97}}, lineColor = {0, 0, 255}, textString = "s"), Rectangle(extent = {{-52, -20}, {38, -80}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192},
                fillPattern =                                                                                                                                                                                                        FillPattern.Solid), Line(points = {{-52, -80}, {68, -80}}, color = {0, 0, 0}), Line(points = {{-52, -20}, {68, -20}}, color = {0, 0, 0}), Line(points = {{38, -50}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-80, -50}, {-52, -50}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-80, -50}}, color = {0, 0, 0}), Line(points = {{80, 32}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-100, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{100, 0}, {80, 0}}, color = {0, 0, 0})}));
    end NonLinearSpringDamper;
  end Components;

  package Examples
    model PrismDampingOC
      extends
        PowerGrabStructure.Finger.ContactObject.Interfaces.ObjectConnection;

      parameter Modelica.SIunits.Length boneLength;
      parameter Modelica.SIunits.Distance threshold;
      parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
      parameter Modelica.SIunits.TranslationalSpringConstant bufferEffect = 500 "Repulsion caused by skin buffer approximation";
      Boolean contact;
      parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
      parameter Modelica.SIunits.TranslationalDampingConstant bufferDamping(final min = 0) = 500 "Buffer zone's damping constant";
      Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {11.732, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.Distance lMag(animation = false) annotation(Placement(visible = true, transformation(origin = {-0, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Components.NonLinearSpringDamper contactResistance(s_unstretched=
            threshold, animation=false) annotation (Placement(visible=true,
            transformation(
            origin={-0,57.91},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold, animation = true) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(
      s(                                                      fixed =   false),useAxisFlange = true, animation = false)
        "Vector along the bone"                                                                                         annotation(Placement(visible = true, transformation(origin={61.951,
                -1.936},                                                                                                                                                                               extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.RelativePosition lVec(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {5, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.SIunits.Length lHat[3];
      Modelica.SIunits.Velocity v2[3];
      Modelica.SIunits.Velocity v2Hat[3];
      Modelica.Mechanics.MultiBody.Forces.WorldForce fPrism(diameter = 0.005, animation = false) annotation(Placement(visible = true, transformation(origin = {-65, 38.1}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce fSphere(diameter = 0.005, animation = false, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world) annotation(Placement(visible = true, transformation(origin = {-117.719, 38.229}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real mu0;
      Real checkProjection;
      Real v2Mag;
      parameter Real mu;
      Modelica.Mechanics.MultiBody.Sensors.RelativeVelocity rV(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {-45, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Boolean fContact;
      Boolean bContact "True if within range of skin buffer";
      parameter Modelica.SIunits.Length bufferRange "Range the buffer approximating skin extends";
      parameter Modelica.SIunits.Length delta;
      parameter Modelica.SIunits.Velocity v0Mag = 5;
      parameter Modelica.SIunits.Velocity v2delta = 0.1;
      Components.NonLinearSpringDamper skinBuffer(animation=false,
          s_unstretched=threshold + bufferRange) annotation (Placement(visible=
              true, transformation(
            origin={0,26.587},
            extent={{-10,-10},{10,10}},
            rotation=0)));
    equation
      connect(skinBuffer.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 12.325}, points={{-29.851,
              14.262},{8.875,14.262},{8.875,-14.261},{12.1,-14.261}}));
      connect(rV.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {28.601, -28.468}, points={{-63.601,
              -26.532},{20.125,-26.532},{20.125,26.532},{23.35,26.532}}));
      connect(fPrism.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {23.601, 18.082}, points={{-78.601,
              20.018},{25.125,20.018},{25.125,-20.018},{28.35,-20.018}}));
      connect(lVec.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {41.101, -20.968}, points={{-26.101,
              -19.032},{7.625,-19.032},{7.625,19.032},{10.85,19.032}}));
      connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {46.277, -13.468}, points={{-83.045,
              -11.532},{28.686,-11.532},{28.686,11.532},{25.674,11.532}}));
      connect(contactResistance.frame_b, prismatic.frame_b) annotation (Line(
          visible=true,
          origin={39.851,27.987},
          points={{-29.851,29.923},{8.875,29.923},{8.875,-29.923},{12.1,-29.923}}));
      connect(lMag.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 1.532}, points={{-29.851,
              3.468},{8.875,3.468},{8.875,-3.468},{12.1,-3.468}}));
      contact = lMag.distance <= threshold;
      fContact = abs(lMag.distance - threshold) <= delta;
      bContact = lMag.distance - threshold <= bufferRange;
      contactResistance.k = smooth(1, noEvent(if contact then k else 0));
      skinBuffer.k = smooth(1, noEvent(if bContact then bufferEffect else 0));
      contactResistance.d = smooth(0, noEvent(if contact then dampingCoefficient
         else 0));
      skinBuffer.d = smooth(0, noEvent(if bContact then bufferDamping else 0));
      position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
      lHat = lVec.r_rel / lMag.distance;
      v2 = rV.v_rel - rV.v_rel * lHat * lHat;
      v2Hat = v2 / (v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2 + 0.1);
      v2Mag = sqrt(v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2 + 0.1);
      mu0 = smooth(0, noEvent(if fContact then mu else 0));
      checkProjection = v2Hat * lHat;
      fPrism.force = -mu0 * min(skinBuffer.y, 50) * v2Hat * min(smooth(0, noEvent(if v2Mag > v2delta then v2Mag - v2delta else 0)), v0Mag - v2delta);
      fSphere.force = -fPrism.force;
      connect(fSphere.frame_b, frame_contact) annotation (Line(
          points={{-107.719,38.229},{-107.719,19.1145},{-100,19.1145},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(fixedShape.frame_a, frame_contact) annotation (Line(
          points={{-10,86.994},{-100,86.994},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(contactResistance.frame_a, frame_contact) annotation (Line(
          points={{-10,57.91},{-100,57.91},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(skinBuffer.frame_a, frame_contact) annotation (Line(
          points={{-10,26.587},{-100,26.587},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(lMag.frame_a, frame_contact) annotation (Line(
          points={{-10,5},{-55,5},{-55,0},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(relativePosition.frame_a, frame_contact) annotation (Line(
          points={{-56.768,-25},{-100,-25},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(rV.frame_a, frame_contact) annotation (Line(
          points={{-55,-55},{-100,-55},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(lVec.frame_a, frame_contact) annotation (Line(
          points={{-5,-40},{-50,-40},{-100,-40},{-100,0}},
          color={95,95,95},
          thickness=0.5));
      connect(prismatic.frame_a, frame_object) annotation (Line(
          points={{71.951,-1.936},{85.9755,-1.936},{85.9755,1},{100,1}},
          color={95,95,95},
          thickness=0.5));
      connect(position.flange, prismatic.axis) annotation (Line(points={{21.732,-65},
              {40,-65},{40,4.064},{53.951,4.064}}, color={0,127,0}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics={  Ellipse(visible = true,
              fillPattern =                                                                                                                                                                     FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255},
              fillPattern =                                                                                                                                                                                                        FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {-0.339, 0}, extent = {{-66.146, -7.55}, {66.146, 7.55}}, textString = "PRISM DAMP")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end PrismDampingOC;
  end Examples;
end ContactObject;
