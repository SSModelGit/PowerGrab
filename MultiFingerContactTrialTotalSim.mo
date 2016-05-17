package Modelica "Modelica Standard Library - Version 3.2.1 (Build 2)"
  extends Modelica.Icons.Package;

  package Blocks "Library of basic input/output control blocks (continuous, discrete, logical, table blocks)"
    import SI = Modelica.SIunits;
    extends Modelica.Icons.Package;

    package Continuous "Library of continuous control blocks with internal states"
      import Modelica.Blocks.Interfaces;
      import Modelica.SIunits;
      extends Modelica.Icons.Package;

      block Der "Derivative of input (= analytic differentiations)"
        extends Interfaces.SISO;
      equation
        y = der(u);
        annotation(defaultComponentName = "der1", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-96, 28}, {94, -24}}, textString = "der()", lineColor = {0, 0, 127})}), Documentation(info = "<HTML>
 <p>
 Defines that the output y is the <i>derivative</i>
 of the input u. Note, that Modelica.Blocks.Continuous.Derivative
 computes the derivative in an approximate sense, where as this block computes
 the derivative exactly. This requires that the input u is differentiated
 by the Modelica translator, if this derivative is not yet present in
 the model.
 </p>
 </HTML>"));
      end Der;
      annotation(Documentation(info = "<html>
 <p>
 This package contains basic <b>continuous</b> input/output blocks
 described by differential equations.
 </p>
 
 <p>
 All blocks of this package can be initialized in different
 ways controlled by parameter <b>initType</b>. The possible
 values of initType are defined in
 <a href=\"modelica://Modelica.Blocks.Types.Init\">Modelica.Blocks.Types.Init</a>:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"><b>Name</b></td>
       <td valign=\"top\"><b>Description</b></td></tr>
 
   <tr><td valign=\"top\"><b>Init.NoInit</b></td>
       <td valign=\"top\">no initialization (start values are used as guess values with fixed=false)</td></tr>
 
   <tr><td valign=\"top\"><b>Init.SteadyState</b></td>
       <td valign=\"top\">steady state initialization (derivatives of states are zero)</td></tr>
 
   <tr><td valign=\"top\"><b>Init.InitialState</b></td>
       <td valign=\"top\">Initialization with initial states</td></tr>
 
   <tr><td valign=\"top\"><b>Init.InitialOutput</b></td>
       <td valign=\"top\">Initialization with initial outputs (and steady state of the states if possible)</td></tr>
 </table>
 
 <p>
 For backward compatibility reasons the default of all blocks is
 <b>Init.NoInit</b>, with the exception of Integrator and LimIntegrator
 where the default is <b>Init.InitialState</b> (this was the initialization
 defined in version 2.2 of the Modelica standard library).
 </p>
 
 <p>
 In many cases, the most useful initial condition is
 <b>Init.SteadyState</b> because initial transients are then no longer
 present. The drawback is that in combination with a non-linear
 plant, non-linear algebraic equations occur that might be
 difficult to solve if appropriate guess values for the
 iteration variables are not provided (i.e., start values with fixed=false).
 However, it is often already useful to just initialize
 the linear blocks from the Continuous blocks library in SteadyState.
 This is uncritical, because only linear algebraic equations occur.
 If Init.NoInit is set, then the start values for the states are
 interpreted as <b>guess</b> values and are propagated to the
 states with fixed=<b>false</b>.
 </p>
 
 <p>
 Note, initialization with Init.SteadyState is usually difficult
 for a block that contains an integrator
 (Integrator, LimIntegrator, PI, PID, LimPID).
 This is due to the basic equation of an integrator:
 </p>
 
 <pre>
   <b>initial equation</b>
      <b>der</b>(y) = 0;   // Init.SteadyState
   <b>equation</b>
      <b>der</b>(y) = k*u;
 </pre>
 
 <p>
 The steady state equation leads to the condition that the input to the
 integrator is zero. If the input u is already (directly or indirectly) defined
 by another initial condition, then the initialization problem is <b>singular</b>
 (has none or infinitely many solutions). This situation occurs often
 for mechanical systems, where, e.g., u = desiredSpeed - measuredSpeed and
 since speed is both a state and a derivative, it is always defined by
 Init.InitialState or Init.SteadyState initialization.
 </p>
 
 <p>
 In such a case, <b>Init.NoInit</b> has to be selected for the integrator
 and an additional initial equation has to be added to the system
 to which the integrator is connected. E.g., useful initial conditions
 for a 1-dim. rotational inertia controlled by a PI controller are that
 <b>angle</b>, <b>speed</b>, and <b>acceleration</b> of the inertia are zero.
 </p>
 
 </html>"), Icon(graphics = {Line(origin = {0.061, 4.184}, points = {{81.93899999999999, 36.056}, {65.36199999999999, 36.056}, {14.39, -26.199}, {-29.966, 113.485}, {-65.374, -61.217}, {-78.06100000000001, -78.184}}, color = {95, 95, 95}, smooth = Smooth.Bezier)}));
    end Continuous;

    package Interfaces "Library of connectors and partial models for input/output blocks"
      import Modelica.SIunits;
      extends Modelica.Icons.InterfacesPackage;
      connector RealInput = input Real "'input Real' as connector" annotation(defaultComponentName = "u", Icon(graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {0, 0, 127}, fillPattern = FillPattern.Solid, points = {{-100.0, 100.0}, {100.0, 0.0}, {-100.0, -100.0}})}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.2)), Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {0, 0, 127}, fillPattern = FillPattern.Solid, points = {{0.0, 50.0}, {100.0, 0.0}, {0.0, -50.0}, {0.0, 50.0}}), Text(lineColor = {0, 0, 127}, extent = {{-10.0, 60.0}, {-10.0, 85.0}}, textString = "%name")}), Documentation(info = "<html>
         <p>
         Connector with one input signal of type Real.
         </p>
         </html>"));
      connector RealOutput = output Real "'output Real' as connector" annotation(defaultComponentName = "y", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100.0, 100.0}, {100.0, 0.0}, {-100.0, -100.0}})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100.0, 50.0}, {0.0, 0.0}, {-100.0, -50.0}}), Text(lineColor = {0, 0, 127}, extent = {{30.0, 60.0}, {30.0, 110.0}}, textString = "%name")}), Documentation(info = "<html>
         <p>
         Connector with one output signal of type Real.
         </p>
         </html>"));

      partial block SO "Single Output continuous control block"
        extends Modelica.Blocks.Icons.Block;
        RealOutput y "Connector of Real output signal" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
        annotation(Documentation(info = "<html>
 <p>
 Block has one continuous Real output signal.
 </p>
 </html>"));
      end SO;

      partial block SISO "Single Input Single Output continuous control block"
        extends Modelica.Blocks.Icons.Block;
        RealInput u "Connector of Real input signal" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
        RealOutput y "Connector of Real output signal" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
        annotation(Documentation(info = "<html>
 <p>
 Block has one continuous Real input and one continuous Real output signal.
 </p>
 </html>"));
      end SISO;

      partial block SI2SO "2 Single Input / 1 Single Output continuous control block"
        extends Modelica.Blocks.Icons.Block;
        RealInput u1 "Connector of Real input signal 1" annotation(Placement(transformation(extent = {{-140, 40}, {-100, 80}}, rotation = 0)));
        RealInput u2 "Connector of Real input signal 2" annotation(Placement(transformation(extent = {{-140, -80}, {-100, -40}}, rotation = 0)));
        RealOutput y "Connector of Real output signal" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
        annotation(Documentation(info = "<html>
 <p>
 Block has two continuous Real input signals u1 and u2 and one
 continuous Real output signal y.
 </p>
 </html>"));
      end SI2SO;
      annotation(Documentation(info = "<HTML>
 <p>
 This package contains interface definitions for
 <b>continuous</b> input/output blocks with Real,
 Integer and Boolean signals. Furthermore, it contains
 partial models for continuous and discrete blocks.
 </p>
 
 </html>", revisions = "<html>
 <ul>
 <li><i>Oct. 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        Added several new interfaces.
 <li><i>Oct. 24, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        RealInputSignal renamed to RealInput. RealOutputSignal renamed to
        output RealOutput. GraphBlock renamed to BlockIcon. SISOreal renamed to
        SISO. SOreal renamed to SO. I2SOreal renamed to M2SO.
        SignalGenerator renamed to SignalSource. Introduced the following
        new models: MIMO, MIMOs, SVcontrol, MVcontrol, DiscreteBlockIcon,
        DiscreteBlock, DiscreteSISO, DiscreteMIMO, DiscreteMIMOs,
        BooleanBlockIcon, BooleanSISO, BooleanSignalSource, MI2BooleanMOs.</li>
 <li><i>June 30, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized a first version, based on an existing Dymola library
        of Dieter Moormann and Hilding Elmqvist.</li>
 </ul>
 </html>"));
    end Interfaces;

    package Math "Library of Real mathematical functions as input/output blocks"
      import Modelica.SIunits;
      import Modelica.Blocks.Interfaces;
      extends Modelica.Icons.Package;

      block Add "Output the sum of the two inputs"
        extends Interfaces.SI2SO;
        parameter Real k1 = +1 "Gain of upper input";
        parameter Real k2 = +1 "Gain of lower input";
      equation
        y = k1 * u1 + k2 * u2;
        annotation(Documentation(info = "<html>
 <p>
 This blocks computes output <b>y</b> as <i>sum</i> of the
 two input signals <b>u1</b> and <b>u2</b>:
 </p>
 <pre>
     <b>y</b> = k1*<b>u1</b> + k2*<b>u2</b>;
 </pre>
 <p>
 Example:
 </p>
 <pre>
      parameter:   k1= +2, k2= -3
 
   results in the following equations:
 
      y = 2 * u1 - 3 * u2
 </pre>
 
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1), graphics = {Text(lineColor = {0, 0, 255}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(points = {{-100, 60}, {-74, 24}, {-44, 24}}, color = {0, 0, 127}), Line(points = {{-100, -60}, {-74, -28}, {-42, -28}}, color = {0, 0, 127}), Ellipse(lineColor = {0, 0, 127}, extent = {{-50, -50}, {50, 50}}), Line(points = {{50, 0}, {100, 0}}, color = {0, 0, 127}), Text(extent = {{-38, -34}, {38, 34}}, textString = "+"), Text(extent = {{-100, 52}, {5, 92}}, textString = "%k1"), Text(extent = {{-100, -92}, {5, -52}}, textString = "%k2")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{50, 0}, {100, 0}}, color = {0, 0, 255}), Line(points = {{-100, 60}, {-74, 24}, {-44, 24}}, color = {0, 0, 127}), Line(points = {{-100, -60}, {-74, -28}, {-42, -28}}, color = {0, 0, 127}), Ellipse(extent = {{-50, 50}, {50, -50}}, lineColor = {0, 0, 127}), Line(points = {{50, 0}, {100, 0}}, color = {0, 0, 127}), Text(extent = {{-36, 38}, {40, -30}}, lineColor = {0, 0, 0}, textString = "+"), Text(extent = {{-100, 52}, {5, 92}}, lineColor = {0, 0, 0}, textString = "k1"), Text(extent = {{-100, -52}, {5, -92}}, lineColor = {0, 0, 0}, textString = "k2")}));
      end Add;
      annotation(Documentation(info = "<html>
 <p>
 This package contains basic <b>mathematical operations</b>,
 such as summation and multiplication, and basic <b>mathematical
 functions</b>, such as <b>sqrt</b> and <b>sin</b>, as
 input/output blocks. All blocks of this library can be either
 connected with continuous blocks or with sampled-data blocks.
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>October 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        New blocks added: RealToInteger, IntegerToReal, Max, Min, Edge, BooleanChange, IntegerChange.</li>
 <li><i>August 7, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized (partly based on an existing Dymola library
        of Dieter Moormann and Hilding Elmqvist).
 </li>
 </ul>
 </html>"), Icon(graphics = {Line(points = {{-80, -2}, {-68.7, 32.2}, {-61.5, 51.1}, {-55.1, 64.40000000000001}, {-49.4, 72.59999999999999}, {-43.8, 77.09999999999999}, {-38.2, 77.8}, {-32.6, 74.59999999999999}, {-26.9, 67.7}, {-21.3, 57.4}, {-14.9, 42.1}, {-6.83, 19.2}, {10.1, -32.8}, {17.3, -52.2}, {23.7, -66.2}, {29.3, -75.09999999999999}, {35, -80.40000000000001}, {40.6, -82}, {46.2, -79.59999999999999}, {51.9, -73.5}, {57.5, -63.9}, {63.9, -49.2}, {72, -26.8}, {80, -2}}, color = {95, 95, 95}, smooth = Smooth.Bezier)}));
    end Math;

    package Sources "Library of signal source blocks generating Real and Boolean signals"
      import Modelica.Blocks.Interfaces;
      import Modelica.SIunits;
      extends Modelica.Icons.SourcesPackage;

      block Constant "Generate constant signal of type Real"
        parameter Real k(start = 1) "Constant output value";
        extends Interfaces.SO;
      equation
        y = k;
        annotation(defaultComponentName = "const", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 68}, {-80, -80}}, color = {192, 192, 192}), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-90, -70}, {82, -70}}, color = {192, 192, 192}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {80, 0}}, color = {0, 0, 0}), Text(extent = {{-150, -150}, {150, -110}}, lineColor = {0, 0, 0}, textString = "k=%k")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-80, 0}, {80, 0}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-83, 92}, {-30, 74}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{70, -80}, {94, -100}}, lineColor = {0, 0, 0}, textString = "time"), Text(extent = {{-101, 8}, {-81, -12}}, lineColor = {0, 0, 0}, textString = "k")}), Documentation(info = "<html>
 <p>
 The Real output y is a constant signal:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/Constant.png\"
      alt=\"Constant.png\">
 </p>
 </html>"));
      end Constant;

      block Ramp "Generate ramp signal"
        parameter Real height = 1 "Height of ramps";
        parameter Modelica.SIunits.Time duration(min = 0.0, start = 2) "Duration of ramp (= 0.0 gives a Step)";
        parameter Real offset = 0 "Offset of output signal";
        parameter Modelica.SIunits.Time startTime = 0 "Output = offset for time < startTime";
        extends Interfaces.SO;
      equation
        y = offset + (if time < startTime then 0 else if time < startTime + duration then (time - startTime) * height / duration else height);
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 68}, {-80, -80}}, color = {192, 192, 192}), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-90, -70}, {82, -70}}, color = {192, 192, 192}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -70}, {-40, -70}, {31, 38}}, color = {0, 0, 0}), Text(extent = {{-150, -150}, {150, -110}}, lineColor = {0, 0, 0}, textString = "duration=%duration"), Line(points = {{31, 38}, {86, 38}}, color = {0, 0, 0})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-80, -20}, {-20, -20}, {50, 50}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-40, -20}, {-42, -30}, {-38, -30}, {-40, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-40, -20}, {-40, -70}}, color = {95, 95, 95}, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Polygon(points = {{-40, -70}, {-42, -60}, {-38, -60}, {-40, -70}, {-40, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-72, -39}, {-34, -50}}, lineColor = {0, 0, 0}, textString = "offset"), Text(extent = {{-38, -72}, {6, -83}}, lineColor = {0, 0, 0}, textString = "startTime"), Text(extent = {{-78, 92}, {-37, 72}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{70, -80}, {94, -91}}, lineColor = {0, 0, 0}, textString = "time"), Line(points = {{-20, -20}, {-20, -70}}, color = {95, 95, 95}), Line(points = {{-19, -20}, {50, -20}}, color = {95, 95, 95}, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{50, 50}, {101, 50}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{50, 50}, {50, -20}}, color = {95, 95, 95}, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Polygon(points = {{50, -20}, {42, -18}, {42, -22}, {50, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-20, -20}, {-11, -18}, {-11, -22}, {-20, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{50, 50}, {48, 40}, {52, 40}, {50, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{50, -20}, {48, -10}, {52, -10}, {50, -20}, {50, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{53, 23}, {82, 10}}, lineColor = {0, 0, 0}, textString = "height"), Text(extent = {{-2, -21}, {37, -33}}, lineColor = {0, 0, 0}, textString = "duration")}), Documentation(info = "<html>
 <p>
 The Real output y is a ramp signal:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/Ramp.png\"
      alt=\"Ramp.png\">
 </p>
 
 <p>
 If parameter duration is set to 0.0, the limiting case of a Step signal is achieved.
 </p>
 </html>"));
      end Ramp;
      annotation(Documentation(info = "<HTML>
 <p>
 This package contains <b>source</b> components, i.e., blocks which
 have only output signals. These blocks are used as signal generators
 for Real, Integer and Boolean signals.
 </p>
 
 <p>
 All Real source signals (with the exception of the Constant source)
 have at least the following two parameters:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"><b>offset</b></td>
       <td valign=\"top\">Value which is added to the signal</td>
   </tr>
   <tr><td valign=\"top\"><b>startTime</b></td>
       <td valign=\"top\">Start time of signal. For time &lt; startTime,
                 the output y is set to offset.</td>
   </tr>
 </table>
 
 <p>
 The <b>offset</b> parameter is especially useful in order to shift
 the corresponding source, such that at initial time the system
 is stationary. To determine the corresponding value of offset,
 usually requires a trimming calculation.
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>October 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        Integer sources added. Step, TimeTable and BooleanStep slightly changed.</li>
 <li><i>Nov. 8, 1999</i>
        by <a href=\"mailto:clauss@eas.iis.fhg.de\">Christoph Clau&szlig;</a>,
        <a href=\"mailto:Andre.Schneider@eas.iis.fraunhofer.de\">Andre.Schneider@eas.iis.fraunhofer.de</a>,
        <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        New sources: Exponentials, TimeTable. Trapezoid slightly enhanced
        (nperiod=-1 is an infinite number of periods).</li>
 <li><i>Oct. 31, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        <a href=\"mailto:clauss@eas.iis.fhg.de\">Christoph Clau&szlig;</a>,
        <a href=\"mailto:Andre.Schneider@eas.iis.fraunhofer.de\">Andre.Schneider@eas.iis.fraunhofer.de</a>,
        All sources vectorized. New sources: ExpSine, Trapezoid,
        BooleanConstant, BooleanStep, BooleanPulse, SampleTrigger.
        Improved documentation, especially detailed description of
        signals in diagram layer.</li>
 <li><i>June 29, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized a first version, based on an existing Dymola library
        of Dieter Moormann and Hilding Elmqvist.</li>
 </ul>
 </html>"));
    end Sources;

    package Icons "Icons for Blocks"
      extends Modelica.Icons.IconsPackage;

      partial block Block "Basic graphical layout of input/output block"
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
 <p>
 Block that has only the basic icon for an input/output
 block (no declarations, no equations). Most blocks
 of package Modelica.Blocks inherit directly or indirectly
 from this block.
 </p>
 </html>"));
      end Block;
    end Icons;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(origin = {0.0, 35.1488}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Rectangle(origin = {0.0, -34.8512}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Line(origin = {-51.25, 0.0}, points = {{21.25, -35.0}, {-13.75, -35.0}, {-13.75, 35.0}, {6.25, 35.0}}), Polygon(origin = {-40.0, 35.0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{10.0, 0.0}, {-5.0, 5.0}, {-5.0, -5.0}}), Line(origin = {51.25, 0.0}, points = {{-21.25, 35.0}, {13.75, 35.0}, {13.75, -35.0}, {-6.25, -35.0}}), Polygon(origin = {40.0, -35.0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10.0, 0.0}, {5.0, 5.0}, {5.0, -5.0}})}), Documentation(info = "<html>
 <p>
 This library contains input/output blocks to build up block diagrams.
 </p>
 
 <dl>
 <dt><b>Main Author:</b>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e. V. (DLR)<br>
     Oberpfaffenhofen<br>
     Postfach 1116<br>
     D-82230 Wessling<br>
     email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
 </dl>
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>June 23, 2004</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Introduced new block connectors and adapted all blocks to the new connectors.
        Included subpackages Continuous, Discrete, Logical, Nonlinear from
        package ModelicaAdditions.Blocks.
        Included subpackage ModelicaAdditions.Table in Modelica.Blocks.Sources
        and in the new package Modelica.Blocks.Tables.
        Added new blocks to Blocks.Sources and Blocks.Logical.
        </li>
 <li><i>October 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        New subpackage Examples, additional components.
        </li>
 <li><i>June 20, 2000</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and
        Michael Tiller:<br>
        Introduced a replaceable signal type into
        Blocks.Interfaces.RealInput/RealOutput:
 <pre>
    replaceable type SignalType = Real
 </pre>
        in order that the type of the signal of an input/output block
        can be changed to a physical type, for example:
 <pre>
    Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))
 </pre>
       </li>
 <li><i>Sept. 18, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Renamed to Blocks. New subpackages Math, Nonlinear.
        Additional components in subpackages Interfaces, Continuous
        and Sources. </li>
 <li><i>June 30, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized a first version, based on an existing Dymola library
        of Dieter Moormann and Hilding Elmqvist.</li>
 </ul>
 </html>"));
  end Blocks;

  package Mechanics "Library of 1-dim. and 3-dim. mechanical components (multi-body, rotational, translational)"
    extends Modelica.Icons.Package;

    package MultiBody "Library to model 3-dimensional mechanical systems"
      extends Modelica.Icons.Package;
      import SI = Modelica.SIunits;
      import Cv = Modelica.SIunits.Conversions;
      import C = Modelica.Constants;

      model World "World coordinate system + gravity field + default animation definition"
        import Modelica.Mechanics.MultiBody.Types.GravityTypes;
        import Modelica.Mechanics.MultiBody.Types;
        Interfaces.Frame_b frame_b "Coordinate system fixed in the origin of the world frame" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
        parameter Boolean enableAnimation = true "= true, if animation of all components is enabled";
        parameter Boolean animateWorld = true "= true, if world coordinate system shall be visualized" annotation(Dialog(enable = enableAnimation));
        parameter Boolean animateGravity = true "= true, if gravity field shall be visualized (acceleration vector or field center)" annotation(Dialog(enable = enableAnimation));
        parameter Types.AxisLabel label1 = "x" "Label of horizontal axis in icon";
        parameter Types.AxisLabel label2 = "y" "Label of vertical axis in icon";
        parameter Types.GravityTypes gravityType = GravityTypes.UniformGravity "Type of gravity field" annotation(Evaluate = true);
        parameter SI.Acceleration g = 9.81 "Constant gravity acceleration" annotation(Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity));
        parameter Types.Axis n = {0, -1, 0} "Direction of gravity resolved in world frame (gravity = g*n/length(n))" annotation(Evaluate = true, Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity));
        parameter Real mue(unit = "m3/s2", min = 0) = 398600000000000.0 "Gravity field constant (default = field constant of earth)" annotation(Dialog(enable = gravityType == Modelica.Mechanics.MultiBody.Types.GravityTypes.PointGravity));
        parameter Boolean driveTrainMechanics3D = true "= true, if 3-dim. mechanical effects of Parts.Mounting1D/Rotor1D/BevelGear1D shall be taken into account";
        parameter SI.Distance axisLength = nominalLength / 2 "Length of world axes arrows" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
        parameter SI.Distance axisDiameter = axisLength / defaultFrameDiameterFraction "Diameter of world axes arrows" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
        parameter Boolean axisShowLabels = true "= true, if labels shall be shown" annotation(Dialog(tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
        input Types.Color axisColor_x = Modelica.Mechanics.MultiBody.Types.Defaults.FrameColor "Color of x-arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
        input Types.Color axisColor_y = axisColor_x annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
        input Types.Color axisColor_z = axisColor_x "Color of z-arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateWorld = true", enable = enableAnimation and animateWorld));
        parameter SI.Position gravityArrowTail[3] = {0, 0, 0} "Position vector from origin of world frame to arrow tail, resolved in world frame" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
        parameter SI.Length gravityArrowLength = axisLength / 2 "Length of gravity arrow" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
        parameter SI.Diameter gravityArrowDiameter = gravityArrowLength / defaultWidthFraction "Diameter of gravity arrow" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
        input Types.Color gravityArrowColor = {0, 230, 0} "Color of gravity arrow" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateGravity = true and gravityType = UniformGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity));
        parameter SI.Diameter gravitySphereDiameter = 12742000 "Diameter of sphere representing gravity center (default = mean diameter of earth)" annotation(Dialog(tab = "Animation", group = "if animateGravity = true and gravityType = PointGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity));
        input Types.Color gravitySphereColor = {0, 230, 0} "Color of gravity sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateGravity = true and gravityType = PointGravity", enable = enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity));
        parameter SI.Length nominalLength = 1 "\"Nominal\" length of multi-body system" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultAxisLength = nominalLength / 5 "Default for length of a frame axis (but not world frame)" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultJointLength = nominalLength / 10 "Default for the fixed length of a shape representing a joint" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultJointWidth = nominalLength / 20 "Default for the fixed width of a shape representing a joint" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultForceLength = nominalLength / 10 "Default for the fixed length of a shape representing a force (e.g., damper)" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultForceWidth = nominalLength / 20 "Default for the fixed width of a shape representing a force (e.g., spring, bushing)" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultBodyDiameter = nominalLength / 9 "Default for diameter of sphere representing the center of mass of a body" annotation(Dialog(tab = "Defaults"));
        parameter Real defaultWidthFraction = 20 "Default for shape width as a fraction of shape length (e.g., for Parts.FixedTranslation)" annotation(Dialog(tab = "Defaults"));
        parameter SI.Length defaultArrowDiameter = nominalLength / 40 "Default for arrow diameter (e.g., of forces, torques, sensors)" annotation(Dialog(tab = "Defaults"));
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
          input SI.Position r[3] "Position vector from world frame to actual point, resolved in world frame";
          input GravityTypes gravityType "Type of gravity field";
          input SI.Acceleration g[3] "Constant gravity acceleration, resolved in world frame, if gravityType=1";
          input Real mue(unit = "m3/s2") "Field constant of point gravity field, if gravityType=2";
          output SI.Acceleration gravity[3] "Gravity acceleration at point r, resolved in world frame";
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
      protected
        parameter Integer ndim = if enableAnimation and animateWorld then 1 else 0;
        parameter Integer ndim2 = if enableAnimation and animateWorld and axisShowLabels then 1 else 0;
        // Parameters to define axes
        parameter SI.Length headLength = min(axisLength, axisDiameter * Types.Defaults.FrameHeadLengthFraction);
        parameter SI.Length headWidth = axisDiameter * Types.Defaults.FrameHeadWidthFraction;
        parameter SI.Length lineLength = max(0, axisLength - headLength);
        parameter SI.Length lineWidth = axisDiameter;
        // Parameters to define axes labels
        parameter SI.Length scaledLabel = Modelica.Mechanics.MultiBody.Types.Defaults.FrameLabelHeightFraction * axisDiameter;
        parameter SI.Length labelStart = 1.05 * axisLength;
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
        parameter SI.Length gravityHeadLength = min(gravityArrowLength, gravityArrowDiameter * Types.Defaults.ArrowHeadLengthFraction);
        parameter SI.Length gravityHeadWidth = gravityArrowDiameter * Types.Defaults.ArrowHeadWidthFraction;
        parameter SI.Length gravityLineLength = max(0, gravityArrowLength - gravityHeadLength);
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
 drag Modelica.Mechanics.MultiBody.World into the top level of your model.", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, -118}, {-100, 61}}, color = {0, 0, 0}, thickness = 0.5), Polygon(points = {{-100, 100}, {-120, 60}, {-80, 60}, {-100, 100}, {-100, 100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-119, -100}, {59, -100}}, color = {0, 0, 0}, thickness = 0.5), Polygon(points = {{99, -100}, {59, -80}, {59, -120}, {99, -100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 145}, {150, 105}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{95, -113}, {144, -162}}, lineColor = {0, 0, 0}, textString = "%label1"), Text(extent = {{-170, 127}, {-119, 77}}, lineColor = {0, 0, 0}, textString = "%label2"), Line(points = {{-56, 78}, {-56, -26}}, color = {0, 0, 255}), Polygon(points = {{-68, -26}, {-56, -66}, {-44, -26}, {-68, -26}}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{2, 78}, {2, -26}}, color = {0, 0, 255}), Polygon(points = {{-10, -26}, {2, -66}, {14, -26}, {-10, -26}}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{66, 80}, {66, -26}}, color = {0, 0, 255}), Polygon(points = {{54, -26}, {66, -66}, {78, -26}, {54, -26}}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255})}), Documentation(info = "<HTML>
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
      end World;

      package Forces "Components that exert forces and/or torques between frames"
        extends Modelica.Icons.SourcesPackage;

        model WorldForce "External force acting at frame_b, defined by 3 input signals and resolved in frame world, frame_b or frame_resolve"
          extends Interfaces.PartialOneFrame_b;
          Interfaces.Frame_resolve frame_resolve if resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve "The input signals are optionally resolved in this frame" annotation(Placement(transformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 270)));
          Modelica.Blocks.Interfaces.RealInput force[3](each final quantity = "Force", each final unit = "N") "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world "Frame in which input force is resolved (1: world, 2: frame_b, 3: frame_resolve)";
          parameter Real N_to_m(unit = "N/m") = world.defaultN_to_m "Force arrow scaling (length = force/N_to_m)" annotation(Dialog(group = "if animation = true", enable = animation));
          input SI.Diameter diameter = world.defaultArrowDiameter "Diameter of force arrow" annotation(Dialog(group = "if animation = true", enable = animation));
          input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor "Color of arrow" annotation(Dialog(colorSelector = true, group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(group = "if animation = true", enable = animation));
        protected
          SI.Position f_in_m[3] = frame_b.f / N_to_m "Force mapped from N to m for animation";
          Visualizers.Advanced.Arrow arrow(diameter = diameter, color = color, specularCoefficient = specularCoefficient, R = frame_b.R, r = frame_b.r_0, r_tail = f_in_m, r_head = -f_in_m) if world.enableAnimation and animation;
        public
          Internal.BasicWorldForce basicWorldForce(resolveInFrame = resolveInFrame) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        protected
          Interfaces.ZeroPosition zeroPosition if not resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve annotation(Placement(transformation(extent = {{20, -40}, {40, -20}})));
        equation
          connect(basicWorldForce.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(basicWorldForce.force, force) annotation(Line(points = {{-12, 0}, {-120, 0}}, color = {0, 0, 127}, smooth = Smooth.None));
          connect(basicWorldForce.frame_resolve, frame_resolve) annotation(Line(points = {{0, -10}, {0, -100}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          connect(zeroPosition.frame_resolve, basicWorldForce.frame_resolve) annotation(Line(points = {{20, -30}, {0, -30}, {0, -10}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          annotation(defaultComponentName = "force", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-100, -46}, {100, -76}}, lineColor = {192, 192, 192}, textString = "resolve"), Polygon(points = {{-100, 10}, {50, 10}, {50, 31}, {94, 0}, {50, -31}, {50, -10}, {-100, -10}, {-100, 10}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 85}, {150, 45}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{0, -10}, {0, -95}}, color = {95, 95, 95}, pattern = LinePattern.Dot)}), Documentation(info = "<HTML>
 
 <p>
 The <b>3</b> signals of the <b>force</b> connector are interpreted
 as the x-, y- and z-coordinates of a <b>force</b> acting at the frame
 connector to which frame_b of this component is attached.
 Via parameter <b>resolveInFrame</b> it is defined, in which frame these
 coordinates shall be resolved:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
 <tr><th><b>Types.ResolveInFrameB.</b></th><th><b>Meaning</b></th></tr>
 <tr><td valign=\"top\">world</td>
     <td valign=\"top\">Resolve input force in world frame (= default)</td></tr>
 
 <tr><td valign=\"top\">frame_b</td>
     <td valign=\"top\">Resolve input force in frame_b</td></tr>
 
 <tr><td valign=\"top\">frame_resolve</td>
     <td valign=\"top\">Resolve input force in frame_resolve (frame_resolve must be connected)</td></tr>
 </table>
 
 <p>
 If resolveInFrame = Types.ResolveInFrameB.frame_resolve, the force coordinates
 are with respect to the frame, that is connected to <b>frame_resolve</b>.
 </p>
 
 <p>
 If force={100,0,0}, and for all parameters the default setting is used,
 then the interpretation is that a force of 100 N is acting along the positive
 x-axis of frame_b.
 </p>
 
 <p>
 Note, the cut-torque in frame_b (frame_b.t) is always set to zero.
 Conceptually, a force and torque acts on the world frame in such a way that
 the force and torque balance between world.frame_b and frame_b is fulfilled.
 For efficiency reasons, this reaction torque is, however, not computed.
 </p>
 
 <p>
 This force component is by default visualized as an arrow
 acting at the connector to which it is connected. The diameter
 and color of the arrow can be defined via
 variables <b>diameter</b> and <b>color</b>. The arrow
 points in the direction defined by the
 force signal. The length of the arrow is proportional
 to the length of the force vector using parameter
 <b>N_to_m</b> as scaling factor. For example, if N_to_m = 100 N/m,
 then a force of 350 N is displayed as an arrow of length 3.5 m.
 </p>
 <p>
 An example how to use this model is given in the
 following figure:
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/WorldForce1.png\">
 </p>
 
 <p>
 This leads to the following animation
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/WorldForce2.png\">
 </p>
 
 </html>"));
        end WorldForce;

        model LineForceWithMass "General line force component with an optional point mass on the connection line"
          import Modelica.Mechanics.MultiBody.Types;
          extends Interfaces.PartialTwoFrames;
          Modelica.Mechanics.Translational.Interfaces.Flange_a flange_b "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)" annotation(Placement(transformation(origin = {60, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
          Modelica.Mechanics.Translational.Interfaces.Flange_b flange_a "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)" annotation(Placement(transformation(origin = {-60, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
          parameter Boolean animateLine = true "= true, if a line shape between frame_a and frame_b shall be visualized";
          parameter Boolean animateMass = true "= true, if point mass shall be visualized as sphere provided m > 0";
          parameter SI.Mass m(min = 0) = 0 "Mass of point mass on the connection line between the origin of frame_a and the origin of frame_b";
          parameter Real lengthFraction(unit = "1", min = 0, max = 1) = 0.5 "Location of point mass with respect to frame_a as a fraction of the distance from frame_a to frame_b";
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation"));
          parameter Types.ShapeType lineShapeType = "cylinder" "Type of shape visualizing the line from frame_a to frame_b" annotation(Dialog(tab = "Animation", group = "if animateLine = true", enable = animateLine));
          input SI.Length lineShapeWidth = world.defaultArrowDiameter "Width of shape" annotation(Dialog(tab = "Animation", group = "if animateLine = true", enable = animateLine));
          input SI.Length lineShapeHeight = lineShapeWidth "Height of shape" annotation(Dialog(tab = "Animation", group = "if animateLine = true", enable = animateLine));
          parameter Types.ShapeExtra lineShapeExtra = 0.0 "Extra parameter for shape" annotation(Dialog(tab = "Animation", group = "if animateLine = true", enable = animateLine));
          input Types.Color lineShapeColor = Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor "Color of line shape" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateLine = true", enable = animateLine));
          input Real massDiameter = world.defaultBodyDiameter "Diameter of point mass sphere" annotation(Dialog(tab = "Animation", group = "if animateMass = true", enable = animateMass));
          input Types.Color massColor = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of point mass" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animateMass = true", enable = animateMass));
          parameter SI.Position s_small = 1e-10 "Prevent zero-division if distance between frame_a and frame_b is zero" annotation(Dialog(tab = "Advanced"));
          parameter Boolean fixedRotationAtFrame_a = false "=true, if rotation frame_a.R is fixed (to directly connect line forces)" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Advanced", group = "If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces"));
          parameter Boolean fixedRotationAtFrame_b = false "=true, if rotation frame_b.R is fixed (to directly connect line forces)" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Advanced", group = "If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces"));
          SI.Distance length "Distance between the origin of frame_a and the origin of frame_b";
          SI.Position r_rel_0[3] "Position vector from frame_a to frame_b resolved in world frame";
          Real e_rel_0[3](each final unit = "1") "Unit vector in direction from frame_a to frame_b, resolved in world frame";
        protected
          SI.Force fa "Force from flange_a";
          SI.Force fb "Force from flange_b";
          SI.Position r_CM_0[3](each stateSelect = StateSelect.avoid) "Position vector from world frame to point mass, resolved in world frame";
          SI.Velocity v_CM_0[3](each stateSelect = StateSelect.avoid) "First derivative of r_CM_0";
          SI.Acceleration ag_CM_0[3] "der(v_CM_0) - gravityAcceleration";
          Visualizers.Advanced.Shape lineShape(shapeType = lineShapeType, color = lineShapeColor, specularCoefficient = specularCoefficient, length = length, width = lineShapeWidth, height = lineShapeHeight, lengthDirection = e_rel_0, widthDirection = Frames.resolve1(frame_a.R, {0, 1, 0}), extra = lineShapeExtra, r = frame_a.r_0) if world.enableAnimation and animateLine;
          Visualizers.Advanced.Shape massShape(shapeType = "sphere", color = massColor, specularCoefficient = specularCoefficient, length = massDiameter, width = massDiameter, height = massDiameter, lengthDirection = e_rel_0, widthDirection = {0, 1, 0}, r_shape = e_rel_0 * (length * lengthFraction - massDiameter / 2), r = frame_a.r_0) if world.enableAnimation and animateMass and m > 0;
        equation
          assert(noEvent(length > s_small), "
          The distance between the origin of frame_a and the origin of frame_b
          of a LineForceWithMass component became smaller as parameter s_small
          (= a small number, defined in the \"Advanced\" menu). The distance is
          set to s_small, although it is smaller, to avoid a division by zero
          when computing the direction of the line force. Possible reasons
          for this situation:
          - At initial time the distance may already be zero: Change the initial
            positions of the bodies connected by this element.
          - Hardware stops are not modeled or are modeled not stiff enough.
            Include stops, e.g., stiff springs, or increase the stiffness
            if already present.
          - Another error in your model may lead to unrealistically large forces
            and torques that would in reality destroy the stops.
          - The flange_b connector might be defined by a pre-defined motion,
            e.g., with Modelica.Mechanics.Translational.Position and the
            predefined flange_b.s is zero or negative.
          ");
          // Determine relative position vector between the two frames
          r_rel_0 = frame_b.r_0 - frame_a.r_0;
          length = Modelica.Math.Vectors.length(r_rel_0);
          flange_a.s = 0;
          flange_b.s = length;
          e_rel_0 = r_rel_0 / Frames.Internal.maxWithoutEvent(length, s_small);
          // Determine translational flange forces
          if cardinality(flange_a) > 0 and cardinality(flange_b) > 0 then
            fa = flange_a.f;
            fb = flange_b.f;
          elseif cardinality(flange_a) > 0 and cardinality(flange_b) == 0 then
            fa = flange_a.f;
            fb = -fa;
          elseif cardinality(flange_a) == 0 and cardinality(flange_b) > 0 then
            fa = -fb;
            fb = flange_b.f;
          else
            fa = 0;
            fb = 0;
          end if;
          /* Force and torque balance of point mass
               - Kinematics for center of mass CM of point mass including gravity
                 r_CM_0 = frame_a.r0 + r_rel_CM_0;
                 v_CM_0 = der(r_CM_0);
                 ag_CM_0 = der(v_CM_0) - world.gravityAcceleration(r_CM_0);
               - Power balance for the connection line
                 (f1=force on frame_a side, f2=force on frame_b side, h=lengthFraction)
                 0 = f1*va - m*ag_CM*(va+(vb-va)*h) + f2*vb
                   = (f1 - m*ag_CM*(1-h))*va + (f2 - m*ag_CM*h)*vb
                 since va and vb are completely independent from other
                 the parenthesis must vanish:
                   f1 := m*ag_CM*(1-h)
                   f2 := m*ag_CM*h
               - Force balance on frame_a and frame_b finally results in
                   0 = frame_a.f + e_rel_a*fa - f1_a
                   0 = frame_b.f + e_rel_b*fb - f2_b
                 and therefore
                   frame_a.f = -e_rel_a*fa + m*ag_CM_a*(1-h)
                   frame_b.f = -e_rel_b*fb + m*ag_CM_b*h
            */
          if m > 0 then
            r_CM_0 = frame_a.r_0 + r_rel_0 * lengthFraction;
            v_CM_0 = der(r_CM_0);
            ag_CM_0 = der(v_CM_0) - world.gravityAcceleration(r_CM_0);
            frame_a.f = Frames.resolve2(frame_a.R, m * (1 - lengthFraction) * ag_CM_0 - e_rel_0 * fa);
            frame_b.f = Frames.resolve2(frame_b.R, m * lengthFraction * ag_CM_0 - e_rel_0 * fb);
          else
            r_CM_0 = zeros(3);
            v_CM_0 = zeros(3);
            ag_CM_0 = zeros(3);
            frame_a.f = -Frames.resolve2(frame_a.R, e_rel_0 * fa);
            frame_b.f = -Frames.resolve2(frame_b.R, e_rel_0 * fb);
          end if;
          // Provide appropriate equations, if direct connections of line forces
          if fixedRotationAtFrame_a then
            Connections.root(frame_a.R);
            frame_a.R = Frames.nullRotation();
          else
            frame_a.t = zeros(3);
          end if;
          if fixedRotationAtFrame_b then
            Connections.root(frame_b.R);
            frame_b.R = Frames.nullRotation();
          else
            frame_b.t = zeros(3);
          end if;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-95, -40}, {-15, 40}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Ellipse(extent = {{-85, -30}, {-25, 30}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{15, -40}, {95, 40}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Ellipse(extent = {{23, -30}, {83, 29}}, lineColor = {128, 128, 128}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -55}, {150, -95}}, textString = "%name", lineColor = {0, 0, 255}), Rectangle(extent = {{-40, 41}, {44, -40}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-70, 15}, {-41, -13}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Ellipse(extent = {{40, 14}, {69, -14}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Line(points = {{-56, 0}, {-56, 23}, {-30, 23}, {-30, 70}, {-60, 70}, {-60, 101}}, color = {0, 0, 0}), Line(points = {{55, -1}, {55, 20}, {30, 20}, {30, 70}, {60, 70}, {60, 100}}, color = {0, 0, 0}), Line(points = {{-56, 0}, {55, -1}}, color = {0, 0, 0}, pattern = LinePattern.Dot), Ellipse(extent = {{-8, 8}, {8, -8}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(visible = fixedRotationAtFrame_a, extent = {{-70, 30}, {-130, -30}}, lineColor = {255, 0, 0}), Text(visible = fixedRotationAtFrame_a, extent = {{-62, 50}, {-140, 30}}, lineColor = {255, 0, 0}, textString = "R=0"), Ellipse(visible = fixedRotationAtFrame_b, extent = {{70, 30}, {130, -30}}, lineColor = {255, 0, 0}), Text(visible = fixedRotationAtFrame_b, extent = {{62, 50}, {140, 30}}, lineColor = {255, 0, 0}, textString = "R=0")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-60, 80}, {46, 80}}, color = {0, 0, 255}), Polygon(points = {{60, 80}, {45, 86}, {45, 74}, {60, 80}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-50, 93}, {32, 78}}, textString = "length", lineColor = {0, 0, 255}), Ellipse(extent = {{-100, -40}, {-20, 40}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Ellipse(extent = {{-90, -30}, {-30, 30}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{20, -40}, {100, 40}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Ellipse(extent = {{31, -29}, {91, 30}}, lineColor = {128, 128, 128}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 39}, {50, -41}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-74, 15}, {-45, -13}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Ellipse(extent = {{45, 15}, {74, -13}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.Sphere, fillColor = {192, 192, 192}), Line(points = {{-60, 0}, {-60, 24}, {-40, 24}, {-40, 60}, {-60, 60}, {-60, 100}}, color = {0, 0, 0}), Line(points = {{60, 1}, {60, 21}, {40, 21}, {40, 60}, {60, 60}, {60, 100}}, color = {0, 0, 0}), Line(points = {{-60, 0}, {60, 0}}, color = {0, 0, 0}, pattern = LinePattern.Dot), Ellipse(extent = {{-8, 8}, {8, -8}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-60, 0}, {-31, 0}}, color = {0, 0, 255}), Polygon(points = {{-19, 0}, {-31, 3}, {-31, -3}, {-19, 0}}, lineColor = {0, 0, 255}), Line(points = {{-60, 16}, {0, 16}}, color = {0, 0, 255}), Line(points = {{0, 0}, {0, 20}}, color = {0, 0, 255}), Text(extent = {{-49, -11}, {-8, -21}}, lineColor = {0, 0, 0}, textString = "e_rel_0"), Polygon(points = {{0, 16}, {-12, 19}, {-12, 13}, {0, 16}}, lineColor = {0, 0, 255}), Text(extent = {{-50, 35}, {51, 26}}, lineColor = {0, 0, 0}, textString = "length*lengthFraction"), Line(points = {{-17, 26}, {-26, 16}}, pattern = LinePattern.Dot, color = {0, 0, 255}), Line(points = {{-31, -13}, {-40, 0}}, pattern = LinePattern.Dot, color = {0, 0, 255})}), Documentation(info = "<html>
 <p>
 This component is used to exert a <b>line force</b>
 between the origin of frame_a and the origin of frame_b
 by attaching components of the <b>1-dimensional translational</b>
 mechanical library of Modelica (Modelica.Mechanics.Translational)
 between the two flange connectors <b>flange_a</b> and
 <b>flange_b</b>. Optionally, there is a <b>point mass</b> on the line
 connecting the origin of frame_a and the origin of frame_b.
 This point mass approximates the <b>mass</b> of the <b>force element</b>.
 The distance of the point mass from frame_a as a fraction of the
 distance between frame_a and frame_b is defined via
 parameter <b>lengthFraction</b> (default is 0.5, i.e., the point
 mass is in the middle of the line).
 </p>
 <p>
 In the translational library there is the implicit assumption that
 forces of components that have only one flange connector act with
 opposite sign on the bearings of the component. This assumption
 is also used in the LineForceWithMass component: If a connection
 is present to only one of the flange connectors, then the force
 in this flange connector acts implicitly with opposite sign also
 in the other flange connector.
 </p>
 </html>"));
        end LineForceWithMass;

        model Damper "Linear (velocity dependent) damper"
          import Modelica.Mechanics.MultiBody.Types;
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter SI.TranslationalDampingConstant d(final min = 0, start = 0) "Damping constant";
          parameter SI.Distance length_a = world.defaultForceLength "Length of cylinder at frame_a side" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input SIunits.Diameter diameter_a = world.defaultForceWidth "Diameter of cylinder at frame_a side" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input SIunits.Diameter diameter_b = 0.6 * diameter_a "Diameter of cylinder at frame_b side" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color color_a = {100, 100, 100} "Color at frame_a" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color color_b = {155, 155, 155} "Color at frame_b" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          extends Interfaces.PartialLineForce;
          extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort(final T = 293.15);
        protected
          SI.Position r0_b[3] = e_a * noEvent(min(length_a, s));
          Visualizers.Advanced.Shape shape_a(shapeType = "cylinder", color = color_a, specularCoefficient = specularCoefficient, length = noEvent(min(length_a, s)), width = diameter_a, height = diameter_a, lengthDirection = e_a, widthDirection = {0, 1, 0}, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
          Visualizers.Advanced.Shape shape_b(shapeType = "cylinder", color = color_b, specularCoefficient = specularCoefficient, length = noEvent(max(s - length_a, 0)), width = diameter_b, height = diameter_b, lengthDirection = e_a, widthDirection = {0, 1, 0}, r_shape = r0_b, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
        equation
          f = d * der(s);
          lossPower = f * der(s);
          annotation(Documentation(info = "<HTML>
 <p>
 <b>Linear damper</b> acting as line force between frame_a and frame_b.
 A <b>force f</b> is exerted on the origin of frame_b and with opposite sign
 on the origin of frame_a along the line from the origin of frame_a to the origin
 of frame_b according to the equation:
 </p>
 <pre>
    f = d*<b>der</b>(s);
 </pre>
 <p>
 where \"d\" is a parameter, \"s\" is the
 distance between the origin of frame_a and the origin of frame_b
 and der(s) is the time derivative of \"s\".
 </p>
 <p>
 In the following figure a typical animation is shown
 where a mass is hanging on a damper.
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/Damper.png\">
 </p>
 
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-101, 0}, {-60, 0}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {-60, 30}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {60, -30}}, color = {0, 0, 0}), Line(points = {{-60, 30}, {60, 30}}, color = {0, 0, 0}), Rectangle(extent = {{-60, 30}, {30, -30}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{30, 0}, {100, 0}}, color = {0, 0, 0}), Text(extent = {{-150, 50}, {150, 90}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-150, -75}, {150, -45}}, lineColor = {0, 0, 0}, textString = "d=%d"), Line(visible = useHeatPort, points = {{-100, -99}, {-100, -25}, {-10, -25}}, color = {191, 0, 0}, pattern = LinePattern.Dot, smooth = Smooth.None)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 0}, {-60, 0}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {-60, 30}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {60, -30}}, color = {0, 0, 0}), Line(points = {{-60, 30}, {60, 30}}, color = {0, 0, 0}), Rectangle(extent = {{-60, 30}, {30, -30}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{30, 0}, {100, 0}}, color = {0, 0, 0}), Line(points = {{-50, 60}, {50, 60}}, color = {128, 128, 128}), Text(extent = {{-40, 64}, {23, 77}}, lineColor = {128, 128, 128}, textString = "der(s)"), Polygon(points = {{64, 60}, {42, 68}, {42, 52}, {62, 60}, {64, 60}}, lineColor = {128, 128, 128}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid)}));
        end Damper;

        model SpringDamperParallel "Linear spring and linear damper in parallel"
          import Modelica.Mechanics.MultiBody.Types;
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter SI.TranslationalSpringConstant c(final min = 0) "Spring constant";
          parameter SI.Length s_unstretched = 0 "Unstretched spring length";
          parameter SI.TranslationalDampingConstant d(final min = 0) = 0 "Damping constant";
          input SI.Distance width = world.defaultForceWidth "Width of spring" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input SI.Distance coilWidth = width / 10 "Width of spring coil" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Integer numberOfWindings = 5 "Number of spring windings" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor "Color of spring" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          extends Interfaces.PartialLineForce;
          extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort(final T = 293.15);
        protected
          Modelica.SIunits.Force f_d "Damping force";
          Visualizers.Advanced.Shape shape(shapeType = "spring", color = color, length = s, width = width, height = coilWidth * 2, lengthDirection = e_a, widthDirection = {0, 1, 0}, extra = numberOfWindings, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
        equation
          f_d = d * der(s);
          f = c * (s - s_unstretched) + f_d;
          lossPower = f_d * der(s);
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
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, -150}, {150, -110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-80, 40}, {-60, 40}, {-45, 10}, {-15, 70}, {15, 10}, {45, 70}, {60, 40}, {80, 40}}, color = {0, 0, 0}), Line(points = {{-80, 40}, {-80, -70}}, color = {0, 0, 0}), Line(points = {{-80, -70}, {-52, -70}}, color = {0, 0, 0}), Rectangle(extent = {{-52, -40}, {38, -100}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-52, -40}, {68, -40}}, color = {0, 0, 0}), Line(points = {{-52, -100}, {68, -100}}, color = {0, 0, 0}), Line(points = {{38, -70}, {80, -70}}, color = {0, 0, 0}), Line(points = {{80, 40}, {80, -70}}, color = {0, 0, 0}), Line(points = {{-100, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{80, 0}, {100, 0}}, color = {0, 0, 0}), Text(extent = {{-150, 70}, {150, 100}}, lineColor = {0, 0, 0}, textString = "d=%d"), Line(visible = useHeatPort, points = {{-100, -101}, {-100, -80}, {-6, -80}}, color = {191, 0, 0}, pattern = LinePattern.Dot, smooth = Smooth.None), Text(extent = {{-150, 105}, {150, 135}}, lineColor = {0, 0, 0}, textString = "c=%c")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 32}, {-58, 32}, {-43, 2}, {-13, 62}, {17, 2}, {47, 62}, {62, 32}, {80, 32}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-68, 32}, {-68, 97}}, color = {128, 128, 128}), Line(points = {{72, 32}, {72, 97}}, color = {128, 128, 128}), Line(points = {{-68, 92}, {72, 92}}, color = {128, 128, 128}), Polygon(points = {{62, 95}, {72, 92}, {62, 89}, {62, 95}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-20, 72}, {20, 97}}, lineColor = {0, 0, 255}, textString = "s"), Rectangle(extent = {{-52, -20}, {38, -80}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-52, -80}, {68, -80}}, color = {0, 0, 0}), Line(points = {{-52, -20}, {68, -20}}, color = {0, 0, 0}), Line(points = {{38, -50}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-80, -50}, {-52, -50}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-80, -50}}, color = {0, 0, 0}), Line(points = {{80, 32}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-100, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{100, 0}, {80, 0}}, color = {0, 0, 0})}));
        end SpringDamperParallel;

        package Internal "Internal package, should not be used by user"
          extends Modelica.Icons.InternalPackage;

          model BasicWorldForce "External force acting at frame_b, defined by 3 input signals"
            import Modelica.Mechanics.MultiBody.Types.ResolveInFrameB;
            extends Interfaces.PartialOneFrame_b;
            Interfaces.Frame_resolve frame_resolve "The input signals are optionally resolved in this frame" annotation(Placement(transformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 270)));
            Modelica.Blocks.Interfaces.RealInput force[3](each final quantity = "Force", each final unit = "N") "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
            parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world "Frame in which force is resolved (1: world, 2: frame_b, 3: frame_resolve)";
          equation
            assert(cardinality(frame_resolve) > 0, "Connector frame_resolve must be connected at least once and frame_resolve.r_0/.R must be set");
            frame_resolve.f = zeros(3);
            frame_resolve.t = zeros(3);
            if resolveInFrame == ResolveInFrameB.world then
              frame_b.f = -Frames.resolve2(frame_b.R, force);
            elseif resolveInFrame == ResolveInFrameB.frame_b then
              frame_b.f = -force;
            elseif resolveInFrame == ResolveInFrameB.frame_resolve then
              frame_b.f = -Frames.resolveRelative(force, frame_resolve.R, frame_b.R);
            else
              assert(false, "Wrong value for parameter resolveInFrame");
              frame_b.f = zeros(3);
            end if;
            frame_b.t = zeros(3);
            annotation(Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 10}, {50, 10}, {50, 31}, {97, 0}, {50, -31}, {50, -10}, {-100, -10}, {-100, 10}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{0, -10}, {0, -97}}, color = {95, 95, 95}, pattern = LinePattern.Dot)}), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-89, -46}, {91, -76}}, lineColor = {192, 192, 192}, textString = "resolve"), Polygon(points = {{-100, 10}, {50, 10}, {50, 31}, {94, 0}, {50, -31}, {50, -10}, {-100, -10}, {-100, 10}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-149, 103}, {136, 42}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{0, -10}, {0, -95}}, color = {95, 95, 95}, pattern = LinePattern.Dot)}), Documentation(info = "<HTML>
 <p>
 The 3 signals of the <b>force</b> connector are interpreted
 as the x-, y- and z-coordinates of a <b>force</b> acting at the frame
 connector to which this component is attached.
 Via parameter <b>resolveInFrame</b> it is defined, in which frame these
 coordinates shall be resolved:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
 <tr><th><b>Types.ResolveInFrameB.</b></th><th><b>Meaning</b></th></tr>
 <tr><td valign=\"top\">world</td>
     <td valign=\"top\">Resolve input force in world frame (= default)</td></tr>
 
 <tr><td valign=\"top\">frame_b</td>
     <td valign=\"top\">Resolve input force in frame_b</td></tr>
 
 <tr><td valign=\"top\">frame_resolve</td>
     <td valign=\"top\">Resolve input force in frame_resolve (frame_resolve must be connected)</td></tr>
 </table>
 
 <p>
 If resolveInFrame = Types.ResolveInFrameB.frame_resolve, the force coordinates
 are with respect to the frame, that is connected to <b>frame_resolve</b>.
 </p>
 
 <p>
 If resolveInFrame is not Types.ResolveInFrameB.frame_resolve, then the position
 vector and the orientation object of frame_resolve must be set to constant
 values from the outside in order that the model remains balanced
 (these constant values are ignored).
 </p>
 
 </html>"));
          end BasicWorldForce;
        end Internal;
        annotation(Documentation(info = "<HTML>
 <p>
 This package contains components that exert forces and torques
 between two frame connectors, e.g., between two parts.
 </p>
 <h4>Content</h4>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><th><b><i>Model</i></b></th><th><b><i>Description</i></b></th></tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.WorldForce\">WorldForce</a></td>
       <td valign=\"top\"> External force acting at the frame to which this component
            is connected and defined by 3 input signals,
            that are interpreted as one vector resolved in frame world, frame_b or frame_resolve. <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowForce.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.WorldTorque\">WorldTorque</a></td>
       <td valign=\"top\"> External torque acting at the frame to which this component
            is connected and defined by 3 input signals,
            that are interpreted as one vector resolved in frame world, frame_b or frame_resolve. <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowTorque.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque\">WorldForceAndTorque</a></td>
       <td valign=\"top\"> External force and external torque acting at the frame
            to which this component
            is connected and defined by 3+3 input signals,
            that are interpreted as a force and as a torque vector
            resolved in frame world, frame_b or frame_resolve. <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowForce.png\"><br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowTorque.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.Force\">Force</a></td>
       <td valign=\"top\"> Force acting between two frames defined by 3 input signals
            resolved in frame world, frame_a, frame_b or in frame_resolve. <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowForce2.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.Torque\">Torque</a></td>
       <td valign=\"top\"> Torque acting between two frames defined by 3 input signals
            resolved in frame world, frame_a, frame_b or in frame_resolve. <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowTorque2.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.ForceAndTorque\">ForceAndTorque</a></td>
       <td valign=\"top\"> Force and torque acting between two frames defined by 3+3 input signals
            resolved in frame world, frame_a, frame_b or in frame_resolve. <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowForce2.png\"><br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/ArrowTorque2.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.LineForceWithMass\">LineForceWithMass</a></td>
       <td valign=\"top\">  General line force component with an optional point mass
             on the connection line. The force law can be defined by a
             component of Modelica.Mechanics.Translational<br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/LineForceWithMass.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMasses\">LineForceWithTwoMasses</a></td>
       <td valign=\"top\">  General line force component with two optional point masses
             on the connection line. The force law can be defined by a
             component of Modelica.Mechanics.Translational<br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/LineForceWithTwoMasses.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.Spring\">Spring</a></td>
       <td valign=\"top\"> Linear translational spring with optional mass <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/Spring2.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.Damper\">Damper</a></td>
       <td valign=\"top\"> Linear (velocity dependent) damper <br>
            <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Forces/Damper2.png\"></td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel\">SpringDamperParallel</a></td>
       <td valign=\"top\"> Linear spring and damper in parallel connection </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Forces.SpringDamperSeries\">SpringDamperSeries</a></td>
       <td valign=\"top\"> Linear spring and damper in series connection </td>
   </tr>
 </table>
 </HTML>"));
      end Forces;

      package Frames "Functions to transform rotational frame quantities"
        extends Modelica.Icons.Package;

        record Orientation "Orientation object defining rotation from a frame 1 into a frame 2"
          extends Modelica.Icons.Record;
          Real T[3, 3] "Transformation matrix from world frame to local frame";
          SI.AngularVelocity w[3] "Absolute angular velocity of local frame, resolved in local frame";

          encapsulated function equalityConstraint "Return the constraint residues to express that two frames have the same orientation"
            import Modelica;
            import Modelica.Mechanics.MultiBody.Frames;
            extends Modelica.Icons.Function;
            input Frames.Orientation R1 "Orientation object to rotate frame 0 into frame 1";
            input Frames.Orientation R2 "Orientation object to rotate frame 0 into frame 2";
            output Real residue[3] "The rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation (should be zero)";
          algorithm
            residue := {Modelica.Math.atan2(cross(R1.T[1, :], R1.T[2, :]) * R2.T[2, :], R1.T[1, :] * R2.T[1, :]), Modelica.Math.atan2(-cross(R1.T[1, :], R1.T[2, :]) * R2.T[1, :], R1.T[2, :] * R2.T[2, :]), Modelica.Math.atan2(R1.T[2, :] * R2.T[1, :], R1.T[3, :] * R2.T[3, :])};
            annotation(Inline = true);
          end equalityConstraint;
          annotation(Documentation(info = "<html>
 <p>
 This object describes the <b>rotation</b> from a <b>frame 1</b> into a <b>frame 2</b>.
 An instance of this type should never be directly accessed but
 only with the access functions provided
 in package Modelica.Mechanics.MultiBody.Frames. As a consequence, it is not necessary to know
 the internal representation of this object as described in the next paragraphs.
 </p>
 <p>
 \"Orientation\" is defined to be a record consisting of two
 elements: \"Real T[3,3]\", the transformation matrix to rotate frame 1
 into frame 2 and \"Real w[3]\", the angular velocity of frame 2 with
 respect to frame 1, resolved in frame 2. Element \"T\"
 has the following interpretation:
 </p>
 <pre>
    Orientation R;
    <b>R.T</b> = [<b>e</b><sub>x</sub>, <b>e</b><sub>y</sub>, <b>e</b><sub>z</sub>];
        e.g., <b>R.T</b> = [1,0,0; 0,1,0; 0,0,1]
 </pre>
 <p>
 where <b>e</b><sub>x</sub>,<b>e</b><sub>y</sub>,<b>e</b><sub>z</sub>
 are unit vectors in the direction of the x-axis, y-axis, and z-axis
 of frame 1, resolved in frame 2, respectively. Therefore, if <b>v</b><sub>1</sub>
 is vector <b>v</b> resolved in frame 1 and <b>v</b><sub>2</sub> is
 vector <b>v</b> resolved in frame 2, the following relationship holds:
 </p>
 <pre>
     <b>v</b><sub>2</sub> = <b>R.T</b> * <b>v</b><sub>1</sub>
 </pre>
 <p>
 The <b>inverse</b> orientation
 <b>R_inv.T</b> = <b>R.T</b><sup>T</sup> describes the rotation
 from frame 2 into frame 1.
 </p>
 <p>
 Since the orientation is described by 9 variables, there are
 6 constraints between these variables. These constraints
 are defined in function <b>Frames.orientationConstraint</b>.
 </p>
 <p>
 R.w is the angular velocity of frame 2 with respect to frame 1, resolved
 in frame 2. Formally, R.w is defined as:<br>
 <b>skew</b>(R.w) = R.T*<b>der</b>(transpose(R.T))
 with
 </p>
 <pre>
              |   0   -w[3]  w[2] |
    <b>skew</b>(w) = |  w[3]   0   -w[1] |
              | -w[2]  w[1]     0 |
 </pre>
 </html>"));
        end Orientation;

        function angularVelocity2 "Return angular velocity resolved in frame 2 from orientation object"
          extends Modelica.Icons.Function;
          input Orientation R "Orientation object to rotate frame 1 into frame 2";
          output Modelica.SIunits.AngularVelocity w[3] "Angular velocity of frame 2 with respect to frame 1 resolved in frame 2";
        algorithm
          w := R.w;
          annotation(Inline = true);
        end angularVelocity2;

        function resolve1 "Transform vector from frame 2 to frame 1"
          extends Modelica.Icons.Function;
          input Orientation R "Orientation object to rotate frame 1 into frame 2";
          input Real v2[3] "Vector in frame 2";
          output Real v1[3] "Vector in frame 1";
        algorithm
          v1 := transpose(R.T) * v2;
          annotation(derivative(noDerivative = R) = Internal.resolve1_der, InlineAfterIndexReduction = true);
        end resolve1;

        function resolve2 "Transform vector from frame 1 to frame 2"
          extends Modelica.Icons.Function;
          input Orientation R "Orientation object to rotate frame 1 into frame 2";
          input Real v1[3] "Vector in frame 1";
          output Real v2[3] "Vector in frame 2";
        algorithm
          v2 := R.T * v1;
          annotation(derivative(noDerivative = R) = Internal.resolve2_der, InlineAfterIndexReduction = true);
        end resolve2;

        function resolveRelative "Transform vector from frame 1 to frame 2 using absolute orientation objects of frame 1 and of frame 2"
          extends Modelica.Icons.Function;
          input Real v1[3] "Vector in frame 1";
          input Orientation R1 "Orientation object to rotate frame 0 into frame 1";
          input Orientation R2 "Orientation object to rotate frame 0 into frame 2";
          output Real v2[3] "Vector in frame 2";
        algorithm
          v2 := resolve2(R2, resolve1(R1, v1));
          annotation(derivative(noDerivative = R1, noDerivative = R2) = Internal.resolveRelative_der, InlineAfterIndexReduction = true);
        end resolveRelative;

        function resolveDyade1 "Transform second order tensor from frame 2 to frame 1"
          extends Modelica.Icons.Function;
          input Orientation R "Orientation object to rotate frame 1 into frame 2";
          input Real D2[3, 3] "Second order tensor resolved in frame 2";
          output Real D1[3, 3] "Second order tensor resolved in frame 1";
        algorithm
          D1 := transpose(R.T) * D2 * R.T;
          annotation(Inline = true);
        end resolveDyade1;

        function nullRotation "Return orientation object that does not rotate a frame"
          extends Modelica.Icons.Function;
          output Orientation R "Orientation object such that frame 1 and frame 2 are identical";
        algorithm
          R := Orientation(T = identity(3), w = zeros(3));
          annotation(Inline = true);
        end nullRotation;

        function relativeRotation "Return relative orientation object"
          extends Modelica.Icons.Function;
          input Orientation R1 "Orientation object to rotate frame 0 into frame 1";
          input Orientation R2 "Orientation object to rotate frame 0 into frame 2";
          output Orientation R_rel "Orientation object to rotate frame 1 into frame 2";
        algorithm
          R_rel := Orientation(T = R2.T * transpose(R1.T), w = R2.w - resolve2(R2, resolve1(R1, R1.w)));
          annotation(Inline = true);
        end relativeRotation;

        function absoluteRotation "Return absolute orientation object from another absolute and a relative orientation object"
          extends Modelica.Icons.Function;
          input Orientation R1 "Orientation object to rotate frame 0 into frame 1";
          input Orientation R_rel "Orientation object to rotate frame 1 into frame 2";
          output Orientation R2 "Orientation object to rotate frame 0 into frame 2";
        algorithm
          R2 := Orientation(T = R_rel.T * R1.T, w = resolve2(R_rel, R1.w) + R_rel.w);
          annotation(Inline = true);
        end absoluteRotation;

        function planarRotation "Return orientation object of a planar rotation"
          import Modelica.Math;
          extends Modelica.Icons.Function;
          input Real e[3](each final unit = "1") "Normalized axis of rotation (must have length=1)";
          input Modelica.SIunits.Angle angle "Rotation angle to rotate frame 1 into frame 2 along axis e";
          input Modelica.SIunits.AngularVelocity der_angle "= der(angle)";
          output Orientation R "Orientation object to rotate frame 1 into frame 2";
        algorithm
          R := Orientation(T = [e] * transpose([e]) + (identity(3) - [e] * transpose([e])) * Math.cos(angle) - skew(e) * Math.sin(angle), w = e * der_angle);
          annotation(Inline = true);
        end planarRotation;

        function planarRotationAngle "Return angle of a planar rotation, given the rotation axis and the representations of a vector in frame 1 and frame 2"
          extends Modelica.Icons.Function;
          input Real e[3](each final unit = "1") "Normalized axis of rotation to rotate frame 1 around e into frame 2 (must have length=1)";
          input Real v1[3] "A vector v resolved in frame 1 (shall not be parallel to e)";
          input Real v2[3] "Vector v resolved in frame 2, i.e., v2 = resolve2(planarRotation(e,angle),v1)";
          output Modelica.SIunits.Angle angle "Rotation angle to rotate frame 1 into frame 2 along axis e in the range: -pi <= angle <= pi";
        algorithm
          /* Vector v is resolved in frame 1 and frame 2 according to:
                  (1)  v2 = (e*transpose(e) + (identity(3) - e*transpose(e))*cos(angle) - skew(e)*sin(angle))*v1;
                          = e*(e*v1) + (v1 - e*(e*v1))*cos(angle) - cross(e,v1)*sin(angle)
                 Equation (1) is multiplied with "v1" resulting in (note: e*e = 1)
                      v1*v2 = (e*v1)*(e*v2) + (v1*v1 - (e*v1)*(e*v1))*cos(angle)
                 and therefore:
                  (2) cos(angle) = ( v1*v2 - (e*v1)*(e*v2)) / (v1*v1 - (e*v1)*(e*v1))
                 Similarly, equation (1) is multiplied with cross(e,v1), i.e., a
                 a vector that is orthogonal to e and to v1:
                        cross(e,v1)*v2 = - cross(e,v1)*cross(e,v1)*sin(angle)
                 and therefore:
                    (3) sin(angle) = -cross(e,v1)*v2/(cross(e,v1)*cross(e,v1));
                 We have e*e=1; Therefore:
                    (4) v1*v1 - (e*v1)*(e*v1) = |v1|^2 - (|v1|*cos(e,v1))^2
                 and
                    (5) cross(e,v1)*cross(e,v1) = (|v1|*sin(e,v1))^2
                                                = |v1|^2*(1 - cos(e,v1)^2)
                                                = |v1|^2 - (|v1|*cos(e,v1))^2
                 The denominators of (2) and (3) are identical, according to (4) and (5).
                 Furthermore, the denominators are always positive according to (5).
                 Therefore, in the equation "angle = atan2(sin(angle), cos(angle))" the
                 denominators of sin(angle) and cos(angle) can be removed,
                 resulting in:
                    angle = atan2(-cross(e,v1)*v2, v1*v2 - (e*v1)*(e*v2));
              */
          angle := Modelica.Math.atan2(-cross(e, v1) * v2, v1 * v2 - e * v1 * (e * v2));
          annotation(Inline = true, Documentation(info = "<HTML>
 <p>
 A call to this function of the form
 </p>
 <pre>
     Real[3]                e, v1, v2;
     Modelica.SIunits.Angle angle;
   <b>equation</b>
     angle = <b>planarRotationAngle</b>(e, v1, v2);
 </pre>
 <p>
 computes the rotation angle \"<b>angle</b>\" of a planar
 rotation along unit vector <b>e</b>, rotating frame 1 into frame 2, given
 the coordinate representations of a vector \"v\" in frame 1 (<b>v1</b>)
 and in frame 2 (<b>v2</b>). Therefore, the result of this function
 fulfills the following equation:
 </p>
 <pre>
     v2 = <b>resolve2</b>(<b>planarRotation</b>(e,angle), v1)
 </pre>
 <p>
 The rotation angle is returned in the range
 </p>
 <pre>
     -<font face=\"Symbol\">p</font> &lt;= angle &lt;= <font face=\"Symbol\">p</font>
 </pre>
 <p>
 This function makes the following assumptions on the input arguments
 </p>
 <ul>
 <li> Vector <b>e</b> has length 1, i.e., length(e) = 1</li>
 <li> Vector \"v\" is not parallel to <b>e</b>, i.e.,
      length(cross(e,v1)) &ne; 0</li>
 </ul>
 <p>
 The function does not check the above assumptions. If these
 assumptions are violated, a wrong result will be returned
 and/or a division by zero will occur.
 </p>
 </HTML>"));
        end planarRotationAngle;

        function axesRotations "Return fixed rotation object to rotate in sequence around fixed angles along 3 axes"
          import TM = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
          extends Modelica.Icons.Function;
          input Integer sequence[3](min = {1, 1, 1}, max = {3, 3, 3}) = {1, 2, 3} "Sequence of rotations from frame 1 to frame 2 along axis sequence[i]";
          input Modelica.SIunits.Angle angles[3] "Rotation angles around the axes defined in 'sequence'";
          input Modelica.SIunits.AngularVelocity der_angles[3] "= der(angles)";
          output Orientation R "Orientation object to rotate frame 1 into frame 2";
        algorithm
          /*
            R := absoluteRotation(absoluteRotation(axisRotation(sequence[1], angles[1],
              der_angles[1]), axisRotation(sequence[2], angles[2], der_angles[2])),
              axisRotation(sequence[3], angles[3], der_angles[3]));
          */
          R := Orientation(T = TM.axisRotation(sequence[3], angles[3]) * TM.axisRotation(sequence[2], angles[2]) * TM.axisRotation(sequence[1], angles[1]), w = Frames.axis(sequence[3]) * der_angles[3] + TM.resolve2(TM.axisRotation(sequence[3], angles[3]), Frames.axis(sequence[2]) * der_angles[2]) + TM.resolve2(TM.axisRotation(sequence[3], angles[3]) * TM.axisRotation(sequence[2], angles[2]), Frames.axis(sequence[1]) * der_angles[1]));
          annotation(Inline = true);
        end axesRotations;

        function axesRotationsAngles "Return the 3 angles to rotate in sequence around 3 axes to construct the given orientation object"
          extends Modelica.Icons.Function;
          input Orientation R "Orientation object to rotate frame 1 into frame 2";
          input Integer sequence[3](min = {1, 1, 1}, max = {3, 3, 3}) = {1, 2, 3} "Sequence of rotations from frame 1 to frame 2 along axis sequence[i]";
          input SI.Angle guessAngle1 = 0 "Select angles[1] such that |angles[1] - guessAngle1| is a minimum";
          output SI.Angle angles[3] "Rotation angles around the axes defined in 'sequence' such that R=Frames.axesRotation(sequence,angles); -pi < angles[i] <= pi";
        protected
          Real e1_1[3](each final unit = "1") "First rotation axis, resolved in frame 1";
          Real e2_1a[3](each final unit = "1") "Second rotation axis, resolved in frame 1a";
          Real e3_1[3](each final unit = "1") "Third rotation axis, resolved in frame 1";
          Real e3_2[3](each final unit = "1") "Third rotation axis, resolved in frame 2";
          Real A "Coefficient A in the equation A*cos(angles[1])+B*sin(angles[1]) = 0";
          Real B "Coefficient B in the equation A*cos(angles[1])+B*sin(angles[1]) = 0";
          SI.Angle angle_1a "Solution 1 for angles[1]";
          SI.Angle angle_1b "Solution 2 for angles[1]";
          TransformationMatrices.Orientation T_1a "Orientation object to rotate frame 1 into frame 1a";
        algorithm
          /* The rotation object R is constructed by:
               (1) Rotating frame 1 along axis e1 (= axis sequence[1]) with angles[1]
                   arriving at frame 1a.
               (2) Rotating frame 1a along axis e2 (= axis sequence[2]) with angles[2]
                   arriving at frame 1b.
               (3) Rotating frame 1b along axis e3 (= axis sequence[3]) with angles[3]
                   arriving at frame 2.
               The goal is to determine angles[1:3]. This is performed in the following way:
               1. e2 and e3 are perpendicular to each other, i.e., e2*e3 = 0;
                  Both vectors are resolved in frame 1 (T_ij is transformation matrix
                  from frame j to frame i; e1_1*e2_1a = 0, since the vectors are
                  perpendicular to each other):
                     e3_1 = T_12*e3_2
                          = R[sequence[3],:];
                     e2_1 = T_11a*e2_1a
                          = ( e1_1*transpose(e1_1) + (identity(3) - e1_1*transpose(e1_1))*cos(angles[1])
                              + skew(e1_1)*sin(angles[1]) )*e2_1a
                          = e2_1a*cos(angles[1]) + cross(e1_1, e2_1a)*sin(angles[1]);
                  From this follows finally an equation for angles[1]
                     e2_1*e3_1 = 0
                               = (e2_1a*cos(angles[1]) + cross(e1_1, e2_1a)*sin(angles[1]))*e3_1
                               = (e2_1a*e3_1)*cos(angles[1]) + cross(e1_1, e2_1a)*e3_1*sin(angles[1])
                               = A*cos(angles[1]) + B*sin(angles[1])
                                 with A = e2_1a*e3_1, B = cross(e1_1, e2_1a)*e3_1
                  This equation has two solutions in the range -pi < angles[1] <= pi:
                     sin(angles[1]) =  k*A/sqrt(A*A + B*B)
                     cos(angles[1]) = -k*B/sqrt(A*A + B*B)
                                  k = +/-1
                     tan(angles[1]) = k*A/(-k*B)
                  that is:
                     angles[1] = atan2(k*A, -k*B)
                  If A and B are both zero at the same time, there is a singular configuration
                  resulting in an infinite number of solutions for angles[1] (every value
                  is possible).
               2. angles[2] is determined with function Frames.planarRotationAngle.
                  This function requires to provide e_3 in frame 1a and in frame 1b:
                    e3_1a = Frames.resolve2(planarRotation(e1_1,angles[1]), e3_1);
                    e3_1b = e3_2
               3. angles[3] is determined with function Frames.planarRotationAngle.
                  This function requires to provide e_2 in frame 1b and in frame 2:
                    e2_1b = e2_1a
                    e2_2  = Frames.resolve2( R, Frames.resolve1(planarRotation(e1_1,angles[1]), e2_1a));
            */
          assert(sequence[1] <> sequence[2] and sequence[2] <> sequence[3], "input argument 'sequence[1:3]' is not valid");
          e1_1 := if sequence[1] == 1 then {1, 0, 0} else if sequence[1] == 2 then {0, 1, 0} else {0, 0, 1};
          e2_1a := if sequence[2] == 1 then {1, 0, 0} else if sequence[2] == 2 then {0, 1, 0} else {0, 0, 1};
          e3_1 := R.T[sequence[3], :];
          e3_2 := if sequence[3] == 1 then {1, 0, 0} else if sequence[3] == 2 then {0, 1, 0} else {0, 0, 1};
          A := e2_1a * e3_1;
          B := cross(e1_1, e2_1a) * e3_1;
          if abs(A) <= 1e-12 and abs(B) <= 1e-12 then
            angles[1] := guessAngle1;
          else
            angle_1a := Modelica.Math.atan2(A, -B);
            angle_1b := Modelica.Math.atan2(-A, B);
            angles[1] := if abs(angle_1a - guessAngle1) <= abs(angle_1b - guessAngle1) then angle_1a else angle_1b;
          end if;
          T_1a := TransformationMatrices.planarRotation(e1_1, angles[1]);
          angles[2] := planarRotationAngle(e2_1a, TransformationMatrices.resolve2(T_1a, e3_1), e3_2);
          angles[3] := planarRotationAngle(e3_2, e2_1a, TransformationMatrices.resolve2(R.T, TransformationMatrices.resolve1(T_1a, e2_1a)));
          annotation(Documentation(info = "<HTML>
 <p>
 A call to this function of the form
 </p>
 <pre>
     Frames.Orientation     R;
     <b>parameter</b> Integer      sequence[3] = {1,2,3};
     Modelica.SIunits.Angle angles[3];
   <b>equation</b>
     angle = <b>axesRotationAngles</b>(R, sequence);
 </pre>
 <p>
 computes the rotation angles \"<b>angles</b>[1:3]\" to rotate frame 1
 into frame 2 along axes <b>sequence</b>[1:3], given the orientation
 object <b>R</b> from frame 1 to frame 2. Therefore, the result of
 this function fulfills the following equation:
 </p>
 <pre>
     R = <b>axesRotation</b>(sequence, angles)
 </pre>
 <p>
 The rotation angles are returned in the range
 </p>
 <pre>
     -<font face=\"Symbol\">p</font> &lt;= angles[i] &lt;= <font face=\"Symbol\">p</font>
 </pre>
 <p>
 There are <b>two solutions</b> for \"angles[1]\" in this range.
 Via the third argument <b>guessAngle1</b> (default = 0) the
 returned solution is selected such that |angles[1] - guessAngle1| is
 minimal. The orientation object R may be in a singular configuration, i.e.,
 there is an infinite number of angle values leading to the same R. The returned solution is
 selected by setting angles[1] = guessAngle1. Then angles[2]
 and angles[3] can be uniquely determined in the above range.
 </p>
 <p>
 Note, that input argument <b>sequence</b> has the restriction that
 only values 1,2,3 can be used and that sequence[1] &ne; sequence[2]
 and sequence[2] &ne; sequence[3]. Often used values are:
 </p>
 <pre>
   sequence = <b>{1,2,3}</b>  // Cardan angle sequence
            = <b>{3,1,3}</b>  // Euler angle sequence
            = <b>{3,2,1}</b>  // Tait-Bryan angle sequence
 </pre>
 </HTML>"));
        end axesRotationsAngles;

        function from_nxy "Return fixed orientation object from n_x and n_y vectors"
          extends Modelica.Icons.Function;
          input Real n_x[3](each final unit = "1") "Vector in direction of x-axis of frame 2, resolved in frame 1";
          input Real n_y[3](each final unit = "1") "Vector in direction of y-axis of frame 2, resolved in frame 1";
          output Orientation R "Orientation object to rotate frame 1 into frame 2";
        protected
          Real abs_n_x = sqrt(n_x * n_x);
          Real e_x[3](each final unit = "1") = if abs_n_x < 1e-10 then {1, 0, 0} else n_x / abs_n_x;
          Real n_z_aux[3](each final unit = "1") = cross(e_x, n_y);
          Real n_y_aux[3](each final unit = "1") = if n_z_aux * n_z_aux > 1e-06 then n_y else if abs(e_x[1]) > 1e-06 then {0, 1, 0} else {1, 0, 0};
          Real e_z_aux[3](each final unit = "1") = cross(e_x, n_y_aux);
          Real e_z[3](each final unit = "1") = e_z_aux / sqrt(e_z_aux * e_z_aux);
        algorithm
          R := Orientation(T = {e_x, cross(e_z, e_x), e_z}, w = zeros(3));
          annotation(Documentation(info = "<html>
 <p>
 It is assumed that the two input vectors n_x and n_y are
 resolved in frame 1 and are directed along the x and y axis
 of frame 2 (i.e., n_x and n_y are orthogonal to each other)
 The function returns the orientation object R to rotate from
 frame 1 to frame 2.
 </p>
 <p>
 The function is robust in the sense that it returns always
 an orientation object R, even if n_y is not orthogonal to n_x.
 This is performed in the following way:
 </p>
 <p>
 If n_x and n_y are not orthogonal to each other, first a unit
 vector e_y is determined that is orthogonal to n_x and is lying
 in the plane spanned by n_x and n_y. If n_x and n_y are parallel
 or nearly parallel to each other, a vector e_y is selected
 arbitrarily such that e_x and e_y are orthogonal to each other.
 </p>
 </html>"));
        end from_nxy;

        function from_T "Return orientation object R from transformation matrix T"
          extends Modelica.Icons.Function;
          input Real T[3, 3] "Transformation matrix to transform vector from frame 1 to frame 2 (v2=T*v1)";
          input Modelica.SIunits.AngularVelocity w[3] "Angular velocity from frame 2 with respect to frame 1, resolved in frame 2 (skew(w)=T*der(transpose(T)))";
          output Orientation R "Orientation object to rotate frame 1 into frame 2";
        algorithm
          R := Orientation(T = T, w = w);
          annotation(Inline = true);
        end from_T;

        function from_Q "Return orientation object R from quaternion orientation object Q"
          extends Modelica.Icons.Function;
          input Quaternions.Orientation Q "Quaternions orientation object to rotate frame 1 into frame 2";
          input Modelica.SIunits.AngularVelocity w[3] "Angular velocity from frame 2 with respect to frame 1, resolved in frame 2";
          output Orientation R "Orientation object to rotate frame 1 into frame 2";
        algorithm
          /*
            T := (2*Q[4]*Q[4] - 1)*identity(3) + 2*([Q[1:3]]*transpose([Q[1:3]]) - Q[4]*
              skew(Q[1:3]));
          */
          R := Orientation([2 * (Q[1] * Q[1] + Q[4] * Q[4]) - 1, 2 * (Q[1] * Q[2] + Q[3] * Q[4]), 2 * (Q[1] * Q[3] - Q[2] * Q[4]); 2 * (Q[2] * Q[1] - Q[3] * Q[4]), 2 * (Q[2] * Q[2] + Q[4] * Q[4]) - 1, 2 * (Q[2] * Q[3] + Q[1] * Q[4]); 2 * (Q[3] * Q[1] + Q[2] * Q[4]), 2 * (Q[3] * Q[2] - Q[1] * Q[4]), 2 * (Q[3] * Q[3] + Q[4] * Q[4]) - 1], w = w);
          annotation(Inline = true);
        end from_Q;

        function to_Q "Return quaternion orientation object Q from orientation object R"
          extends Modelica.Icons.Function;
          input Orientation R "Orientation object to rotate frame 1 into frame 2";
          input Quaternions.Orientation Q_guess = Quaternions.nullRotation() "Guess value for output Q (there are 2 solutions; the one closer to Q_guess is used";
          output Quaternions.Orientation Q "Quaternions orientation object to rotate frame 1 into frame 2";
        algorithm
          Q := Quaternions.from_T(R.T, Q_guess);
          annotation(Inline = true);
        end to_Q;

        function axis "Return unit vector for x-, y-, or z-axis"
          extends Modelica.Icons.Function;
          input Integer axis(min = 1, max = 3) "Axis vector to be returned";
          output Real e[3](each final unit = "1") "Unit axis vector";
        algorithm
          e := if axis == 1 then {1, 0, 0} else if axis == 2 then {0, 1, 0} else {0, 0, 1};
          annotation(Inline = true);
        end axis;

        package Quaternions "Functions to transform rotational frame quantities based on quaternions (also called Euler parameters)"
          extends Modelica.Icons.Package;

          type Orientation "Orientation type defining rotation from a frame 1 into a frame 2 with quaternions {p1,p2,p3,p0}"
            extends Internal.QuaternionBase;

            encapsulated function equalityConstraint "Return the constraint residues to express that two frames have the same quaternion orientation"
              import Modelica;
              import Modelica.Mechanics.MultiBody.Frames.Quaternions;
              extends Modelica.Icons.Function;
              input Quaternions.Orientation Q1 "Quaternions orientation object to rotate frame 0 into frame 1";
              input Quaternions.Orientation Q2 "Quaternions orientation object to rotate frame 0 into frame 2";
              output Real residue[3] "The half of the rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation (shall be zero)";
            algorithm
              residue := [Q1[4], Q1[3], -Q1[2], -Q1[1]; -Q1[3], Q1[4], Q1[1], -Q1[2]; Q1[2], -Q1[1], Q1[4], -Q1[3]] * Q2;
              annotation(Inline = true);
            end equalityConstraint;
            annotation(Documentation(info = "<html>
 <p>
 This type describes the <b>rotation</b> to rotate a frame 1 into
 a frame 2 using quaternions (also called <b>Euler parameters</b>)
 according to the following definition:
 </p>
 <pre>
    Quaternions.Orientation Q;
    Real  n[3];
    Real  phi(unit=\"rad\");
    Q = [ n*sin(phi/2)
            cos(phi/2) ]
 </pre>
 <p>
 where \"n\" is the <b>axis of rotation</b> to rotate frame 1 into
 frame 2 and \"phi\" is the <b>rotation angle</b> for this rotation.
 Vector \"n\" is either resolved in frame 1 or in frame 2
 (the result is the same since the coordinates of \"n\" with respect to
 frame 1 are identical to its coordinates with respect to frame 2).
 </p>
 <p>
 The term \"quaternions\" is preferred over the historically
 more reasonable \"Euler parameters\" in order to not get
 confused with Modelica \"parameters\".
 </p>
 </html>"));
          end Orientation;

          type der_Orientation = Real[4](each unit = "1/s") "First time derivative of Quaternions.Orientation";

          function orientationConstraint "Return residues of orientation constraints (shall be zero)"
            extends Modelica.Icons.Function;
            input Quaternions.Orientation Q "Quaternions orientation object to rotate frame 1 into frame 2";
            output Real residue[1] "Residue constraint (shall be zero)";
          algorithm
            residue := {Q * Q - 1};
            annotation(Inline = true);
          end orientationConstraint;

          function angularVelocity2 "Compute angular velocity resolved in frame 2 from quaternions orientation object and its derivative"
            extends Modelica.Icons.Function;
            input Quaternions.Orientation Q "Quaternions orientation object to rotate frame 1 into frame 2";
            input der_Orientation der_Q "Derivative of Q";
            output Modelica.SIunits.AngularVelocity w[3] "Angular velocity of frame 2 with respect to frame 1 resolved in frame 2";
          algorithm
            w := 2 * ([Q[4], Q[3], -Q[2], -Q[1]; -Q[3], Q[4], Q[1], -Q[2]; Q[2], -Q[1], Q[4], -Q[3]] * der_Q);
            annotation(Inline = true);
          end angularVelocity2;

          function nullRotation "Return quaternion orientation object that does not rotate a frame"
            extends Modelica.Icons.Function;
            output Quaternions.Orientation Q "Quaternions orientation object to rotate frame 1 into frame 2";
          algorithm
            Q := {0, 0, 0, 1};
            annotation(Inline = true);
          end nullRotation;

          function from_T "Return quaternion orientation object Q from transformation matrix T"
            extends Modelica.Icons.Function;
            input Real T[3, 3] "Transformation matrix to transform vector from frame 1 to frame 2 (v2=T*v1)";
            input Quaternions.Orientation Q_guess = nullRotation() "Guess value for Q (there are 2 solutions; the one close to Q_guess is used";
            output Quaternions.Orientation Q "Quaternions orientation object to rotate frame 1 into frame 2 (Q and -Q have same transformation matrix)";
          protected
            Real paux;
            Real paux4;
            Real c1;
            Real c2;
            Real c3;
            Real c4;
            constant Real p4limit = 0.1;
            constant Real c4limit = 4 * p4limit * p4limit;
          algorithm
            /*
               Note, for quaternions, Q and -Q have the same transformation matrix.
               Calculation of quaternions from transformation matrix T:
               It is guaranteed that c1>=0, c2>=0, c3>=0, c4>=0 and
               that not all of them can be zero at the same time
               (e.g., if 3 of them are zero, the 4th variable is 1).
               Since the sqrt(..) has to be performed on one of these variables,
               it is applied on a variable which is far enough from zero.
               This guarantees that the sqrt(..) is never taken near zero
               and therefore the derivative of sqrt(..) can never be infinity.
               There is an ambiguity for quaternions, since Q and -Q
               lead to the same transformation matrix. The ambiguity
               is resolved here by selecting the Q that is closer to
               the input argument Q_guess.
            */
            c1 := 1 + T[1, 1] - T[2, 2] - T[3, 3];
            c2 := 1 + T[2, 2] - T[1, 1] - T[3, 3];
            c3 := 1 + T[3, 3] - T[1, 1] - T[2, 2];
            c4 := 1 + T[1, 1] + T[2, 2] + T[3, 3];
            if c4 > c4limit or c4 > c1 and c4 > c2 and c4 > c3 then
              paux := sqrt(c4) / 2;
              paux4 := 4 * paux;
              Q := {(T[2, 3] - T[3, 2]) / paux4, (T[3, 1] - T[1, 3]) / paux4, (T[1, 2] - T[2, 1]) / paux4, paux};
            elseif c1 > c2 and c1 > c3 and c1 > c4 then
              paux := sqrt(c1) / 2;
              paux4 := 4 * paux;
              Q := {paux, (T[1, 2] + T[2, 1]) / paux4, (T[1, 3] + T[3, 1]) / paux4, (T[2, 3] - T[3, 2]) / paux4};
            elseif c2 > c1 and c2 > c3 and c2 > c4 then
              paux := sqrt(c2) / 2;
              paux4 := 4 * paux;
              Q := {(T[1, 2] + T[2, 1]) / paux4, paux, (T[2, 3] + T[3, 2]) / paux4, (T[3, 1] - T[1, 3]) / paux4};
            else
              paux := sqrt(c3) / 2;
              paux4 := 4 * paux;
              Q := {(T[1, 3] + T[3, 1]) / paux4, (T[2, 3] + T[3, 2]) / paux4, paux, (T[1, 2] - T[2, 1]) / paux4};
            end if;
            if Q * Q_guess < 0 then
              Q := -Q;
            end if;
          end from_T;
          annotation(Documentation(info = "<HTML>
 <p>
 Package <b>Frames.Quaternions</b> contains type definitions and
 functions to transform rotational frame quantities with quaternions.
 Functions of this package are currently only utilized in
 MultiBody.Parts.Body components, when quaternions shall be used
 as parts of the body states.
 Some functions are also used in a new Modelica package for
 B-Spline interpolation that is able to interpolate paths consisting of
 position vectors and orientation objects.
 </p>
 <h4>Content</h4>
 <p>In the table below an example is given for every function definition.
 The used variables have the following declaration:
 </p>
 <pre>
    Quaternions.Orientation Q, Q1, Q2, Q_rel, Q_inv;
    Real[3,3]   T, T_inv;
    Real[3]     v1, v2, w1, w2, n_x, n_y, n_z, res_ori, phi;
    Real[6]     res_equal;
    Real        L, angle;
 </pre>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><th><b><i>Function/type</i></b></th><th><b><i>Description</i></b></th></tr>
   <tr><td valign=\"top\"><b>Orientation Q;</b></td>
       <td valign=\"top\">New type defining a quaternion object that describes<br>
           the rotation of frame 1 into frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\"><b>der_Orientation</b> der_Q;</td>
       <td valign=\"top\">New type defining the first time derivative
          of Frames.Quaternions.Orientation.
       </td>
   </tr>
   <tr><td valign=\"top\">res_ori = <b>orientationConstraint</b>(Q);</td>
       <td valign=\"top\">Return the constraints between the variables of a quaternion object<br>
       (shall be zero).</td>
   </tr>
   <tr><td valign=\"top\">w1 = <b>angularVelocity1</b>(Q, der_Q);</td>
       <td valign=\"top\">Return angular velocity resolved in frame 1 from
           quaternion object Q<br> and its derivative der_Q.
      </td>
   </tr>
   <tr><td valign=\"top\">w2 = <b>angularVelocity2</b>(Q, der_Q);</td>
       <td valign=\"top\">Return angular velocity resolved in frame 2 from
           quaternion object Q<br> and its derivative der_Q.
      </td>
   </tr>
   <tr><td valign=\"top\">v1 = <b>resolve1</b>(Q,v2);</td>
       <td valign=\"top\">Transform vector v2 from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">v2 = <b>resolve2</b>(Q,v1);</td>
       <td valign=\"top\">Transform vector v1 from frame 1 to frame 2.
      </td>
   </tr>
   <tr><td valign=\"top\">[v1,w1] = <b>multipleResolve1</b>(Q, [v2,w2]);</td>
       <td valign=\"top\">Transform several vectors from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">[v2,w2] = <b>multipleResolve2</b>(Q, [v1,w1]);</td>
       <td valign=\"top\">Transform several vectors from frame 1 to frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\">Q = <b>nullRotation</b>()</td>
       <td valign=\"top\">Return quaternion object R that does not rotate a frame.
   </tr>
   <tr><td valign=\"top\">Q_inv = <b>inverseRotation</b>(Q);</td>
       <td valign=\"top\">Return inverse quaternion object.
       </td>
   </tr>
   <tr><td valign=\"top\">Q_rel = <b>relativeRotation</b>(Q1,Q2);</td>
       <td valign=\"top\">Return relative quaternion object from two absolute
           quaternion objects.
       </td>
   </tr>
   <tr><td valign=\"top\">Q2 = <b>absoluteRotation</b>(Q1,Q_rel);</td>
       <td valign=\"top\">Return absolute quaternion object from another
           absolute<br> and a relative quaternion object.
       </td>
   </tr>
   <tr><td valign=\"top\">Q = <b>planarRotation</b>(e, angle);</td>
       <td valign=\"top\">Return quaternion object of a planar rotation.
       </td>
   </tr>
   <tr><td valign=\"top\">phi = <b>smallRotation</b>(Q);</td>
       <td valign=\"top\">Return rotation angles phi valid for a small rotation.
       </td>
   </tr>
   <tr><td valign=\"top\">Q = <b>from_T</b>(T);</td>
       <td valign=\"top\">Return quaternion object Q from transformation matrix T.
       </td>
   </tr>
   <tr><td valign=\"top\">Q = <b>from_T_inv</b>(T_inv);</td>
       <td valign=\"top\">Return quaternion object Q from inverse transformation matrix T_inv.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>to_T</b>(Q);</td>
       <td valign=\"top\">Return transformation matrix T from quaternion object Q.
   </tr>
   <tr><td valign=\"top\">T_inv = <b>to_T_inv</b>(Q);</td>
       <td valign=\"top\">Return inverse transformation matrix T_inv from quaternion object Q.
       </td>
   </tr>
 </table>
 </HTML>"));
        end Quaternions;

        package TransformationMatrices "Functions for transformation matrices"
          extends Modelica.Icons.Package;

          type Orientation "Orientation type defining rotation from a frame 1 into a frame 2 with a transformation matrix"
            extends Internal.TransformationMatrix;

            encapsulated function equalityConstraint "Return the constraint residues to express that two frames have the same orientation"
              import Modelica;
              import Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
              extends Modelica.Icons.Function;
              input TransformationMatrices.Orientation T1 "Orientation object to rotate frame 0 into frame 1";
              input TransformationMatrices.Orientation T2 "Orientation object to rotate frame 0 into frame 2";
              output Real residue[3] "The rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation (should be zero)";
            algorithm
              residue := {cross(T1[1, :], T1[2, :]) * T2[2, :], -cross(T1[1, :], T1[2, :]) * T2[1, :], T1[2, :] * T2[1, :]};
              annotation(Inline = true);
            end equalityConstraint;
            annotation(Documentation(info = "<html>
 <p>
 This type describes the <b>rotation</b> from a <b>frame 1</b> into a <b>frame 2</b>.
 An instance <b>R</b> of type <b>Orientation</b> has the following interpretation:
 </p>
 <pre>
    <b>T</b> = [<b>e</b><sub>x</sub>, <b>e</b><sub>y</sub>, <b>e</b><sub>z</sub>];
        e.g., <b>T</b> = [1,0,0; 0,1,0; 0,0,1]
 </pre>
 <p>
 where <b>e</b><sub>x</sub>,<b>e</b><sub>y</sub>,<b>e</b><sub>z</sub>
 are unit vectors in the direction of the x-axis, y-axis, and z-axis
 of frame 1, resolved in frame 2, respectively. Therefore, if <b>v</b><sub>1</sub>
 is vector <b>v</b> resolved in frame 1 and <b>v</b><sub>2</sub> is
 vector <b>v</b> resolved in frame 2, the following relationship holds:
 </p>
 <pre>
     <b>v</b><sub>2</sub> = <b>T</b> * <b>v</b><sub>1</sub>
 </pre>
 <p>
 The <b>inverse</b> orientation
 <b>T_inv</b> = <b>T</b><sup>T</sup> describes the rotation
 from frame 2 into frame 1.
 </p>
 <p>
 Since the orientation is described by 9 variables, there are
 6 constraints between these variables. These constraints
 are defined in function <b>TransformationMatrices.orientationConstraint</b>.
 </p>
 <p>
 Note, that in the MultiBody library the rotation object is
 never directly accessed but only with the access functions provided
 in package TransformationMatrices. As a consequence, other implementations of
 Rotation can be defined by adapting this package correspondingly.
 </p>
 </html>"));
          end Orientation;

          function resolve1 "Transform vector from frame 2 to frame 1"
            extends Modelica.Icons.Function;
            input TransformationMatrices.Orientation T "Orientation object to rotate frame 1 into frame 2";
            input Real v2[3] "Vector in frame 2";
            output Real v1[3] "Vector in frame 1";
          algorithm
            v1 := transpose(T) * v2;
            annotation(Inline = true);
          end resolve1;

          function resolve2 "Transform vector from frame 1 to frame 2"
            extends Modelica.Icons.Function;
            input TransformationMatrices.Orientation T "Orientation object to rotate frame 1 into frame 2";
            input Real v1[3] "Vector in frame 1";
            output Real v2[3] "Vector in frame 2";
          algorithm
            v2 := T * v1;
            annotation(Inline = true);
          end resolve2;

          function absoluteRotation "Return absolute orientation object from another absolute and a relative orientation object"
            extends Modelica.Icons.Function;
            input TransformationMatrices.Orientation T1 "Orientation object to rotate frame 0 into frame 1";
            input TransformationMatrices.Orientation T_rel "Orientation object to rotate frame 1 into frame 2";
            output TransformationMatrices.Orientation T2 "Orientation object to rotate frame 0 into frame 2";
          algorithm
            T2 := T_rel * T1;
            annotation(Inline = true);
          end absoluteRotation;

          function planarRotation "Return orientation object of a planar rotation"
            import Modelica.Math;
            extends Modelica.Icons.Function;
            input Real e[3](each final unit = "1") "Normalized axis of rotation (must have length=1)";
            input Modelica.SIunits.Angle angle "Rotation angle to rotate frame 1 into frame 2 along axis e";
            output TransformationMatrices.Orientation T "Orientation object to rotate frame 1 into frame 2";
          algorithm
            T := [e] * transpose([e]) + (identity(3) - [e] * transpose([e])) * Math.cos(angle) - skew(e) * Math.sin(angle);
            annotation(Inline = true);
          end planarRotation;

          function axisRotation "Return rotation object to rotate around one frame axis"
            extends Modelica.Icons.Function;
            input Integer axis(min = 1, max = 3) "Rotate around 'axis' of frame 1";
            input Modelica.SIunits.Angle angle "Rotation angle to rotate frame 1 into frame 2 along 'axis' of frame 1";
            output TransformationMatrices.Orientation T "Orientation object to rotate frame 1 into frame 2";
          algorithm
            T := if axis == 1 then [1, 0, 0; 0, cos(angle), sin(angle); 0, -sin(angle), cos(angle)] else if axis == 2 then [cos(angle), 0, -sin(angle); 0, 1, 0; sin(angle), 0, cos(angle)] else [cos(angle), sin(angle), 0; -sin(angle), cos(angle), 0; 0, 0, 1];
            annotation(Inline = true);
          end axisRotation;

          function from_nxy "Return orientation object from n_x and n_y vectors"
            extends Modelica.Icons.Function;
            input Real n_x[3](each final unit = "1") "Vector in direction of x-axis of frame 2, resolved in frame 1";
            input Real n_y[3](each final unit = "1") "Vector in direction of y-axis of frame 2, resolved in frame 1";
            output TransformationMatrices.Orientation T "Orientation object to rotate frame 1 into frame 2";
          protected
            Real abs_n_x = sqrt(n_x * n_x);
            Real e_x[3](each final unit = "1") = if abs_n_x < 1e-10 then {1, 0, 0} else n_x / abs_n_x;
            Real n_z_aux[3](each final unit = "1") = cross(e_x, n_y);
            Real n_y_aux[3](each final unit = "1") = if n_z_aux * n_z_aux > 1e-06 then n_y else if abs(e_x[1]) > 1e-06 then {0, 1, 0} else {1, 0, 0};
            Real e_z_aux[3](each final unit = "1") = cross(e_x, n_y_aux);
            Real e_z[3](each final unit = "1") = e_z_aux / sqrt(e_z_aux * e_z_aux);
          algorithm
            T := {e_x, cross(e_z, e_x), e_z};
            annotation(Documentation(info = "<html>
 <p>
 It is assumed that the two input vectors n_x and n_y are
 resolved in frame 1 and are directed along the x and y axis
 of frame 2 (i.e., n_x and n_y are orthogonal to each other)
 The function returns the orientation object T to rotate from
 frame 1 to frame 2.
 </p>
 <p>
 The function is robust in the sense that it returns always
 an orientation object T, even if n_y is not orthogonal to n_x.
 This is performed in the following way:
 </p>
 <p>
 If n_x and n_y are not orthogonal to each other, first a unit
 vector e_y is determined that is orthogonal to n_x and is lying
 in the plane spanned by n_x and n_y. If n_x and n_y are parallel
 or nearly parallel to each other, a vector e_y is selected
 arbitrarily such that e_x and e_y are orthogonal to each other.
 </p>
 </html>"));
          end from_nxy;
          annotation(Documentation(info = "<HTML>
 <p>
 Package <b>Frames.TransformationMatrices</b> contains type definitions and
 functions to transform rotational frame quantities using
 transformation matrices.
 </p>
 <h4>Content</h4>
 <p>In the table below an example is given for every function definition.
 The used variables have the following declaration:
 </p>
 <pre>
    Orientation T, T1, T2, T_rel, T_inv;
    Real[3]     v1, v2, w1, w2, n_x, n_y, n_z, e, e_x, res_ori, phi;
    Real[6]     res_equal;
    Real        L, angle;
 </pre>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><th><b><i>Function/type</i></b></th><th><b><i>Description</i></b></th></tr>
   <tr><td valign=\"top\"><b>Orientation T;</b></td>
       <td valign=\"top\">New type defining an orientation object that describes<br>
           the rotation of frame 1 into frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\"><b>der_Orientation</b> der_T;</td>
       <td valign=\"top\">New type defining the first time derivative
          of Frames.Orientation.
       </td>
   </tr>
   <tr><td valign=\"top\">res_ori = <b>orientationConstraint</b>(T);</td>
       <td valign=\"top\">Return the constraints between the variables of an orientation object<br>
       (shall be zero).</td>
   </tr>
   <tr><td valign=\"top\">w1 = <b>angularVelocity1</b>(T, der_T);</td>
       <td valign=\"top\">Return angular velocity resolved in frame 1 from
           orientation object T<br> and its derivative der_T.
      </td>
   </tr>
   <tr><td valign=\"top\">w2 = <b>angularVelocity2</b>(T, der_T);</td>
       <td valign=\"top\">Return angular velocity resolved in frame 2 from
           orientation object T<br> and its derivative der_T.
      </td>
   </tr>
   <tr><td valign=\"top\">v1 = <b>resolve1</b>(T,v2);</td>
       <td valign=\"top\">Transform vector v2 from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">v2 = <b>resolve2</b>(T,v1);</td>
       <td valign=\"top\">Transform vector v1 from frame 1 to frame 2.
      </td>
   </tr>
   <tr><td valign=\"top\">[v1,w1] = <b>multipleResolve1</b>(T, [v2,w2]);</td>
       <td valign=\"top\">Transform several vectors from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">[v2,w2] = <b>multipleResolve2</b>(T, [v1,w1]);</td>
       <td valign=\"top\">Transform several vectors from frame 1 to frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\">D1 = <b>resolveDyade1</b>(T,D2);</td>
       <td valign=\"top\">Transform second order tensor D2 from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">D2 = <b>resolveDyade2</b>(T,D1);</td>
       <td valign=\"top\">Transform second order tensor D1 from frame 1 to frame 2.
      </td>
   </tr>
   <tr><td valign=\"top\">T= <b>nullRotation</b>()</td>
       <td valign=\"top\">Return orientation object T that does not rotate a frame.
   </tr>
   <tr><td valign=\"top\">T_inv = <b>inverseRotation</b>(T);</td>
       <td valign=\"top\">Return inverse orientation object.
       </td>
   </tr>
   <tr><td valign=\"top\">T_rel = <b>relativeRotation</b>(T1,T2);</td>
       <td valign=\"top\">Return relative orientation object from two absolute
           orientation objects.
       </td>
   </tr>
   <tr><td valign=\"top\">T2 = <b>absoluteRotation</b>(T1,T_rel);</td>
       <td valign=\"top\">Return absolute orientation object from another
           absolute<br> and a relative orientation object.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>planarRotation</b>(e, angle);</td>
       <td valign=\"top\">Return orientation object of a planar rotation.
       </td>
   </tr>
   <tr><td valign=\"top\">angle = <b>planarRotationAngle</b>(e, v1, v2);</td>
       <td valign=\"top\">Return angle of a planar rotation, given the rotation axis<br>
         and the representations of a vector in frame 1 and frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>axisRotation</b>(i, angle);</td>
       <td valign=\"top\">Return orientation object T for rotation around axis i of frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>axesRotations</b>(sequence, angles);</td>
       <td valign=\"top\">Return rotation object to rotate in sequence around 3 axes. Example:<br>
           T = axesRotations({1,2,3},{90,45,-90});
       </td>
   </tr>
   <tr><td valign=\"top\">angles = <b>axesRotationsAngles</b>(T, sequence);</td>
       <td valign=\"top\">Return the 3 angles to rotate in sequence around 3 axes to<br>
           construct the given orientation object.
       </td>
   </tr>
   <tr><td valign=\"top\">phi = <b>smallRotation</b>(T);</td>
       <td valign=\"top\">Return rotation angles phi valid for a small rotation.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>from_nxy</b>(n_x, n_y);</td>
       <td valign=\"top\">Return orientation object from n_x and n_y vectors.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>from_nxz</b>(n_x, n_z);</td>
       <td valign=\"top\">Return orientation object from n_x and n_z vectors.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_T</b>(T);</td>
       <td valign=\"top\">Return orientation object R from transformation matrix T.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_T_inv</b>(T_inv);</td>
       <td valign=\"top\">Return orientation object R from inverse transformation matrix T_inv.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>from_Q</b>(Q);</td>
       <td valign=\"top\">Return orientation object T from quaternion orientation object Q.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>to_T</b>(R);</td>
       <td valign=\"top\">Return transformation matrix T from orientation object R.
   </tr>
   <tr><td valign=\"top\">T_inv = <b>to_T_inv</b>(R);</td>
       <td valign=\"top\">Return inverse transformation matrix T_inv from orientation object R.
       </td>
   </tr>
   <tr><td valign=\"top\">Q = <b>to_Q</b>(T);</td>
       <td valign=\"top\">Return quaternion orientation object Q from orientation object T.
       </td>
   </tr>
   <tr><td valign=\"top\">exy = <b>to_exy</b>(T);</td>
       <td valign=\"top\">Return [e_x, e_y] matrix of an orientation object T, <br>
           with e_x and e_y vectors of frame 2, resolved in frame 1.
   </tr>
 </table>
 </HTML>"));
        end TransformationMatrices;

        package Internal "Internal definitions that may be removed or changed (do not use)"
          extends Modelica.Icons.InternalPackage;
          type TransformationMatrix = Real[3, 3];
          type QuaternionBase = Real[4];

          function maxWithoutEvent "Maximum of the input arguments, without event and function can be differentiated"
            extends Modelica.Icons.Function;
            input Real u1;
            input Real u2;
            output Real y;
          algorithm
            y := if u1 > u2 then u1 else u2;
            annotation(Inline = false, derivative = maxWithoutEvent_d, Documentation(info = "<html>
 <p>
 Function <b>maxWithoutEvent</b> returns the maximum of its two
 input arguments. This functions is used instead of the Modelica
 built-in function \"max\" or an if-statement with \"noEvent(..)\",
 in order that the function can be differentiated by providing
 the first and second derivatives with additional functions.
 Note, from a strict mathematical point of view the derivatives
 will be wrong, since a Dirac impulses would occur in the
 derivatives. For the special cases as used in the MultiBody
 library, this is irrelevant and therefore the usage of the function is correct.
 </p>
 </html>"));
          end maxWithoutEvent;

          function maxWithoutEvent_d "First derivative of function maxWithoutEvent(..)"
            extends Modelica.Icons.Function;
            input Real u1;
            input Real u2;
            input Real u1_d;
            input Real u2_d;
            output Real y_d;
          algorithm
            y_d := if u1 > u2 then u1_d else u2_d;
            annotation(Inline = false, derivative(order = 2) = maxWithoutEvent_dd);
          end maxWithoutEvent_d;

          function maxWithoutEvent_dd "First derivative of function maxWithoutEvent_d(..)"
            extends Modelica.Icons.Function;
            input Real u1;
            input Real u2;
            input Real u1_d;
            input Real u2_d;
            input Real u1_dd;
            input Real u2_dd;
            output Real y_dd;
          algorithm
            y_dd := if u1 > u2 then u1_dd else u2_dd;
            annotation(Inline = true);
          end maxWithoutEvent_dd;

          function resolve1_der "Derivative of function Frames.resolve1(..)"
            import Modelica.Mechanics.MultiBody.Frames;
            extends Modelica.Icons.Function;
            input Orientation R "Orientation object to rotate frame 1 into frame 2";
            input Real v2[3] "Vector resolved in frame 2";
            input Real v2_der[3] "= der(v2)";
            output Real v1_der[3] "Derivative of vector v resolved in frame 1";
          algorithm
            v1_der := Frames.resolve1(R, v2_der + cross(R.w, v2));
            annotation(Inline = true);
          end resolve1_der;

          function resolve2_der "Derivative of function Frames.resolve2(..)"
            import Modelica.Mechanics.MultiBody.Frames;
            extends Modelica.Icons.Function;
            input Orientation R "Orientation object to rotate frame 1 into frame 2";
            input Real v1[3] "Vector resolved in frame 1";
            input Real v1_der[3] "= der(v1)";
            output Real v2_der[3] "Derivative of vector v resolved in frame 2";
          algorithm
            v2_der := Frames.resolve2(R, v1_der) - cross(R.w, Frames.resolve2(R, v1));
            annotation(Inline = true);
          end resolve2_der;

          function resolveRelative_der "Derivative of function Frames.resolveRelative(..)"
            import Modelica.Mechanics.MultiBody.Frames;
            extends Modelica.Icons.Function;
            input Real v1[3] "Vector in frame 1";
            input Orientation R1 "Orientation object to rotate frame 0 into frame 1";
            input Orientation R2 "Orientation object to rotate frame 0 into frame 2";
            input Real v1_der[3] "= der(v1)";
            output Real v2_der[3] "Derivative of vector v resolved in frame 2";
          algorithm
            v2_der := Frames.resolveRelative(v1_der + cross(R1.w, v1), R1, R2) - cross(R2.w, Frames.resolveRelative(v1, R1, R2));
            /* skew(w) = T*der(T'), -skew(w) = der(T)*T'
            
                 v2 = T2*(T1'*v1)
                 der(v2) = der(T2)*T1'*v1 + T2*der(T1')*v1 + T2*T1'*der(v1)
                         = der(T2)*T2'*T2*T1'*v1 + T2*T1'*T1*der(T1')*v1 + T2*T1'*der(v1)
                         = -w2 x (T2*T1'*v1) + T2*T1'*(w1 x v1) + T2*T1'*der(v1)
                         = T2*T1'*(der(v1) + w1 x v1) - w2 x (T2*T1'*v1)
              */
            annotation(Inline = true);
          end resolveRelative_der;
        end Internal;
        annotation(Documentation(info = "<HTML>
 <p>
 Package <b>Frames</b> contains type definitions and
 functions to transform rotational frame quantities. The basic idea is to
 hide the actual definition of an <b>orientation</b> in this package
 by providing essentially type <b>Orientation</b> together with
 <b>functions</b> operating on instances of this type.
 </p>
 <h4>Content</h4>
 <p>In the table below an example is given for every function definition.
 The used variables have the following declaration:
 </p>
 <pre>
    Frames.Orientation R, R1, R2, R_rel, R_inv;
    Real[3,3]   T, T_inv;
    Real[3]     v1, v2, w1, w2, n_x, n_y, n_z, e, e_x, res_ori, phi;
    Real[6]     res_equal;
    Real        L, angle;
 </pre>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><th><b><i>Function/type</i></b></th><th><b><i>Description</i></b></th></tr>
   <tr><td valign=\"top\"><b>Orientation R;</b></td>
       <td valign=\"top\">New type defining an orientation object that describes<br>
           the rotation of frame 1 into frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\">res_ori = <b>orientationConstraint</b>(R);</td>
       <td valign=\"top\">Return the constraints between the variables of an orientation object<br>
       (shall be zero).</td>
   </tr>
   <tr><td valign=\"top\">w1 = <b>angularVelocity1</b>(R);</td>
       <td valign=\"top\">Return angular velocity resolved in frame 1 from
           orientation object R.
      </td>
   </tr>
   <tr><td valign=\"top\">w2 = <b>angularVelocity2</b>(R);</td>
       <td valign=\"top\">Return angular velocity resolved in frame 2 from
           orientation object R.
      </td>
   </tr>
   <tr><td valign=\"top\">v1 = <b>resolve1</b>(R,v2);</td>
       <td valign=\"top\">Transform vector v2 from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">v2 = <b>resolve2</b>(R,v1);</td>
       <td valign=\"top\">Transform vector v1 from frame 1 to frame 2.
      </td>
   </tr>
   <tr><td valign=\"top\">v2 = <b>resolveRelative</b>(v1,R1,R2);</td>
       <td valign=\"top\">Transform vector v1 from frame 1 to frame 2
           using absolute orientation objects R1 of frame 1 and R2 of frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\">D1 = <b>resolveDyade1</b>(R,D2);</td>
       <td valign=\"top\">Transform second order tensor D2 from frame 2 to frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">D2 = <b>resolveDyade2</b>(R,D1);</td>
       <td valign=\"top\">Transform second order tensor D1 from frame 1 to frame 2.
      </td>
   </tr>
   <tr><td valign=\"top\">R = <b>nullRotation</b>()</td>
       <td valign=\"top\">Return orientation object R that does not rotate a frame.
   </tr>
   <tr><td valign=\"top\">R_inv = <b>inverseRotation</b>(R);</td>
       <td valign=\"top\">Return inverse orientation object.
       </td>
   </tr>
   <tr><td valign=\"top\">R_rel = <b>relativeRotation</b>(R1,R2);</td>
       <td valign=\"top\">Return relative orientation object from two absolute
           orientation objects.
       </td>
   </tr>
   <tr><td valign=\"top\">R2 = <b>absoluteRotation</b>(R1,R_rel);</td>
       <td valign=\"top\">Return absolute orientation object from another
           absolute<br> and a relative orientation object.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>planarRotation</b>(e, angle, der_angle);</td>
       <td valign=\"top\">Return orientation object of a planar rotation.
       </td>
   </tr>
   <tr><td valign=\"top\">angle = <b>planarRotationAngle</b>(e, v1, v2);</td>
       <td valign=\"top\">Return angle of a planar rotation, given the rotation axis<br>
         and the representations of a vector in frame 1 and frame 2.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>axisRotation</b>(axis, angle, der_angle);</td>
       <td valign=\"top\">Return orientation object R to rotate around angle along axis of frame 1.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>axesRotations</b>(sequence, angles, der_angles);</td>
       <td valign=\"top\">Return rotation object to rotate in sequence around 3 axes. Example:<br>
           R = axesRotations({1,2,3},{pi/2,pi/4,-pi}, zeros(3));
       </td>
   </tr>
   <tr><td valign=\"top\">angles = <b>axesRotationsAngles</b>(R, sequence);</td>
       <td valign=\"top\">Return the 3 angles to rotate in sequence around 3 axes to<br>
           construct the given orientation object.
       </td>
   </tr>
   <tr><td valign=\"top\">phi = <b>smallRotation</b>(R);</td>
       <td valign=\"top\">Return rotation angles phi valid for a small rotation R.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_nxy</b>(n_x, n_y);</td>
       <td valign=\"top\">Return orientation object from n_x and n_y vectors.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_nxz</b>(n_x, n_z);</td>
       <td valign=\"top\">Return orientation object from n_x and n_z vectors.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_T</b>(T,w);</td>
       <td valign=\"top\">Return orientation object R from transformation matrix T and
           its angular velocity w.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_T2</b>(T,der(T));</td>
       <td valign=\"top\">Return orientation object R from transformation matrix T and
           its derivative der(T).
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_T_inv</b>(T_inv,w);</td>
       <td valign=\"top\">Return orientation object R from inverse transformation matrix T_inv and
           its angular velocity w.
       </td>
   </tr>
   <tr><td valign=\"top\">R = <b>from_Q</b>(Q,w);</td>
       <td valign=\"top\">Return orientation object R from quaternion orientation object Q
           and its angular velocity w.
       </td>
   </tr>
   <tr><td valign=\"top\">T = <b>to_T</b>(R);</td>
       <td valign=\"top\">Return transformation matrix T from orientation object R.
   </tr>
   <tr><td valign=\"top\">T_inv = <b>to_T_inv</b>(R);</td>
       <td valign=\"top\">Return inverse transformation matrix T_inv from orientation object R.
       </td>
   </tr>
   <tr><td valign=\"top\">Q = <b>to_Q</b>(R);</td>
       <td valign=\"top\">Return quaternion orientation object Q from orientation object R.
       </td>
   </tr>
   <tr><td valign=\"top\">exy = <b>to_exy</b>(R);</td>
       <td valign=\"top\">Return [e_x, e_y] matrix of an orientation object R, <br>
           with e_x and e_y vectors of frame 2, resolved in frame 1.
   </tr>
   <tr><td valign=\"top\">L = <b>length</b>(n_x);</td>
       <td valign=\"top\">Return length L of a vector n_x.
       </td>
   </tr>
   <tr><td valign=\"top\">e_x = <b>normalize</b>(n_x);</td>
       <td valign=\"top\">Return normalized vector e_x of n_x such that length of e_x is one.
       </td>
   </tr>
   <tr><td valign=\"top\">e = <b>axis</b>(i);</td>
       <td valign=\"top\">Return unit vector e directed along axis i
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Frames.Quaternions\">Quaternions</a></td>
       <td valign=\"top\"><b>Package</b> with functions to transform rotational frame quantities based
           on quaternions (also called Euler parameters).
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Frames.TransformationMatrices\">TransformationMatrices</a></td>
       <td valign=\"top\"><b>Package</b> with functions to transform rotational frame quantities based
           on transformation matrices.
       </td>
   </tr>
 </table>
 </HTML>"), Icon(graphics = {Line(points = {{-2, -18}, {80, -60}}, color = {95, 95, 95}), Line(points = {{-2, -18}, {-2, 80}}, color = {95, 95, 95}), Line(points = {{-78, -56}, {-2, -18}}, color = {95, 95, 95})}));
      end Frames;

      package Interfaces "Connectors and partial models for 3-dim. mechanical components"
        extends Modelica.Icons.InterfacesPackage;

        connector Frame "Coordinate system fixed to the component with one cut-force and cut-torque (no icon)"
          SI.Position r_0[3] "Position vector from world frame to the connector frame origin, resolved in world frame";
          Frames.Orientation R "Orientation object to rotate the world frame into the connector frame";
          flow SI.Force f[3] "Cut-force resolved in connector frame" annotation(unassignedMessage = "All Forces cannot be uniquely calculated.
            The reason could be that the mechanism contains
            a planar loop or that joints constrain the
            same motion. For planar loops, use for one
            revolute joint per loop the joint
            Joints.RevolutePlanarLoopConstraint instead of
            Joints.Revolute.");
          flow SI.Torque t[3] "Cut-torque resolved in connector frame";
          annotation(Documentation(info = "<html>
 <p>
 Basic definition of a coordinate system that is fixed to a mechanical
 component. In the origin of the coordinate system the cut-force
 and the cut-torque is acting. This component has no icon definition
 and is only used by inheritance from frame connectors to define
 different icons.
 </p>
 </html>"));
        end Frame;

        connector Frame_a "Coordinate system fixed to the component with one cut-force and cut-torque (filled rectangular icon)"
          extends Frame;
          annotation(defaultComponentName = "frame_a", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.16), graphics = {Rectangle(extent = {{-10, 10}, {10, -10}}, lineColor = {95, 95, 95}, lineThickness = 0.5), Rectangle(extent = {{-30, 100}, {30, -100}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.16), graphics = {Text(extent = {{-140, -50}, {140, -88}}, lineColor = {0, 0, 0}, textString = "%name"), Rectangle(extent = {{-12, 40}, {12, -40}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Basic definition of a coordinate system that is fixed to a mechanical
 component. In the origin of the coordinate system the cut-force
 and the cut-torque is acting.
 This component has a filled rectangular icon.
 </p>
 </html>"));
        end Frame_a;

        connector Frame_b "Coordinate system fixed to the component with one cut-force and cut-torque (non-filled rectangular icon)"
          extends Frame;
          annotation(defaultComponentName = "frame_b", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.16), graphics = {Rectangle(extent = {{-10, 10}, {10, -10}}, lineColor = {95, 95, 95}, lineThickness = 0.5), Rectangle(extent = {{-30, 100}, {30, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.16), graphics = {Text(extent = {{-140, -50}, {140, -88}}, lineColor = {0, 0, 0}, textString = "%name"), Rectangle(extent = {{-12, 40}, {12, -40}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Basic definition of a coordinate system that is fixed to a mechanical
 component. In the origin of the coordinate system the cut-force
 and the cut-torque is acting. This component has a non-filled rectangular icon.
 </p>
 </html>"));
        end Frame_b;

        connector Frame_resolve "Coordinate system fixed to the component used to express in which
          coordinate system a vector is resolved (non-filled rectangular icon)"
          extends Frame;
          annotation(defaultComponentName = "frame_resolve", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.16), graphics = {Rectangle(extent = {{-10, 10}, {10, -10}}, lineColor = {95, 95, 95}, pattern = LinePattern.Dot), Rectangle(extent = {{-30, 100}, {30, -100}}, lineColor = {95, 95, 95}, pattern = LinePattern.Dot, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.16), graphics = {Text(extent = {{-140, -50}, {140, -88}}, lineColor = {0, 0, 0}, textString = "%name"), Rectangle(extent = {{-12, 40}, {12, -40}}, lineColor = {95, 95, 95}, pattern = LinePattern.Dot, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Basic definition of a coordinate system that is fixed to a mechanical
 component. In the origin of the coordinate system the cut-force
 and the cut-torque is acting. This coordinate system is used to
 express in which coordinate system a vector is resolved.
 A component that uses a Frame_resolve connector has to set the
 cut-force and cut-torque of this frame to zero. When connecting
 from a Frame_resolve connector to another frame connector,
 by default the connecting line has line style \"dotted\".
 This component has a non-filled rectangular icon.
 </p>
 </html>"));
        end Frame_resolve;

        partial model PartialTwoFrames "Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected"
          Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
        equation
          assert(cardinality(frame_a) > 0, "Connector frame_a of component is not connected");
          assert(cardinality(frame_b) > 0, "Connector frame_b of component is not connected");
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-136, -25}, {-100, -50}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{100, -25}, {136, -50}}, lineColor = {128, 128, 128}, textString = "b")}), Documentation(info = "<HTML>
 <p>
 This partial model provides two frame connectors, access to the world
 object and an assert to check that both frame connectors are connected.
 Therefore, inherit from this partial model if the two frame connectors are
 needed and if the two frame connectors should be connected for a correct model.
 </p>
 </HTML>"));
        end PartialTwoFrames;

        partial model PartialOneFrame_b "Base model for components providing one frame_b connector + outer world + assert to guarantee that the component is connected"
          Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
        equation
          assert(cardinality(frame_b) > 0, "Connector frame_b of component is not connected");
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{94, -20}, {130, -45}}, lineColor = {128, 128, 128}, textString = "b")}), Documentation(info = "<HTML>
 <p>
 This partial model provides one frame_b connector, access to the world
 object and an assert to check that the frame_b connector is connected.
 Therefore, inherit from this partial model if the frame_b connector is
 needed and if this connector should be connected for a correct model.
 </p>
 </HTML>"));
        end PartialOneFrame_b;

        partial model PartialElementaryJoint "Base model for elementary joints (has two frames + outer world + assert to guarantee that the joint is connected)"
          Interfaces.Frame_a frame_a "Coordinate system fixed to the joint with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the joint with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
        equation
          Connections.branch(frame_a.R, frame_b.R);
          assert(cardinality(frame_a) > 0, "Connector frame_a of joint object is not connected");
          assert(cardinality(frame_b) > 0, "Connector frame_b of joint object is not connected");
          annotation(Documentation(info = "<HTML>
 <p>
 All <b>elementary joints</b> should inherit from this base model, i.e.,
 joints that are directly defined by equations, provided they compute
 either the rotation object of frame_b from the rotation object of frame_a
 and from relative quantities (or vice versa), or there is a constraint
 equation between the rotation objects of the two frames.
 In other cases, a joint object should inherit from
 <b>Interfaces.PartialTwoFrames</b> (e.g., joint Spherical, because there
 is no constraint between the rotation objects of frame_a and frame_b
 or joint Cylindrical because it is not an elementary joint).
 </p>
 <p>
 This partial model provides two frame connectors, a \"Connections.branch\"
 between frame_a and frame_b, access to the world
 object and an assert to check that both frame connectors are connected.
 </p>
 </html>"));
        end PartialElementaryJoint;

        partial model PartialLineForce "Base model for line force elements"
          parameter SI.Position s_small = 1e-06 "Prevent zero-division if relative distance s=0" annotation(Dialog(tab = "Advanced"));
          parameter Boolean fixedRotationAtFrame_a = false "=true, if rotation frame_a.R is fixed (to directly connect line forces)" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Advanced", group = "If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces"));
          parameter Boolean fixedRotationAtFrame_b = false "=true, if rotation frame_b.R is fixed (to directly connect line forces)" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Advanced", group = "If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces"));
          Interfaces.Frame_a frame_a "Coordinate system fixed to the force element with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the force element with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          SI.Force f "Line force acting on frame_a and on frame_b (positive, if acting on frame_b and directed from frame_a to frame_b)";
          SI.Position s "(Guarded) distance between the origin of frame_a and the origin of frame_b (>= s_small))";
          Real e_a[3](each final unit = "1") "Unit vector on the line connecting the origin of frame_a with the origin of frame_b resolved in frame_a (directed from frame_a to frame_b)";
          Modelica.SIunits.Position r_rel_a[3] "Position vector from origin of frame_a to origin of frame_b, resolved in frame_a";
        protected
          outer Modelica.Mechanics.MultiBody.World world;
        equation
          assert(cardinality(frame_a) > 0, "Connector frame_a of line force object is not connected");
          assert(cardinality(frame_b) > 0, "Connector frame_b of line force object is not connected");
          // Determine distance s and n_a
          r_rel_a = Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
          s = noEvent(max(Modelica.Math.Vectors.length(r_rel_a), s_small));
          e_a = r_rel_a / s;
          /* Determine forces and torques at frame_a and frame_b */
          frame_a.f = -e_a * f;
          frame_b.f = -Frames.resolve2(Frames.relativeRotation(frame_a.R, frame_b.R), frame_a.f);
          // Additional equations, if direct connections of line forces
          if fixedRotationAtFrame_a then
            Connections.root(frame_a.R);
            frame_a.R = Frames.nullRotation();
          else
            frame_a.t = zeros(3);
          end if;
          if fixedRotationAtFrame_b then
            Connections.root(frame_b.R);
            frame_b.R = Frames.nullRotation();
          else
            frame_b.t = zeros(3);
          end if;
          annotation(Documentation(info = "<HTML>
 <p>
 All <b>line force</b> elements should be based on this base model.
 This model defines frame_a and frame_b, computes the relative
 distance <b>s</b> and provides the force and torque
 balance of the cut-forces and cut-torques at frame_a and
 frame_b, respectively. In sub-models, only the line force <b>f</b>,
 acting at frame_b on the line from frame_a to frame_b, as a function
 of the relative distance <b>s</b> and its derivative <b>der</b>(<b>s</b>)
 has to be defined. Example:
 </p>
 <pre>
    <b>model</b> Spring
       <b>parameter</b> Real c \"spring constant\",
       <b>parameter</b> Real s_unstretched \"unstretched spring length\";
       <b>extends</b> Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
    <b>equation</b>
       f = c*(s-s_unstretched);
    <b>end</b> Spring;
 </pre>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-136, -44}, {-100, -19}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{100, -42}, {136, -17}}, lineColor = {128, 128, 128}, textString = "b"), Ellipse(visible = fixedRotationAtFrame_a, extent = {{-70, 30}, {-130, -30}}, lineColor = {255, 0, 0}), Text(visible = fixedRotationAtFrame_a, extent = {{-62, 50}, {-140, 30}}, lineColor = {255, 0, 0}, textString = "R=0"), Ellipse(visible = fixedRotationAtFrame_b, extent = {{70, 30}, {130, -30}}, lineColor = {255, 0, 0}), Text(visible = fixedRotationAtFrame_b, extent = {{62, 50}, {140, 30}}, lineColor = {255, 0, 0}, textString = "R=0")}));
        end PartialLineForce;

        partial model PartialVisualizer "Base model for visualizers (has a frame_a on the left side + outer world + assert to guarantee that the component is connected)"
          Interfaces.Frame_a frame_a "Coordinate system in which visualization data is resolved" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
        equation
          assert(cardinality(frame_a) > 0, "Connector frame_a of visualizer object is not connected");
          annotation(Documentation(info = "<html>
 <p>
 This partial model provides one frame_a connector, access to the world
 object and an assert to check that the frame_a connector is connected.
 It is used by inheritance from all visualizer objects.
 </p>
 </html>"));
        end PartialVisualizer;

        model ZeroPosition "Set absolute position vector of frame_resolve to a zero vector and the orientation object to a null rotation"
          extends Modelica.Blocks.Icons.Block;
          Interfaces.Frame_resolve frame_resolve annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
        equation
          Connections.root(frame_resolve.R);
          frame_resolve.R = Modelica.Mechanics.MultiBody.Frames.nullRotation();
          frame_resolve.r_0 = zeros(3);
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-74, 24}, {80, -20}}, lineColor = {0, 0, 0}, textString = "r = 0")}));
        end ZeroPosition;
        annotation(Documentation(info = "<html>
 <p>
 This package contains connectors and partial models (i.e., models
 that are only used to build other models) of the MultiBody library.
 </p>
 </html>"));
      end Interfaces;

      package Joints "Components that constrain the motion between two frames"
        extends Modelica.Icons.Package;

        model Prismatic "Prismatic joint (1 translational degree-of-freedom, 2 potential states, optional axis flange)"
          extends Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJoint;
          Modelica.Mechanics.Translational.Interfaces.Flange_a axis if useAxisFlange "1-dim. translational flange that drives the joint" annotation(Placement(transformation(extent = {{90, 50}, {70, 70}}, rotation = 0)));
          Modelica.Mechanics.Translational.Interfaces.Flange_b support if useAxisFlange "1-dim. translational flange of the drive drive support (assumed to be fixed in the world frame, NOT in the joint)" annotation(Placement(transformation(extent = {{-30, 50}, {-50, 70}}, rotation = 0)));
          parameter Boolean useAxisFlange = false "= true, if axis flange is enabled" annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter Modelica.Mechanics.MultiBody.Types.Axis n = {1, 0, 0} "Axis of translation resolved in frame_a (= same as in frame_b)" annotation(Evaluate = true);
          constant SI.Position s_offset = 0 "Relative distance offset (distance between frame_a and frame_b = s_offset + s)" annotation(Evaluate = false);
          parameter Types.Axis boxWidthDirection = {0, 1, 0} "Vector in width direction of box, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance boxWidth = world.defaultJointWidth "Width of prismatic joint box" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance boxHeight = boxWidth "Height of prismatic joint box" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color boxColor = Modelica.Mechanics.MultiBody.Types.Defaults.JointColor "Color of prismatic joint box" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter StateSelect stateSelect = StateSelect.prefer "Priority to use distance s and v=der(s) as states" annotation(Dialog(tab = "Advanced"));
          final parameter Real e[3](each final unit = "1") = Modelica.Math.Vectors.normalizeWithAssert(n) "Unit vector in direction of prismatic axis n";
          SI.Position s(start = 0, final stateSelect = stateSelect) "Relative distance between frame_a and frame_b" annotation(unassignedMessage = "
            The relative distance s of a prismatic joint cannot be determined.
            Possible reasons:
            - A non-zero mass might be missing on either side of the parts
              connected to the prismatic joint.
            - Too many StateSelect.always are defined and the model
              has less degrees of freedom as specified with this setting
              (remove all StateSelect.always settings).
            ");
          SI.Velocity v(start = 0, final stateSelect = stateSelect) "First derivative of s (relative velocity)";
          SI.Acceleration a(start = 0) "Second derivative of s (relative acceleration)";
          SI.Force f "Actuation force in direction of joint axis";
        protected
          Visualizers.Advanced.Shape box(shapeType = "box", color = boxColor, specularCoefficient = specularCoefficient, length = if noEvent(abs(s + s_offset) > 1e-06) then s + s_offset else 1e-06, width = boxWidth, height = boxHeight, lengthDirection = e, widthDirection = boxWidthDirection, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
          Translational.Components.Fixed fixed annotation(Placement(transformation(extent = {{-50, 30}, {-30, 50}})));
          Translational.Interfaces.InternalSupport internalAxis(f = f) annotation(Placement(transformation(extent = {{70, 50}, {90, 30}})));
          Translational.Sources.ConstantForce constantForce(f_constant = 0) if not useAxisFlange annotation(Placement(transformation(extent = {{40, 30}, {60, 50}})));
        equation
          v = der(s);
          a = der(v);
          // relationships between kinematic quantities of frame_a and of frame_b
          frame_b.r_0 = frame_a.r_0 + Frames.resolve1(frame_a.R, e * (s_offset + s));
          frame_b.R = frame_a.R;
          // Force and torque balance
          zeros(3) = frame_a.f + frame_b.f;
          zeros(3) = frame_a.t + frame_b.t + cross(e * (s_offset + s), frame_b.f);
          // d'Alemberts principle
          f = -e * frame_b.f;
          // Connection to internal connectors
          s = internalAxis.s;
          connect(fixed.flange, support) annotation(Line(points = {{-40, 40}, {-40, 60}}, color = {0, 127, 0}, smooth = Smooth.None));
          connect(internalAxis.flange, axis) annotation(Line(points = {{80, 40}, {80, 60}}, color = {0, 127, 0}, smooth = Smooth.None));
          connect(constantForce.flange, internalAxis.flange) annotation(Line(points = {{60, 40}, {80, 40}}, color = {0, 127, 0}, smooth = Smooth.None));
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -50}, {-30, 41}}, pattern = LinePattern.None, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Rectangle(extent = {{-100, 40}, {-30, 50}}, pattern = LinePattern.None, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Rectangle(extent = {{-30, -30}, {100, 20}}, pattern = LinePattern.None, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Rectangle(extent = {{-30, 20}, {100, 30}}, pattern = LinePattern.None, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Line(points = {{-30, -50}, {-30, 50}}, color = {0, 0, 0}), Line(points = {{100, -30}, {100, 21}}, color = {0, 0, 0}), Text(extent = {{60, 12}, {96, -13}}, lineColor = {128, 128, 128}, textString = "b"), Text(extent = {{-95, 13}, {-60, -9}}, lineColor = {128, 128, 128}, textString = "a"), Text(visible = useAxisFlange, extent = {{-150, -135}, {150, -95}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-150, -90}, {150, -60}}, lineColor = {0, 0, 0}, textString = "n=%n"), Rectangle(visible = useAxisFlange, extent = {{90, 30}, {100, 70}}, pattern = LinePattern.None, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 255}), Text(visible = not useAxisFlange, extent = {{-150, 60}, {150, 100}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<HTML>
 <p>
 Joint where frame_b is translated along axis n which is fixed in frame_a.
 The two frames coincide when the relative distance \"s = 0\".
 </p>
 
 <p>
 Optionally, two additional 1-dimensional mechanical flanges
 (flange \"axis\" represents the driving flange and
 flange \"support\" represents the bearing) can be enabled via
 parameter <b>useAxisFlange</b>. The enabled axis flange can be
 driven with elements of the
 <a href=\"modelica://Modelica.Mechanics.Translational\">Modelica.Mechanics.Translational</a>
 library.
 
 </p>
 
 <p>
 In the \"Advanced\" menu it can be defined via parameter <b>stateSelect</b>
 that the relative distance \"s\" and its derivative shall be definitely
 used as states by setting stateSelect=StateSelect.always.
 Default is StateSelect.prefer to use the relative distance and its
 derivative as preferred states. The states are usually selected automatically.
 In certain situations, especially when closed kinematic loops are present,
 it might be slightly more efficient, when using the StateSelect.always setting.
 </p>
 
 <p>
 In the following figure the animation of a prismatic
 joint is shown. The light blue coordinate system is
 frame_a and the dark blue coordinate system is
 frame_b of the joint. The black arrow is parameter
 vector \"n\" defining the translation axis
 (here: n = {1,1,0}).
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Prismatic.png\">
 </p>
 
 </html>"));
        end Prismatic;

        model Revolute "Revolute joint (1 rotational degree-of-freedom, 2 potential states, optional axis flange)"
          Modelica.Mechanics.Rotational.Interfaces.Flange_a axis if useAxisFlange "1-dim. rotational flange that drives the joint" annotation(Placement(transformation(extent = {{10, 90}, {-10, 110}}, rotation = 0)));
          Modelica.Mechanics.Rotational.Interfaces.Flange_b support if useAxisFlange "1-dim. rotational flange of the drive support (assumed to be fixed in the world frame, NOT in the joint)" annotation(Placement(transformation(extent = {{-70, 90}, {-50, 110}}, rotation = 0)));
          Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed to the joint with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed to the joint with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          parameter Boolean useAxisFlange = false "= true, if axis flange is enabled" annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
          parameter Boolean animation = true "= true, if animation shall be enabled (show axis as cylinder)";
          parameter Modelica.Mechanics.MultiBody.Types.Axis n = {0, 0, 1} "Axis of rotation resolved in frame_a (= same as in frame_b)" annotation(Evaluate = true);
          constant SI.Angle phi_offset = 0 "Relative angle offset (angle = phi_offset + phi)";
          parameter SI.Distance cylinderLength = world.defaultJointLength "Length of cylinder representing the joint axis" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance cylinderDiameter = world.defaultJointWidth "Diameter of cylinder representing the joint axis" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Modelica.Mechanics.MultiBody.Types.Color cylinderColor = Modelica.Mechanics.MultiBody.Types.Defaults.JointColor "Color of cylinder representing the joint axis" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter StateSelect stateSelect = StateSelect.prefer "Priority to use joint angle phi and w=der(phi) as states" annotation(Dialog(tab = "Advanced"));
          SI.Angle phi(start = 0, final stateSelect = stateSelect) "Relative rotation angle from frame_a to frame_b" annotation(unassignedMessage = "
            The rotation angle phi of a revolute joint cannot be determined.
            Possible reasons:
            - A non-zero mass might be missing on either side of the parts
              connected to the revolute joint.
            - Too many StateSelect.always are defined and the model
              has less degrees of freedom as specified with this setting
              (remove all StateSelect.always settings).
            ");
          SI.AngularVelocity w(start = 0, stateSelect = stateSelect) "First derivative of angle phi (relative angular velocity)";
          SI.AngularAcceleration a(start = 0) "Second derivative of angle phi (relative angular acceleration)";
          SI.Torque tau "Driving torque in direction of axis of rotation";
          SI.Angle angle "= phi_offset + phi";
        protected
          outer Modelica.Mechanics.MultiBody.World world;
          parameter Real e[3](each final unit = "1") = Modelica.Math.Vectors.normalizeWithAssert(n) "Unit vector in direction of rotation axis, resolved in frame_a (= same as in frame_b)";
          Frames.Orientation R_rel "Relative orientation object from frame_a to frame_b or from frame_b to frame_a";
          Visualizers.Advanced.Shape cylinder(shapeType = "cylinder", color = cylinderColor, specularCoefficient = specularCoefficient, length = cylinderLength, width = cylinderDiameter, height = cylinderDiameter, lengthDirection = e, widthDirection = {0, 1, 0}, r_shape = -e * cylinderLength / 2, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
        protected
          Modelica.Mechanics.Rotational.Components.Fixed fixed "support flange is fixed to ground" annotation(Placement(transformation(extent = {{-70, 70}, {-50, 90}})));
          Rotational.Interfaces.InternalSupport internalAxis(tau = tau) annotation(Placement(transformation(extent = {{-10, 90}, {10, 70}})));
          Rotational.Sources.ConstantTorque constantTorque(tau_constant = 0) if not useAxisFlange annotation(Placement(transformation(extent = {{40, 70}, {20, 90}})));
        equation
          Connections.branch(frame_a.R, frame_b.R);
          assert(cardinality(frame_a) > 0, "Connector frame_a of revolute joint is not connected");
          assert(cardinality(frame_b) > 0, "Connector frame_b of revolute joint is not connected");
          angle = phi_offset + phi;
          w = der(phi);
          a = der(w);
          // relationships between quantities of frame_a and of frame_b
          frame_b.r_0 = frame_a.r_0;
          if rooted(frame_a.R) then
            R_rel = Frames.planarRotation(e, phi_offset + phi, w);
            frame_b.R = Frames.absoluteRotation(frame_a.R, R_rel);
            frame_a.f = -Frames.resolve1(R_rel, frame_b.f);
            frame_a.t = -Frames.resolve1(R_rel, frame_b.t);
          else
            R_rel = Frames.planarRotation(-e, phi_offset + phi, w);
            frame_a.R = Frames.absoluteRotation(frame_b.R, R_rel);
            frame_b.f = -Frames.resolve1(R_rel, frame_a.f);
            frame_b.t = -Frames.resolve1(R_rel, frame_a.t);
          end if;
          // d'Alemberts principle
          tau = -frame_b.t * e;
          // Connection to internal connectors
          phi = internalAxis.phi;
          connect(fixed.flange, support) annotation(Line(points = {{-60, 80}, {-60, 100}}, color = {0, 0, 0}, smooth = Smooth.None));
          connect(internalAxis.flange, axis) annotation(Line(points = {{0, 80}, {0, 100}}, color = {0, 0, 0}, smooth = Smooth.None));
          connect(constantTorque.flange, internalAxis.flange) annotation(Line(points = {{20, 80}, {0, 80}}, color = {0, 0, 0}, smooth = Smooth.None));
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -60}, {-30, 60}}, lineColor = {64, 64, 64}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {255, 255, 255}, radius = 10), Rectangle(extent = {{30, -60}, {100, 60}}, lineColor = {64, 64, 64}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {255, 255, 255}, radius = 10), Rectangle(extent = {{-100, 60}, {-30, -60}}, lineColor = {64, 64, 64}, radius = 10), Rectangle(extent = {{30, 60}, {100, -60}}, lineColor = {64, 64, 64}, radius = 10), Text(extent = {{-90, 14}, {-54, -11}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{51, 11}, {87, -14}}, lineColor = {128, 128, 128}, textString = "b"), Line(visible = useAxisFlange, points = {{-20, 80}, {-20, 60}}, color = {0, 0, 0}), Line(visible = useAxisFlange, points = {{20, 80}, {20, 60}}, color = {0, 0, 0}), Rectangle(visible = useAxisFlange, extent = {{-10, 100}, {10, 50}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.VerticalCylinder, fillColor = {192, 192, 192}), Polygon(visible = useAxisFlange, points = {{-10, 30}, {10, 30}, {30, 50}, {-30, 50}, {-10, 30}}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-30, 11}, {30, -10}}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Polygon(visible = useAxisFlange, points = {{10, 30}, {30, 50}, {30, -50}, {10, -30}, {10, 30}}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -110}, {150, -80}}, lineColor = {0, 0, 0}, textString = "n=%n"), Text(visible = useAxisFlange, extent = {{-150, -155}, {150, -115}}, textString = "%name", lineColor = {0, 0, 255}), Line(visible = useAxisFlange, points = {{-20, 70}, {-60, 70}, {-60, 60}}, color = {0, 0, 0}, smooth = Smooth.None), Line(visible = useAxisFlange, points = {{20, 70}, {50, 70}, {50, 60}}, color = {0, 0, 0}, smooth = Smooth.None), Line(visible = useAxisFlange, points = {{-90, 100}, {-30, 100}}, color = {0, 0, 0}), Line(visible = useAxisFlange, points = {{-30, 100}, {-50, 80}}, color = {0, 0, 0}), Line(visible = useAxisFlange, points = {{-49, 100}, {-70, 80}}, color = {0, 0, 0}), Line(visible = useAxisFlange, points = {{-70, 100}, {-90, 80}}, color = {0, 0, 0}), Text(visible = not useAxisFlange, extent = {{-150, 70}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
 
 <p>
 Joint where frame_b rotates around axis n which is fixed in frame_a.
 The two frames coincide when the rotation angle \"phi = 0\".
 </p>
 
 <p>
 Optionally, two additional 1-dimensional mechanical flanges
 (flange \"axis\" represents the driving flange and
 flange \"support\" represents the bearing) can be enabled via
 parameter <b>useAxisFlange</b>. The enabled axis flange can be
 driven with elements of the
 <a href=\"modelica://Modelica.Mechanics.Rotational\">Modelica.Mechanics.Rotational</a>
 library.
 
 </p>
 
 <p>
 In the \"Advanced\" menu it can be defined via parameter <b>stateSelect</b>
 that the rotation angle \"phi\" and its derivative shall be definitely
 used as states by setting stateSelect=StateSelect.always.
 Default is StateSelect.prefer to use the joint angle and its
 derivative as preferred states. The states are usually selected automatically.
 In certain situations, especially when closed kinematic loops are present,
 it might be slightly more efficient, when using the StateSelect.always setting.
 </p>
 <p>
 If a <b>planar loop</b> is present, e.g., consisting of 4 revolute joints
 where the joint axes are all parallel to each other, then there is no
 longer a unique mathematical solution and the symbolic algorithms will
 fail. Usually, an error message will be printed pointing out this
 situation. In this case, one revolute joint of the loop has to be replaced
 by a Joints.RevolutePlanarLoopConstraint joint. The
 effect is that from the 5 constraints of a usual revolute joint,
 3 constraints are removed and replaced by appropriate known
 variables (e.g., the force in the direction of the axis of rotation is
 treated as known with value equal to zero; for standard revolute joints,
 this force is an unknown quantity).
 </p>
 
 <p>
 In the following figure the animation of a revolute
 joint is shown. The light blue coordinate system is
 frame_a and the dark blue coordinate system is
 frame_b of the joint. The black arrow is parameter
 vector \"n\" defining the translation axis
 (here: n = {0,0,1}, phi.start = 45<sup>o</sup>).
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Revolute.png\">
 </p>
 
 </html>"));
        end Revolute;
        annotation(Documentation(info = "<HTML>
 <p>
 This package contains <b>joint components</b>,
 that is, idealized, massless elements that constrain
 the motion between frames. In subpackage <b>Assemblies</b>
 aggregation joint components are provided to handle
 kinematic loops analytically (this means that non-linear systems
 of equations occurring in these joint aggregations are analytically
 solved, i.e., robustly and efficiently).
 </p>
 <h4>Content</h4>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><th><b><i>Model</i></b></th><th><b><i>Description</i></b></th></tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Prismatic\">Prismatic</a>
       <td valign=\"top\">Prismatic joint and actuated prismatic joint
           (1 translational degree-of-freedom, 2 potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Prismatic.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Revolute\">Revolute</a>
  </td>
       <td valign=\"top\">Revolute and actuated revolute joint
           (1 rotational degree-of-freedom, 2 potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Revolute.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Cylindrical\">Cylindrical</a></td>
       <td valign=\"top\">Cylindrical joint (2 degrees-of-freedom, 4 potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Cylindrical.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Universal\">Universal</a></td>
       <td valign=\"top\">Universal joint (2 degrees-of-freedom, 4 potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Universal.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Planar\">Planar</a></td>
       <td valign=\"top\">Planar joint (3 degrees-of-freedom, 6 potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Planar.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Spherical\">Spherical</a></td>
       <td valign=\"top\">Spherical joint (3 constraints and no potential states, or 3 degrees-of-freedom and 3 states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/Spherical.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.FreeMotion\">FreeMotion</a></td>
       <td valign=\"top\">Free motion joint (6 degrees-of-freedom, 12 potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/FreeMotion.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.SphericalSpherical\">SphericalSpherical</a></td>
       <td valign=\"top\">Spherical - spherical joint aggregation (1 constraint,
           no potential states) with an optional point mass in the middle<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/SphericalSpherical.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.UniversalSpherical\">UniversalSpherical</a></td>
       <td valign=\"top\">Universal - spherical joint aggregation (1 constraint, no potential states)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Joints/UniversalSpherical.png\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.GearConstraint\">GearConstraint</a></td>
       <td valign=\"top\">Ideal 3-dim. gearbox (arbitrary shaft directions)
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Assemblies\">MultiBody.Joints.Assemblies</a></td>
       <td valign=\"top\"><b>Package</b> of joint aggregations for analytic loop handling.
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Constraints\">MultiBody.Joints.Constraints</a></td>
       <td valign=\"top\"><b>Package</b> of components that define joints by constraints
       </td>
   </tr>
 </table>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{6, 6}, {28, -2}, {54, 80}, {32, 86}, {6, 6}}, lineColor = {95, 95, 95}, fillPattern = FillPattern.Sphere, smooth = Smooth.None, fillColor = {255, 255, 255}), Polygon(points = {{-12, -18}, {0, -36}, {-70, -84}, {-82, -66}, {-12, -18}}, lineColor = {95, 95, 95}, fillPattern = FillPattern.Sphere, smooth = Smooth.None, fillColor = {255, 255, 255}), Ellipse(extent = {{-12, 8}, {34, -38}}, lineColor = {95, 95, 95}, fillPattern = FillPattern.Sphere, fillColor = {95, 95, 95})}));
      end Joints;

      package Parts "Rigid components such as bodies with mass and inertia and massless rods"
        extends Modelica.Icons.Package;

        model FixedTranslation "Fixed translation of frame_b with respect to frame_a"
          import Modelica.Mechanics.MultiBody.Types;
          import Modelica.SIunits.Conversions.to_unit1;
          Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter SI.Position r[3](start = {0, 0, 0}) "Vector from frame_a to frame_b resolved in frame_a";
          parameter Types.ShapeType shapeType = "cylinder" "Type of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to shape origin, resolved in frame_a" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Types.Axis lengthDirection = to_unit1(r - r_shape) "Vector in length direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Types.Axis widthDirection = {0, 1, 0} "Vector in width direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Length length = Modelica.Math.Vectors.length(r - r_shape) "Length of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance width = length / world.defaultWidthFraction "Width of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance height = width "Height of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Types.ShapeExtra extra = 0.0 "Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.RodColor "Color of shape" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
          Visualizers.Advanced.Shape shape(shapeType = shapeType, color = color, specularCoefficient = specularCoefficient, r_shape = r_shape, lengthDirection = lengthDirection, widthDirection = widthDirection, length = length, width = width, height = height, extra = extra, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
        equation
          Connections.branch(frame_a.R, frame_b.R);
          assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0, "Neither connector frame_a nor frame_b of FixedTranslation object is connected");
          frame_b.r_0 = frame_a.r_0 + Frames.resolve1(frame_a.R, r);
          frame_b.R = frame_a.R;
          /* Force and torque balance */
          zeros(3) = frame_a.f + frame_b.f;
          zeros(3) = frame_a.t + frame_b.t + cross(r, frame_b.f);
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-99, 5}, {101, -5}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 85}, {150, 45}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{150, -50}, {-150, -20}}, lineColor = {0, 0, 0}, textString = "%=r"), Text(extent = {{-89, 38}, {-53, 13}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{57, 39}, {93, 14}}, lineColor = {128, 128, 128}, textString = "b")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 5}, {100, -5}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-95, 20}, {-58, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{-94, 18}, {-94, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(extent = {{-72, 35}, {-58, 24}}, lineColor = {128, 128, 128}, textString = "x"), Text(extent = {{-113, 57}, {-98, 45}}, lineColor = {128, 128, 128}, textString = "y"), Line(points = {{-100, -4}, {-100, -69}}, color = {128, 128, 128}), Line(points = {{-100, -63}, {90, -63}}, color = {128, 128, 128}), Text(extent = {{-22, -39}, {16, -63}}, lineColor = {128, 128, 128}, textString = "r"), Polygon(points = {{88, -59}, {88, -68}, {100, -63}, {88, -59}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{100, -3}, {100, -68}}, color = {128, 128, 128}), Line(points = {{69, 20}, {106, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{70, 18}, {70, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(extent = {{92, 35}, {106, 24}}, lineColor = {128, 128, 128}, textString = "x"), Text(extent = {{51, 57}, {66, 45}}, lineColor = {128, 128, 128}, textString = "y")}), Documentation(info = "<HTML>
 <p>
 Component for a <b>fixed translation</b> of frame_b with respect
 to frame_a, i.e., the relationship between connectors frame_a and frame_b
 remains constant and frame_a is always <b>parallel</b> to frame_b.
 </p>
 <p>
 By default, this component is visualized by a cylinder connecting
 frame_a and frame_b, as shown in the figure below. Note, that the
 two visualized frames are not part of the component animation and that
 the animation may be switched off via parameter animation = <b>false</b>.
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedTranslation.png\" ALT=\"Parts.FixedTranslation\">
 </p>
 </HTML>"));
        end FixedTranslation;

        model FixedRotation "Fixed translation followed by a fixed rotation of frame_b with respect to frame_a"
          import Modelica.Mechanics.MultiBody.Frames;
          import Modelica.SIunits.Conversions.to_unit1;
          Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter SI.Position r[3] = {0, 0, 0} "Vector from frame_a to frame_b resolved in frame_a";
          parameter Modelica.Mechanics.MultiBody.Types.RotationTypes rotationType = Modelica.Mechanics.MultiBody.Types.RotationTypes.RotationAxis "Type of rotation description" annotation(Evaluate = true);
          parameter Modelica.Mechanics.MultiBody.Types.Axis n = {1, 0, 0} "Axis of rotation in frame_a (= same as in frame_b)" annotation(Evaluate = true, Dialog(group = "if rotationType = RotationAxis", enable = rotationType == Modelica.Mechanics.MultiBody.Types.RotationTypes.RotationAxis));
          parameter Cv.NonSIunits.Angle_deg angle = 0 "Angle to rotate frame_a around axis n into frame_b" annotation(Dialog(group = "if rotationType = RotationAxis", enable = rotationType == Modelica.Mechanics.MultiBody.Types.RotationTypes.RotationAxis));
          parameter Modelica.Mechanics.MultiBody.Types.Axis n_x = {1, 0, 0} "Vector along x-axis of frame_b resolved in frame_a" annotation(Evaluate = true, Dialog(group = "if rotationType = TwoAxesVectors", enable = rotationType == Modelica.Mechanics.MultiBody.Types.RotationTypes.TwoAxesVectors));
          parameter Modelica.Mechanics.MultiBody.Types.Axis n_y = {0, 1, 0} "Vector along y-axis of frame_b resolved in frame_a" annotation(Evaluate = true, Dialog(group = "if rotationType = TwoAxesVectors", enable = rotationType == Modelica.Mechanics.MultiBody.Types.RotationTypes.TwoAxesVectors));
          parameter Modelica.Mechanics.MultiBody.Types.RotationSequence sequence(min = {1, 1, 1}, max = {3, 3, 3}) = {1, 2, 3} "Sequence of rotations" annotation(Evaluate = true, Dialog(group = "if rotationType = PlanarRotationSequence", enable = rotationType == Modelica.Mechanics.MultiBody.Types.RotationTypes.PlanarRotationSequence));
          parameter Cv.NonSIunits.Angle_deg angles[3] = {0, 0, 0} "Rotation angles around the axes defined in 'sequence'" annotation(Dialog(group = "if rotationType = PlanarRotationSequence", enable = rotationType == Modelica.Mechanics.MultiBody.Types.RotationTypes.PlanarRotationSequence));
          parameter Modelica.Mechanics.MultiBody.Types.ShapeType shapeType = "cylinder" "Type of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to shape origin, resolved in frame_a" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Modelica.Mechanics.MultiBody.Types.Axis lengthDirection = to_unit1(r - r_shape) "Vector in length direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Modelica.Mechanics.MultiBody.Types.Axis widthDirection = {0, 1, 0} "Vector in width direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Length length = Modelica.Math.Vectors.length(r - r_shape) "Length of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance width = length / world.defaultWidthFraction "Width of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance height = width "Height of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Modelica.Mechanics.MultiBody.Types.ShapeExtra extra = 0.0 "Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          /*
            parameter Boolean checkTotalPower=false
              "= true, if total power flowing into this component shall be determined (must be zero)"
              annotation (Dialog(tab="Advanced"));
          */
          input Modelica.Mechanics.MultiBody.Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.RodColor "Color of shape" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          final parameter Frames.Orientation R_rel = if rotationType == Types.RotationTypes.RotationAxis then Frames.planarRotation(Modelica.Math.Vectors.normalizeWithAssert(n), Cv.from_deg(angle), 0) else if rotationType == Types.RotationTypes.TwoAxesVectors then Frames.from_nxy(n_x, n_y) else Frames.axesRotations(sequence, Cv.from_deg(angles), zeros(3)) "Fixed rotation object from frame_a to frame_b";
          /*
            SI.Power totalPower
              "Total power flowing into this element, if checkTotalPower=true (otherwise dummy)";
          */
        protected
          outer Modelica.Mechanics.MultiBody.World world;
          /*
            parameter Frames.Orientation R_rel_inv=
                Frames.inverseRotation(R_rel)
          */
          parameter Frames.Orientation R_rel_inv = Frames.from_T(transpose(R_rel.T), zeros(3)) "Inverse of R_rel (rotate from frame_b to frame_a)";
          Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape shape(shapeType = shapeType, color = color, specularCoefficient = specularCoefficient, r_shape = r_shape, lengthDirection = lengthDirection, widthDirection = widthDirection, length = length, width = width, height = height, extra = extra, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
        equation
          Connections.branch(frame_a.R, frame_b.R);
          assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0, "Neither connector frame_a nor frame_b of FixedRotation object is connected");
          /* Relationships between quantities of frame_a and frame_b */
          frame_b.r_0 = frame_a.r_0 + Frames.resolve1(frame_a.R, r);
          if rooted(frame_a.R) then
            frame_b.R = Frames.absoluteRotation(frame_a.R, R_rel);
            zeros(3) = frame_a.f + Frames.resolve1(R_rel, frame_b.f);
            zeros(3) = frame_a.t + Frames.resolve1(R_rel, frame_b.t) - cross(r, frame_a.f);
          else
            frame_a.R = Frames.absoluteRotation(frame_b.R, R_rel_inv);
            zeros(3) = frame_b.f + Frames.resolve1(R_rel_inv, frame_a.f);
            zeros(3) = frame_b.t + Frames.resolve1(R_rel_inv, frame_a.t) + cross(Frames.resolve1(R_rel_inv, r), frame_b.f);
          end if;
          /*
            if checkTotalPower then
              totalPower = frame_a.f*Frames.resolve2(frame_a.R, der(frame_a.r_0)) +
                           frame_b.f*Frames.resolve2(frame_b.R, der(frame_b.r_0)) +
                           frame_a.t*Frames.angularVelocity2(frame_a.R) +
                           frame_b.t*Frames.angularVelocity2(frame_b.R);
            else
              totalPower = 0;
            end if;
          */
          annotation(Documentation(info = "<HTML>
 <p>
 Component for a <b>fixed translation</b> and <b>fixed rotation</b> of frame_b with respect
 to frame_a, i.e., the relationship between connectors frame_a and frame_b
 remains constant. There are several possibilities to define the
 orientation of frame_b with respect to frame_a:
 </p>
 <ul>
 <li><b>Planar rotation</b> along axis 'n' (that is fixed and resolved
     in frame_a) with a fixed angle 'angle'.</li>
 <li><b>Vectors n_x</b> and <b>n_y</b> that are directed along the corresponding axes
     direction of frame_b and are resolved in frame_a (if n_y is not
     orthogonal to n_x, the y-axis of frame_b is selected such that it is
     orthogonal to n_x and in the plane of n_x and n_y).</li>
 <li><b>Sequence</b> of <b>three planar axes rotations</b>.
     For example, \"sequence = {1,2,3}\" and \"angles = {90, 45, -90}\"
     means to rotate frame_a around the x axis with 90 degrees, around the new
     y axis with 45 degrees and around the new z axis around -90 degrees to
     arrive at frame_b. Note, that sequence={1,2,3}
     is the Cardan angle sequence and sequence = {3,1,3} is the Euler angle
     sequence.</li>
 </ul>
 <p>
 By default, this component is visualized by a cylinder connecting
 frame_a and frame_b, as shown in the figure below. In this figure
 frame_b is rotated along the z-axis of frame_a with 60 degree. Note, that the
 two visualized frames are not part of the component animation and that
 the animation may be switched off via parameter animation = <b>false</b>.
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedRotation.png\" ALT=\"Parts.FixedRotation\">
 </p>
 </HTML>", revisions = "<HTML><p><b>Release Notes:</b></p>
 <ul>
   <li><i>July 28, 2003</i><br>
          Bug fixed: if rotationType = PlanarRotationSequence, then 'angles'
          was used with unit [rad] instead of [deg].</li>
 </ul>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, 80}, {150, 120}}, textString = "%name", lineColor = {0, 0, 255}), Rectangle(extent = {{-100, 5}, {100, -4}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{80, 20}, {129, 50}}, color = {0, 0, 0}), Line(points = {{80, 20}, {57, 59}}, color = {0, 0, 0}), Polygon(points = {{144, 60}, {117, 59}, {132, 37}, {144, 60}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Polygon(points = {{43, 80}, {46, 50}, {68, 65}, {43, 80}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -50}, {150, -80}}, lineColor = {0, 0, 0}, textString = "r=%r"), Text(extent = {{-117, 51}, {-81, 26}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{84, -24}, {120, -49}}, lineColor = {128, 128, 128}, textString = "b")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, -1}, {-100, -66}}, color = {128, 128, 128}), Line(points = {{100, 0}, {100, -65}}, color = {128, 128, 128}), Line(points = {{-100, -60}, {89, -60}}, color = {128, 128, 128}), Text(extent = {{-22, -36}, {16, -60}}, lineColor = {128, 128, 128}, textString = "r"), Rectangle(extent = {{-100, 5}, {100, -5}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{69, 29}, {97, 45}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{70, 27}, {55, 54}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(extent = {{95, 42}, {109, 31}}, lineColor = {128, 128, 128}, textString = "x"), Text(extent = {{42, 70}, {57, 58}}, lineColor = {128, 128, 128}, textString = "y"), Line(points = {{-95, 22}, {-58, 22}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{-94, 20}, {-94, 52}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(extent = {{-72, 37}, {-58, 26}}, lineColor = {128, 128, 128}, textString = "x"), Text(extent = {{-113, 59}, {-98, 47}}, lineColor = {128, 128, 128}, textString = "y"), Polygon(points = {{88, -56}, {88, -65}, {100, -60}, {88, -56}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}));
        end FixedRotation;

        model Body "Rigid body with mass, inertia tensor and one frame connector (12 potential states)"
          import Modelica.Mechanics.MultiBody.Types;
          import Modelica.Mechanics.MultiBody.Frames;
          import Modelica.SIunits.Conversions.to_unit1;
          Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed at body" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder and sphere)";
          parameter SI.Position r_CM[3](start = {0, 0, 0}) "Vector from frame_a to center of mass, resolved in frame_a";
          parameter SI.Mass m(min = 0, start = 1) "Mass of rigid body";
          parameter SI.Inertia I_11(min = 0) = 0.001 "(1,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_22(min = 0) = 0.001 "(2,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_33(min = 0) = 0.001 "(3,3) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_21(min = -C.inf) = 0 "(2,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_31(min = -C.inf) = 0 "(3,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_32(min = -C.inf) = 0 "(3,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          SI.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          SI.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          SI.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
          parameter Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
          parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
          parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
          parameter SI.Diameter sphereDiameter = world.defaultBodyDiameter "Diameter of sphere" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color sphereColor = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of sphere" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Diameter cylinderDiameter = sphereDiameter / Types.Defaults.BodyCylinderDiameterFraction "Diameter of cylinder" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color cylinderColor = sphereColor "Color of cylinder" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Evaluate = true, Dialog(tab = "Advanced"));
          parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced"));
          parameter Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
          final parameter SI.Inertia I[3, 3] = [I_11, I_21, I_31; I_21, I_22, I_32; I_31, I_32, I_33] "inertia tensor";
          final parameter Frames.Orientation R_start = Modelica.Mechanics.MultiBody.Frames.axesRotations(sequence_start, angles_start, zeros(3)) "Orientation object from world frame to frame_a at initial time";
          final parameter SI.AngularAcceleration z_a_start[3] = Frames.resolve2(R_start, z_0_start) "Initial values of angular acceleration z_a = der(w_a), i.e., time derivative of angular velocity resolved in frame_a";
          SI.AngularVelocity w_a[3](start = Frames.resolve2(R_start, w_0_start), fixed = fill(w_0_fixed, 3), each stateSelect = if enforceStates then if useQuaternions then StateSelect.always else StateSelect.never else StateSelect.avoid) "Absolute angular velocity of frame_a resolved in frame_a";
          SI.AngularAcceleration z_a[3](start = Frames.resolve2(R_start, z_0_start), fixed = fill(z_0_fixed, 3)) "Absolute angular acceleration of frame_a resolved in frame_a";
          SI.Acceleration g_0[3] "Gravity acceleration resolved in world frame";
        protected
          outer Modelica.Mechanics.MultiBody.World world;
          // Declarations for quaternions (dummies, if quaternions are not used)
          parameter Frames.Quaternions.Orientation Q_start = Frames.to_Q(R_start) "Quaternion orientation object from world frame to frame_a at initial time";
          Frames.Quaternions.Orientation Q(start = Q_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.prefer else StateSelect.never else StateSelect.avoid) "Quaternion orientation object from world frame to frame_a (dummy value, if quaternions are not used as states)";
          // Declaration for 3 angles
          parameter SI.Angle phi_start[3] = if sequence_start[1] == sequence_angleStates[1] and sequence_start[2] == sequence_angleStates[2] and sequence_start[3] == sequence_angleStates[3] then angles_start else Frames.axesRotationsAngles(R_start, sequence_angleStates) "Potential angle states at initial time";
          SI.Angle phi[3](start = phi_start, each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "Dummy or 3 angles to rotate world frame into frame_a of body";
          SI.AngularVelocity phi_d[3](each stateSelect = if enforceStates then if useQuaternions then StateSelect.never else StateSelect.always else StateSelect.avoid) "= der(phi)";
          SI.AngularAcceleration phi_dd[3] "= der(phi_d)";
          // Declarations for animation
          Visualizers.Advanced.Shape cylinder(shapeType = "cylinder", color = cylinderColor, specularCoefficient = specularCoefficient, length = if Modelica.Math.Vectors.length(r_CM) > sphereDiameter / 2 then Modelica.Math.Vectors.length(r_CM) - (if cylinderDiameter > 1.1 * sphereDiameter then sphereDiameter / 2 else 0) else 0, width = cylinderDiameter, height = cylinderDiameter, lengthDirection = to_unit1(r_CM), widthDirection = {0, 1, 0}, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
          Visualizers.Advanced.Shape sphere(shapeType = "sphere", color = sphereColor, specularCoefficient = specularCoefficient, length = sphereDiameter, width = sphereDiameter, height = sphereDiameter, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, r_shape = r_CM - {1, 0, 0} * sphereDiameter / 2, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation and sphereDiameter > 0;
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
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 30}, {-3, -31}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{150, -100}, {-150, -70}}, lineColor = {0, 0, 0}, textString = "m=%m"), Text(extent = {{-150, 110}, {150, 70}}, textString = "%name", lineColor = {0, 0, 255}), Ellipse(extent = {{-20, 60}, {100, -60}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.Sphere, fillColor = {0, 127, 255})}), Documentation(info = "<HTML>
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

        model BodyShape "Rigid body with mass, inertia tensor, different shapes for animation, and two frame connectors (12 potential states)"
          import Modelica.Mechanics.MultiBody.Types;
          import Modelica.SIunits.Conversions.to_unit1;
          Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          parameter Boolean animation = true "= true, if animation shall be enabled (show shape between frame_a and frame_b and optionally a sphere at the center of mass)";
          parameter Boolean animateSphere = true "= true, if mass shall be animated as sphere provided animation=true";
          parameter SI.Position r[3](start = {0, 0, 0}) "Vector from frame_a to frame_b resolved in frame_a";
          parameter SI.Position r_CM[3](start = {0, 0, 0}) "Vector from frame_a to center of mass, resolved in frame_a";
          parameter SI.Mass m(min = 0, start = 1) "Mass of rigid body";
          parameter SI.Inertia I_11(min = 0) = 0.001 "(1,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_22(min = 0) = 0.001 "(2,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_33(min = 0) = 0.001 "(3,3) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_21(min = -C.inf) = 0 "(2,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_31(min = -C.inf) = 0 "(3,1) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          parameter SI.Inertia I_32(min = -C.inf) = 0 "(3,2) element of inertia tensor" annotation(Dialog(group = "Inertia tensor (resolved in center of mass, parallel to frame_a)"));
          SI.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          SI.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          SI.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
          parameter Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
          parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
          parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
          parameter Types.ShapeType shapeType = "cylinder" "Type of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to shape origin, resolved in frame_a" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Types.Axis lengthDirection = to_unit1(r - r_shape) "Vector in length direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Types.Axis widthDirection = {0, 1, 0} "Vector in width direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Length length = Modelica.Math.Vectors.length(r - r_shape) "Length of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance width = length / world.defaultWidthFraction "Width of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Distance height = width "Height of shape" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Types.ShapeExtra extra = 0.0 "Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of shape" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
          parameter SI.Diameter sphereDiameter = 2 * width "Diameter of sphere" annotation(Dialog(tab = "Animation", group = "if animation = true and animateSphere = true", enable = animation and animateSphere));
          input Types.Color sphereColor = color "Color of sphere of mass" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true and animateSphere = true", enable = animation and animateSphere));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
          parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Dialog(tab = "Advanced"));
          parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Dialog(tab = "Advanced"));
          parameter Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
          FixedTranslation frameTranslation(r = r, animation = false) annotation(Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = 0)));
          Body body(r_CM = r_CM, m = m, I_11 = I_11, I_22 = I_22, I_33 = I_33, I_21 = I_21, I_31 = I_31, I_32 = I_32, animation = false, sequence_start = sequence_start, angles_fixed = angles_fixed, angles_start = angles_start, w_0_fixed = w_0_fixed, w_0_start = w_0_start, z_0_fixed = z_0_fixed, z_0_start = z_0_start, useQuaternions = useQuaternions, sequence_angleStates = sequence_angleStates, enforceStates = false) annotation(Placement(transformation(extent = {{-27.3333, -70.33329999999999}, {13, -30}}, rotation = 0)));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
          Visualizers.Advanced.Shape shape1(shapeType = shapeType, color = color, specularCoefficient = specularCoefficient, length = length, width = width, height = height, lengthDirection = lengthDirection, widthDirection = widthDirection, r_shape = r_shape, extra = extra, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
          Visualizers.Advanced.Shape shape2(shapeType = "sphere", color = sphereColor, specularCoefficient = specularCoefficient, length = sphereDiameter, width = sphereDiameter, height = sphereDiameter, lengthDirection = {1, 0, 0}, widthDirection = {0, 1, 0}, r_shape = r_CM - {1, 0, 0} * sphereDiameter / 2, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation and animateSphere;
        equation
          r_0 = frame_a.r_0;
          v_0 = der(r_0);
          a_0 = der(v_0);
          connect(frame_a, frameTranslation.frame_a) annotation(Line(points = {{-100, 0}, {-20, 0}}, color = {95, 95, 95}, thickness = 0.5));
          connect(frame_b, frameTranslation.frame_b) annotation(Line(points = {{100, 0}, {20, 0}}, color = {95, 95, 95}, thickness = 0.5));
          connect(frame_a, body.frame_a) annotation(Line(points = {{-100, 0}, {-60, 0}, {-60, -50.1666}, {-27.3333, -50.1666}}, color = {95, 95, 95}, thickness = 0.5));
          annotation(Documentation(info = "<HTML>
 <p>
 <b>Rigid body</b> with mass and inertia tensor and <b>two frame connectors</b>.
 All parameter vectors have to be resolved in frame_a.
 The <b>inertia tensor</b> has to be defined with respect to a
 coordinate system that is parallel to frame_a with the
 origin at the center of mass of the body. The coordinate system <b>frame_b</b>
 is always parallel to <b>frame_a</b>.
 </p>
 <p>
 By default, this component is visualized by any <b>shape</b> that can be
 defined with Modelica.Mechanics.MultiBody.Visualizers.FixedShape. This shape is placed
 between frame_a and frame_b (default: length(shape) = Frames.length(r)).
 Additionally a <b>sphere</b> may be visualized that has
 its center at the center of mass.
 Note, that
 the animation may be switched off via parameter animation = <b>false</b>.
 </p>
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyShape.png\" ALT=\"Parts.BodyShape\">
 </p>
 
 <p>
 The following shapes can be defined via parameter <b>shapeType</b>,
 e.g., shapeType=\"cone\":
 </p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedShape.png\" ALT=\"Visualizers.FixedShape\">
 <p>
 A BodyShape component has potential states. For details of these
 states and of the \"Advanced\" menu parameters, see model
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Body\">MultiBody.Parts.Body</a>.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, 110}, {150, 70}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-150, -100}, {150, -70}}, lineColor = {0, 0, 0}, textString = "%=r"), Rectangle(extent = {{-100, 31}, {101, -30}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Ellipse(extent = {{-60, 60}, {60, -60}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.Sphere, fillColor = {0, 127, 255}), Text(extent = {{-50, 24}, {55, -27}}, lineColor = {0, 0, 0}, textString = "%m"), Text(extent = {{55, 12}, {91, -13}}, lineColor = {0, 0, 0}, textString = "b"), Text(extent = {{-92, 13}, {-56, -12}}, lineColor = {0, 0, 0}, textString = "a")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 9}, {-100, 43}}, color = {128, 128, 128}), Line(points = {{100, 0}, {100, 44}}, color = {128, 128, 128}), Line(points = {{-100, 40}, {90, 40}}, color = {135, 135, 135}), Polygon(points = {{90, 44}, {90, 36}, {100, 40}, {90, 44}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-22, 68}, {20, 40}}, lineColor = {128, 128, 128}, textString = "r"), Line(points = {{-100, -10}, {-100, -90}}, color = {128, 128, 128}), Line(points = {{-100, -84}, {-10, -84}}, color = {128, 128, 128}), Polygon(points = {{-10, -80}, {-10, -88}, {0, -84}, {-10, -80}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-82, -66}, {-56, -84}}, lineColor = {128, 128, 128}, textString = "r_CM"), Line(points = {{0, -46}, {0, -90}}, color = {128, 128, 128})}));
        end BodyShape;

        model BodyCylinder "Rigid body with cylinder shape. Mass and animation properties are computed from cylinder data and density (12 potential states)"
          import NonSI = Modelica.SIunits.Conversions.NonSIunits;
          import Modelica.Mechanics.MultiBody.Types;
          import Modelica.Math.Vectors.normalizeWithAssert;
          import Modelica.SIunits.Conversions.to_unit1;
          Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
          Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          parameter Boolean animation = true "= true, if animation shall be enabled (show cylinder between frame_a and frame_b)";
          parameter SI.Position r[3](start = {0.1, 0, 0}) "Vector from frame_a to frame_b, resolved in frame_a";
          parameter SI.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to cylinder origin, resolved in frame_a";
          parameter Modelica.Mechanics.MultiBody.Types.Axis lengthDirection = to_unit1(r - r_shape) "Vector in length direction of cylinder, resolved in frame_a" annotation(Evaluate = true);
          parameter SI.Length length = Modelica.Math.Vectors.length(r - r_shape) "Length of cylinder";
          parameter SI.Distance diameter = length / world.defaultWidthFraction "Diameter of cylinder";
          parameter SI.Distance innerDiameter = 0 "Inner diameter of cylinder (0 <= innerDiameter <= Diameter)";
          parameter SI.Density density = 7700 "Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800)";
          input Modelica.Mechanics.MultiBody.Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor "Color of cylinder" annotation(Dialog(colorSelector = true, enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(enable = animation));
          SI.Position r_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Position vector from origin of world frame to origin of frame_a" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          SI.Velocity v_0[3](start = {0, 0, 0}, each stateSelect = if enforceStates then StateSelect.always else StateSelect.avoid) "Absolute velocity of frame_a, resolved in world frame (= der(r_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          SI.Acceleration a_0[3](start = {0, 0, 0}) "Absolute acceleration of frame_a resolved in world frame (= der(v_0))" annotation(Dialog(tab = "Initialization", showStartAttribute = true));
          parameter Boolean angles_fixed = false "= true, if angles_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.Angle angles_start[3] = {0, 0, 0} "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b" annotation(Dialog(tab = "Initialization"));
          parameter Types.RotationSequence sequence_start = {1, 2, 3} "Sequence of rotations to rotate frame_a into frame_b at initial time" annotation(Evaluate = true, Dialog(tab = "Initialization"));
          parameter Boolean w_0_fixed = false "= true, if w_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.AngularVelocity w_0_start[3] = {0, 0, 0} "Initial or guess values of angular velocity of frame_a resolved in world frame" annotation(Dialog(tab = "Initialization"));
          parameter Boolean z_0_fixed = false "= true, if z_0_start are used as initial values, else as guess values" annotation(Evaluate = true, choices(checkBox = true), Dialog(tab = "Initialization"));
          parameter SI.AngularAcceleration z_0_start[3] = {0, 0, 0} "Initial values of angular acceleration z_0 = der(w_0)" annotation(Dialog(tab = "Initialization"));
          parameter Boolean enforceStates = false "= true, if absolute variables of body object shall be used as states (StateSelect.always)" annotation(Dialog(tab = "Advanced"));
          parameter Boolean useQuaternions = true "= true, if quaternions shall be used as potential states otherwise use 3 angles as potential states" annotation(Dialog(tab = "Advanced"));
          parameter Types.RotationSequence sequence_angleStates = {1, 2, 3} "Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states" annotation(Evaluate = true, Dialog(tab = "Advanced", enable = not useQuaternions));
          constant Real pi = Modelica.Constants.pi;
          final parameter SI.Distance radius = diameter / 2 "Radius of cylinder";
          final parameter SI.Distance innerRadius = innerDiameter / 2 "Inner-Radius of cylinder";
          final parameter SI.Mass mo(min = 0) = density * pi * length * radius * radius "Mass of cylinder without hole";
          final parameter SI.Mass mi(min = 0) = density * pi * length * innerRadius * innerRadius "Mass of hole of cylinder";
          final parameter SI.Inertia I22 = (mo * (length * length + 3 * radius * radius) - mi * (length * length + 3 * innerRadius * innerRadius)) / 12 "Inertia with respect to axis through center of mass, perpendicular to cylinder axis";
          final parameter SI.Mass m(min = 0) = mo - mi "Mass of cylinder";
          final parameter Frames.Orientation R = Frames.from_nxy(r, {0, 1, 0}) "Orientation object from frame_a to frame spanned by cylinder axis and axis perpendicular to cylinder axis";
          final parameter SI.Position r_CM[3] = r_shape + normalizeWithAssert(lengthDirection) * length / 2 "Position vector from frame_a to center of mass, resolved in frame_a";
          final parameter SI.Inertia I[3, 3] = Frames.resolveDyade1(R, diagonal({(mo * radius * radius - mi * innerRadius * innerRadius) / 2, I22, I22})) "Inertia tensor of cylinder with respect to center of mass, resolved in frame parallel to frame_a";
          Body body(r_CM = r_CM, m = m, I_11 = I[1, 1], I_22 = I[2, 2], I_33 = I[3, 3], I_21 = I[2, 1], I_31 = I[3, 1], I_32 = I[3, 2], animation = false, sequence_start = sequence_start, angles_fixed = angles_fixed, angles_start = angles_start, w_0_fixed = w_0_fixed, w_0_start = w_0_start, z_0_fixed = z_0_fixed, z_0_start = z_0_start, useQuaternions = useQuaternions, sequence_angleStates = sequence_angleStates, enforceStates = false) annotation(Placement(transformation(extent = {{-30, -80}, {10, -40}}, rotation = 0)));
          FixedTranslation frameTranslation(r = r, animation = animation, shapeType = "pipecylinder", r_shape = r_shape, lengthDirection = lengthDirection, length = length, width = diameter, height = diameter, extra = innerDiameter / diameter, color = color, specularCoefficient = specularCoefficient, widthDirection = {0, 1, 0}) annotation(Placement(transformation(extent = {{-30, -20}, {10, 20}}, rotation = 0)));
        protected
          outer Modelica.Mechanics.MultiBody.World world;
        equation
          r_0 = frame_a.r_0;
          v_0 = der(r_0);
          a_0 = der(v_0);
          assert(innerDiameter < diameter, "parameter innerDiameter is greater than parameter diameter");
          connect(frameTranslation.frame_a, frame_a) annotation(Line(points = {{-30, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5));
          connect(frameTranslation.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5));
          connect(frame_a, body.frame_a) annotation(Line(points = {{-100, 0}, {-70, 0}, {-70, -60}, {-30, -60}}, color = {95, 95, 95}, thickness = 0.5));
          annotation(Documentation(info = "<HTML>
 <p>
 <b>Rigid body</b> with <b>cylinder</b> shape.
 The mass properties of the body (mass, center of mass,
 inertia tensor) are computed
 from the cylinder data. Optionally, the cylinder may be hollow.
 The cylinder shape is by default used in the animation.
 The two connector frames <b>frame_a</b> and <b>frame_b</b>
 are always parallel to each other. Example of component
 animation (note, that
 the animation may be switched off via parameter animation = <b>false</b>):
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyCylinder.png\" ALT=\"Parts.BodyCylinder\">
 </p>
 
 <p>
 A BodyCylinder component has potential states. For details of these
 states and of the \"Advanced\" menu parameters, see model
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Body\">MultiBody.Parts.Body</a>.</html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, 90}, {150, 50}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{150, -80}, {-150, -50}}, lineColor = {0, 0, 0}, textString = "%=r"), Rectangle(extent = {{-100, 40}, {100, -40}}, lineColor = {0, 24, 48}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}, radius = 10), Text(extent = {{-87, 13}, {-51, -12}}, lineColor = {0, 0, 0}, textString = "a"), Text(extent = {{51, 12}, {87, -13}}, lineColor = {0, 0, 0}, textString = "b")}));
        end BodyCylinder;
        annotation(Documentation(info = "<HTML>
 <p>
 Package <b>Parts</b> contains <b>rigid components</b> of a
 multi-body system. These components may be used to build up
 more complicated structures. For example, a part may be built up of
 a \"Body\" and of several \"FixedTranslation\" components.
 </p>
 <h4>Content</h4>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><th><b><i>Model</i></b></th><th><b><i>Description</i></b></th></tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Fixed\">Fixed</a></td>
       <td valign=\"top\">Frame fixed in world frame at a given position.
           It is visualized with a shape, see <b>shapeType</b> below
          (the frames on the two
           sides do not belong to the component):<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Fixed.png\" ALT=\"model Parts.Fixed\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.FixedTranslation\">FixedTranslation</a></td>
       <td valign=\"top\">Fixed translation of frame_b with respect to frame_a.
           It is visualized with a shape, see <b>shapeType</b> below
           (the frames on the two sides do not belong to the component):<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedTranslation.png\" ALT=\"model Parts.FixedTranslation\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.FixedRotation\">FixedRotation</a></td>
       <td valign=\"top\">Fixed translation and fixed rotation of frame_b with respect to frame_a
           It is visualized with a shape, see <b>shapeType</b>  below
           (the frames on the two sides do not belong to the component):<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedRotation.png\" ALT=\"model Parts.FixedRotation\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Body\">Body</a></td>
       <td valign=\"top\">Rigid body with mass, inertia tensor and one frame connector.
           It is visualized with a cylinder and a sphere at the
           center of mass:<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Body.png\" ALT=\"model Parts.Body\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.BodyShape\">BodyShape</a></td>
       <td valign=\"top\">Rigid body with mass, inertia tensor, different shapes
           (see <b>shapeType</b> below)
           for animation, and two frame connectors:<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyShape.png\" ALT=\"model Parts.BodyShape\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Fixed\">Fixed BodyBox</a></td>
       <td valign=\"top\">Rigid body with box shape (mass and animation properties are computed
           from box data and from density):<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyBox.png\" ALT=\"model Parts.BodyBox\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.BodyCylinder\">BodyCylinder</a></td>
       <td valign=\"top\">Rigid body with cylinder shape (mass and animation properties
           are computed from cylinder data and from density):<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/BodyCylinder.png\" ALT=\"model Parts.BodyCylinder\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.PointMass\">PointMass</a></td>
       <td valign=\"top\">Rigid body where inertia tensor and rotation is neglected:<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Parts/PointMass.png\" ALT=\"model Parts.PointMass\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Mounting1D\">Mounting1D</a></td>
       <td valign=\"top\"> Propagate 1-dim. support torque to 3-dim. system
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.Rotor1D\">Rotor1D</a></td>
       <td valign=\"top\">1D inertia attachable on 3-dim. bodies (without neglecting dynamic effects)<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Parts/Rotor1D.png\" ALT=\"model Parts.Rotor1D\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Parts.BevelGear1D\">BevelGear1D</a></td>
       <td valign=\"top\">1D gearbox with arbitrary shaft directions (3D bearing frame)
       </td>
   </tr>
 </table>
 <p>
 Components <b>Fixed</b>, <b>FixedTranslation</b>, <b>FixedRotation</b>
 and <b>BodyShape</b> are visualized according to parameter
 <b>shapeType</b>, that may have the following values (e.g., shapeType = \"box\"): <br>&nbsp;<br>
 </p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedShape.png\" ALT=\"model Visualizers.FixedShape\">
 <p>
 All the details of the visualization shape parameters are
 given in
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.FixedShape\">Visualizers.FixedShape</a>
 </p>
 <p>
 Colors in all animation parts are defined via parameter <b>color</b>.
 This is an Integer vector with 3 elements, {r, g, b}, and specifies the
 color of the shape. {r,g,b} are the \"red\", \"green\" and \"blue\" color parts,
 given in the ranges 0 .. 255, respectively. The predefined type
 <b>MultiBody.Types.Color</b> contains a menu
 definition of the colors used in the MultiBody library
 (this will be replaced by a color editor).
 </p>
 </html>"), Icon(graphics = {Rectangle(extent = {{-80, 28}, {2, -16}}, lineColor = {95, 95, 95}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {215, 215, 215}, radius = 10), Ellipse(extent = {{-8, 52}, {86, -42}}, lineColor = {95, 95, 95}, fillPattern = FillPattern.Sphere, fillColor = {215, 215, 215})}));
      end Parts;

      package Sensors "Sensors to measure variables"
        extends Modelica.Icons.SensorsPackage;

        model RelativePosition "Measure relative position vector between the origins of two frame connectors"
          extends Internal.PartialRelativeSensor;
          Blocks.Interfaces.RealOutput r_rel[3] "Relative position vector resolved in frame defined by resolveInFrame" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
          Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve if resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve "Coordinate system in which r_rel is optionally resolved" annotation(Placement(transformation(extent = {{84, 64}, {116, 96}}), iconTransformation(extent = {{84, 65}, {116, 97}})));
          parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a "Frame in which output vector r_rel shall be resolved (world, frame_a, frame_b, or frame_resolve)";
        protected
          Internal.BasicRelativePosition relativePosition(resolveInFrame = resolveInFrame) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
          Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition zeroPosition if not resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve annotation(Placement(transformation(extent = {{52, 20}, {72, 40}})));
        equation
          connect(relativePosition.frame_a, frame_a) annotation(Line(points = {{-10, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(relativePosition.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(relativePosition.frame_resolve, frame_resolve) annotation(Line(points = {{10, 8.1}, {26, 8.1}, {26, 8}, {36, 8}, {36, 80}, {100, 80}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          connect(zeroPosition.frame_resolve, relativePosition.frame_resolve) annotation(Line(points = {{52, 30}, {36, 30}, {36, 8.1}, {10, 8.1}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          connect(relativePosition.r_rel, r_rel) annotation(Line(points = {{0, -11}, {0, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{0, -70}, {0, -100}}, color = {0, 0, 127}, smooth = Smooth.None), Text(extent = {{-127, 95}, {134, 143}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{18, -80}, {102, -110}}, lineColor = {0, 0, 0}, textString = "r_rel")}), Documentation(info = "<html>
 <p>
 The relative position vector between the origins of frame_a and frame_b are
 determined and provided at the output signal connector <b>r_rel</b>.
 </p>
 
 <p>
 Via parameter <b>resolveInFrame</b> it is defined, in which frame
 the position vector is resolved:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
 <tr><th><b>resolveInFrame =<br>Types.ResolveInFrameAB.</b></th><th><b>Meaning</b></th></tr>
 <tr><td valign=\"top\">world</td>
     <td valign=\"top\">Resolve vector in world frame</td></tr>
 
 <tr><td valign=\"top\">frame_a</td>
     <td valign=\"top\">Resolve vector in frame_a</td></tr>
 
 <tr><td valign=\"top\">frame_b</td>
     <td valign=\"top\">Resolve vector in frame_b</td></tr>
 
 <tr><td valign=\"top\">frame_resolve</td>
     <td valign=\"top\">Resolve vector in frame_resolve</td></tr>
 </table>
 
 <p>
 If resolveInFrame = Types.ResolveInFrameAB.frame_resolve, the conditional connector
 \"frame_resolve\" is enabled and r_rel is resolved in the frame, to
 which frame_resolve is connected. Note, if this connector is enabled, it must
 be connected.
 </p>
 
 <p>
 Example: If resolveInFrame = Types.ResolveInFrameAB.frame_a, the output vector is
 computed as:
 </p>
 
 <pre>
     r_rel = MultiBody.Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
 </pre>
 </html>"));
        end RelativePosition;

        model RelativeVelocity "Measure relative velocity vector between the origins of two frame connectors"
          extends Internal.PartialRelativeSensor;
          Modelica.Blocks.Interfaces.RealOutput v_rel[3](each final quantity = "Velocity", each final unit = "m/s") "Relative velocity vector resolved in frame defined by resolveInFrame" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
          Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve if resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve "Coordinate system in which v_rel is optionally resolved" annotation(Placement(transformation(extent = {{84, 64}, {116, 96}}), iconTransformation(extent = {{84, 65}, {116, 97}})));
          parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a "Frame in which output vector v_rel shall be resolved (world, frame_a, frame_b, or frame_resolve)";
        protected
          RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
          Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition zeroPosition if not resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve annotation(Placement(transformation(extent = {{50, -60}, {70, -40}})));
          Modelica.Blocks.Continuous.Der der_r_rel[3] annotation(Placement(transformation(extent = {{-20, -20}, {0, 0}}, rotation = -90, origin = {10, -40})));
          Modelica.Mechanics.MultiBody.Sensors.TransformRelativeVector tansformRelativeVector(frame_r_in = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a, frame_r_out = resolveInFrame) annotation(Placement(transformation(extent = {{-10, -80}, {10, -60}})));
        equation
          connect(relativePosition.frame_a, frame_a) annotation(Line(points = {{-10, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(relativePosition.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(relativePosition.r_rel, der_r_rel.u) annotation(Line(points = {{0, -11}, {0, -18}}, color = {0, 0, 127}, smooth = Smooth.None));
          connect(der_r_rel.y, tansformRelativeVector.r_in) annotation(Line(points = {{0, -41}, {0, -58}}, color = {0, 0, 127}, smooth = Smooth.None));
          connect(tansformRelativeVector.r_out, v_rel) annotation(Line(points = {{0, -81}, {0, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
          connect(tansformRelativeVector.frame_a, frame_a) annotation(Line(points = {{-10, -70}, {-70, -70}, {-70, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(tansformRelativeVector.frame_b, frame_b) annotation(Line(points = {{10, -70}, {80, -70}, {80, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(tansformRelativeVector.frame_resolve, frame_resolve) annotation(Line(points = {{10, -61.9}, {35, -61.9}, {35, 80}, {100, 80}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          connect(zeroPosition.frame_resolve, tansformRelativeVector.frame_resolve) annotation(Line(points = {{50, -50}, {35, -50}, {35, -61.9}, {10, -61.9}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{0, -70}, {0, -100}}, color = {0, 0, 127}, smooth = Smooth.None), Text(extent = {{-127, 95}, {134, 143}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{18, -80}, {102, -110}}, lineColor = {0, 0, 0}, textString = "v_rel")}), Documentation(info = "<html>
 <p>
 The relative velocity vector between the origins of frame_a and of frame_b are
 determined and provided at the output signal connector <b>v_rel</b>.
 This vector is defined as:
 </p>
 
 <pre>
     r_rel = MultiBody.Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
     v_rel = <b>der</b>(r_rel);
 </pre>
 
 <p>
 Via parameter <b>resolveInFrame</b> it is defined, in which frame
 the velocity vector is resolved:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
 <tr><th><b>resolveInFrame =<br>Types.ResolveInFrameAB.</b></th><th><b>Meaning</b></th></tr>
 <tr><td valign=\"top\">world</td>
     <td valign=\"top\">Resolve vector in world frame</td></tr>
 
 <tr><td valign=\"top\">frame_a</td>
     <td valign=\"top\">Resolve vector in frame_a</td></tr>
 
 <tr><td valign=\"top\">frame_b</td>
     <td valign=\"top\">Resolve vector in frame_b</td></tr>
 
 <tr><td valign=\"top\">frame_resolve</td>
     <td valign=\"top\">Resolve vector in frame_resolve</td></tr>
 </table>
 
 <p>
 If resolveInFrame = Types.ResolveInFrameAB.frame_resolve, the conditional connector
 \"frame_resolve\" is enabled and v_rel is resolved in the frame, to
 which frame_resolve is connected. Note, if this connector is enabled, it must
 be connected.
 </p>
 
 <p>
 Example: If resolveInFrame = Types.ResolveInFrameAB.frame_b, the output vector is
 computed as:
 </p>
 
 <pre>
     r_rel   = MultiBody.Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
     v_rel_a = <b>der</b>(r_rel);
     v_rel   = MultiBody.Frames.resolveRelative(frame_a.R, frame_b.R, v_rel_a);
 </pre>
 
 </html>"));
        end RelativeVelocity;

        model Distance "Measure the distance between the origins of two frame connectors"
          import Modelica.Mechanics.MultiBody.Frames;
          import Modelica.Mechanics.MultiBody.Types;
          extends Interfaces.PartialTwoFrames;
          extends Modelica.Icons.TranslationalSensor;
          Modelica.Blocks.Interfaces.RealOutput distance "Distance between the origin of frame_a and the origin of frame_b" annotation(Placement(transformation(origin = {0, -110}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
          parameter Boolean animation = true "= true, if animation shall be enabled (show arrow)";
          input SI.Diameter arrowDiameter = world.defaultArrowDiameter "Diameter of relative arrow from frame_a to frame_b" annotation(Dialog(group = "if animation = true", enable = animation));
          input Types.Color arrowColor = Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor "Color of relative arrow from frame_a to frame_b" annotation(Dialog(colorSelector = true, group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(group = "if animation = true", enable = animation));
          input SI.Position s_small(min = sqrt(Modelica.Constants.small)) = 1e-10 "Prevent zero-division if distance between frame_a and frame_b is zero" annotation(Dialog(tab = "Advanced"));
        protected
          Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow arrow(r = frame_a.r_0, r_head = frame_b.r_0 - frame_a.r_0, diameter = arrowDiameter, color = arrowColor, specularCoefficient = specularCoefficient) if world.enableAnimation and animation;
        protected
          SI.Position r_rel_0[3] = frame_b.r_0 - frame_a.r_0 "Position vector from frame_a to frame_b resolved in world frame";
          SI.Area L2 = r_rel_0 * r_rel_0;
          SI.Area s_small2 = s_small ^ 2;
        equation
          frame_a.f = zeros(3);
          frame_b.f = zeros(3);
          frame_a.t = zeros(3);
          frame_b.t = zeros(3);
          distance = smooth(1, if noEvent(L2 > s_small2) then sqrt(L2) else L2 / (2 * s_small) * (3 - L2 / s_small2));
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{0, -60}, {0, -100}}, color = {0, 0, 255}), Line(points = {{-70, 0}, {-101, 0}}, color = {0, 0, 0}), Line(points = {{70, 0}, {100, 0}}, color = {0, 0, 0}), Text(extent = {{-128, 30}, {133, 78}}, textString = "%name", lineColor = {0, 0, 255})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-70, 0}, {-101, 0}}, color = {0, 0, 0}), Line(points = {{70, 0}, {100, 0}}, color = {0, 0, 0}), Line(points = {{0, -60}, {0, -100}}, color = {0, 0, 255}), Text(extent = {{-22, 70}, {20, 46}}, textString = "s", lineColor = {0, 0, 255}), Line(points = {{-98, 40}, {88, 40}}, color = {0, 0, 255}), Polygon(points = {{102, 40}, {87, 46}, {87, 34}, {102, 40}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid)}), Documentation(info = "<HTML>
 <p>
 The <b>distance</b> between the origins of frame_a
 and of frame_b are determined and provided at the
 output signal connector <b>distance</b>. This
 distance is always positive. <b>Derivatives</b> of this
 signal can be easily obtained by connecting the
 block
 <a href=\"modelica://Modelica.Blocks.Continuous.Der\">Modelica.Blocks.Continuous.Der</a>
 to \"distance\" (this block performs analytic differentiation
 of the input signal using the der(..) operator).
 </p>
 <p>
 In the following figure the animation of a Distance
 sensor is shown. The light blue coordinate system is
 frame_a, the dark blue coordinate system is frame_b, and
 the yellow arrow is the animated sensor.
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Sensors/Distance.png\">
 </p>
 
 <p>
 If the distance is smaller as parameter <b>s_small</b> (in the \"advanced\" menu),
 it is approximated such that its derivative is
 finite for zero distance. Without such an approximation, the derivative would
 be infinite and a division by zero would occur. The approximation is performed
 in the following way: If distance > s_small, it is computed as sqrt(r*r) where
 r is the position vector from the origin of frame_a to the origin of frame_b.
 If the distance becomes smaller as s_small, the \"sqrt()\" function is approximated
 by a second order polynomial, such that the function value and its first derivative
 are identical for sqrt() and the polynomial at s_small. Furthermore, the polynomial
 passes through zero. The effect is, that the distance function is continuous and
 differentiable everywhere. The derivative at zero distance is 3/(2*s_small).
 </p>
 </HTML>"));
        end Distance;

        model TransformRelativeVector "Transform relative vector in to another frame"
          extends Internal.PartialRelativeSensor;
          Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve if frame_r_in == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve or frame_r_out == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve "Coordinate system in which r_in or r_out is optionally resolved" annotation(Placement(transformation(extent = {{84, 64}, {116, 96}}), iconTransformation(extent = {{84, 65}, {116, 97}})));
          Blocks.Interfaces.RealInput r_in[3] "Input vector resolved in frame defined by frame_r_in" annotation(Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = -90, origin = {0, 120})));
          Blocks.Interfaces.RealOutput r_out[3] "Input vector r_in resolved in frame defined by frame_r_out" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
          parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_in = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a "Frame in which vector r_in is resolved (world, frame_a, frame_b, or frame_resolve)";
          parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_out = frame_r_in "Frame in which vector r_in shall be resolved and provided as r_out (world, frame_a, frame_b, or frame_resolve)";
        protected
          Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVector basicTransformVector(frame_r_in = frame_r_in, frame_r_out = frame_r_out) annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
          Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition zeroPosition if not (frame_r_in == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve or frame_r_out == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve) annotation(Placement(transformation(extent = {{48, 10}, {68, 30}})));
        equation
          connect(basicTransformVector.frame_a, frame_a) annotation(Line(points = {{-10, 0}, {-100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(basicTransformVector.frame_b, frame_b) annotation(Line(points = {{10, 0}, {100, 0}}, color = {95, 95, 95}, thickness = 0.5, smooth = Smooth.None));
          connect(basicTransformVector.frame_resolve, frame_resolve) annotation(Line(points = {{10, 8.1}, {20, 8.1}, {20, 8}, {32, 8}, {32, 80}, {100, 80}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          connect(zeroPosition.frame_resolve, basicTransformVector.frame_resolve) annotation(Line(points = {{48, 20}, {32, 20}, {32, 8.1}, {10, 8.1}}, color = {95, 95, 95}, pattern = LinePattern.Dot, smooth = Smooth.None));
          connect(basicTransformVector.r_out, r_out) annotation(Line(points = {{0, -11}, {0, -110}}, color = {0, 0, 127}, smooth = Smooth.None));
          connect(basicTransformVector.r_in, r_in) annotation(Line(points = {{0, 12}, {0, 120}}, color = {0, 0, 127}, smooth = Smooth.None));
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{0, -70}, {0, -100}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{0, 100}, {0, 70}}, color = {0, 0, 127}, smooth = Smooth.None), Text(extent = {{-104, 124}, {-18, 96}}, lineColor = {0, 0, 0}, textString = "r_in"), Text(extent = {{-124, -76}, {2, -104}}, lineColor = {0, 0, 0}, textString = "r_out")}), Documentation(info = "<html>
 <p>
 The input vector \"Real r_in[3]\" is assumed to be a relative kinematic quantity
 between frame_a and frame_b
 that is defined to be resolved in the frame defined
 with parameter \"frame_r_in\". This model resolves vector r_in in the
 coordinate system defined with parameter \"frame_r_out\" and returns the
 transformed output vector as \"Real r_out[3]\";
 </p>
 </html>"));
        end TransformRelativeVector;

        package Internal "Internal package, should not be used by user"
          extends Modelica.Icons.InternalPackage;

          partial model PartialRelativeSensor "Partial relative sensor model for sensors defined by components"
            extends Modelica.Icons.RotationalSensor;
            Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
            Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
          equation
            assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
            assert(cardinality(frame_b) > 0, "Connector frame_b must be connected at least once");
            annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-108, 43}, {-72, 18}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{72, 41}, {108, 16}}, lineColor = {128, 128, 128}, textString = "b"), Line(points = {{-70, 0}, {-96, 0}, {-96, 0}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{96, 0}, {70, 0}, {70, 0}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{60, 36}, {60, 36}, {60, 80}, {95, 80}}, color = {0, 0, 0}, smooth = Smooth.None, pattern = LinePattern.Dot)}));
          end PartialRelativeSensor;

          model PartialRelativeBaseSensor "Partial relative sensor models for sensors defined by equations (frame_resolve must be connected exactly once)"
            extends Modelica.Icons.RotationalSensor;
            Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a (measurement is between frame_a and frame_b)" annotation(Placement(transformation(extent = {{-116, -16}, {-84, 16}}, rotation = 0)));
            Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b (measurement is between frame_a and frame_b)" annotation(Placement(transformation(extent = {{84, -16}, {116, 16}}, rotation = 0)));
            Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve "Coordinate system in which vector is optionally resolved" annotation(Placement(transformation(extent = {{84, 64}, {116, 96}}), iconTransformation(extent = {{84, 65}, {116, 97}})));
          equation
            assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
            assert(cardinality(frame_b) > 0, "Connector frame_b must be connected at least once");
            assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
            frame_a.f = zeros(3);
            frame_a.t = zeros(3);
            frame_b.f = zeros(3);
            frame_b.t = zeros(3);
            frame_resolve.f = zeros(3);
            frame_resolve.t = zeros(3);
            annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-108, 43}, {-72, 18}}, lineColor = {128, 128, 128}, textString = "a"), Text(extent = {{72, 41}, {108, 16}}, lineColor = {128, 128, 128}, textString = "b"), Line(points = {{-70, 0}, {-96, 0}, {-96, 0}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{96, 0}, {70, 0}, {70, 0}}, color = {0, 0, 0}, smooth = Smooth.None), Line(points = {{0, -70}, {0, -100}}, color = {0, 0, 127}, smooth = Smooth.None), Line(points = {{60, 36}, {60, 36}, {60, 80}, {95, 80}}, color = {0, 0, 0}, smooth = Smooth.None, pattern = LinePattern.Dot)}));
          end PartialRelativeBaseSensor;

          model BasicRelativePosition "Measure relative position vector (same as Sensors.RelativePosition, but frame_resolve is not conditional and must be connected)"
            import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
            extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
            Modelica.Blocks.Interfaces.RealOutput r_rel[3](each final quantity = "Length", each final unit = "m") "Relative position vector frame_b.r_0 - frame_a.r_0 resolved in frame defined by resolveInFrame" annotation(Placement(transformation(origin = {0, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
            parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a "Frame in which output vector r_rel is resolved (world, frame_a, frame_b, or frame_resolve)";
          equation
            if resolveInFrame == ResolveInFrameAB.frame_a then
              r_rel = Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
            elseif resolveInFrame == ResolveInFrameAB.frame_b then
              r_rel = Frames.resolve2(frame_b.R, frame_b.r_0 - frame_a.r_0);
            elseif resolveInFrame == ResolveInFrameAB.world then
              r_rel = frame_b.r_0 - frame_a.r_0;
            elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
              r_rel = Frames.resolve2(frame_resolve.R, frame_b.r_0 - frame_a.r_0);
            else
              assert(false, "Wrong value for parameter resolveInFrame");
              r_rel = zeros(3);
            end if;
            annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{12, -76}, {96, -106}}, lineColor = {0, 0, 0}, textString = "r_rel"), Text(extent = {{-127, 95}, {134, 143}}, textString = "%name", lineColor = {0, 0, 255})}));
          end BasicRelativePosition;

          model BasicTransformRelativeVector "Transform relative vector in to another frame"
            import Modelica.Mechanics.MultiBody.Frames;
            import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
            extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
            parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_in = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a "Frame in which vector r_in is resolved (world, frame_a, frame_b, or frame_resolve)";
            parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_out = frame_r_in "Frame in which vector r_out (= r_in in other frame) is resolved (world, frame_a, frame_b, or frame_resolve)";
            Blocks.Interfaces.RealInput r_in[3] "Input vector resolved in frame defined by frame_r_in" annotation(Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = -90, origin = {0, 120})));
            Blocks.Interfaces.RealOutput r_out[3] "Input vector r_in resolved in frame defined by frame_r_out" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
          protected
            Modelica.Mechanics.MultiBody.Frames.Orientation R1 "Orientation object from world frame to frame in which r_in is resolved";
          equation
            if frame_r_out == frame_r_in then
              r_out = r_in;
              R1 = Frames.nullRotation();
            else
              if frame_r_in == ResolveInFrameAB.world then
                R1 = Frames.nullRotation();
              elseif frame_r_in == ResolveInFrameAB.frame_a then
                R1 = frame_a.R;
              elseif frame_r_in == ResolveInFrameAB.frame_b then
                R1 = frame_b.R;
              else
                R1 = frame_resolve.R;
              end if;
              if frame_r_out == ResolveInFrameAB.world then
                r_out = Frames.resolve1(R1, r_in);
              elseif frame_r_out == ResolveInFrameAB.frame_a then
                r_out = Frames.resolveRelative(r_in, R1, frame_a.R);
              elseif frame_r_out == ResolveInFrameAB.frame_b then
                r_out = Frames.resolveRelative(r_in, R1, frame_b.R);
              else
                r_out = Frames.resolveRelative(r_in, R1, frame_resolve.R);
              end if;
            end if;
            annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-128, -92}, {-2, -120}}, lineColor = {0, 0, 0}, textString = "r_out"), Text(extent = {{-108, 144}, {-22, 116}}, lineColor = {0, 0, 0}, textString = "r_in"), Line(points = {{0, 100}, {0, 70}}, color = {0, 0, 127}, smooth = Smooth.None)}));
          end BasicTransformRelativeVector;
        end Internal;
        annotation(Documentation(info = "<html>
 <p>
 Package <b>Sensors</b> contains <b>ideal measurement</b>
 components to determine absolute and relative kinematic
 quantities, as well as cut-forces, cut-torques and power. All
 measured quantities can be provided in every desired
 coordinate system.
 </p>
 </html>"));
      end Sensors;

      package Visualizers "3-dimensional visual objects used for animation"
        extends Modelica.Icons.Package;

        model FixedShape "Visualizing an elementary shape with dynamically varying shape attributes (has one frame connector)"
          import Modelica.Mechanics.MultiBody.Types;
          extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;
          parameter Boolean animation = true "= true, if animation shall be enabled";
          parameter Types.ShapeType shapeType = "box" "Type of shape" annotation(Dialog(group = "if animation = true", enable = animation));
          input SI.Position r_shape[3] = {0, 0, 0} "Vector from frame_a to shape origin, resolved in frame_a" annotation(Dialog(group = "if animation = true", enable = animation));
          input Types.Axis lengthDirection = {1, 0, 0} "Vector in length direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(group = "if animation = true", enable = animation));
          input Types.Axis widthDirection = {0, 1, 0} "Vector in width direction of shape, resolved in frame_a" annotation(Evaluate = true, Dialog(group = "if animation = true", enable = animation));
          input SI.Distance length(start = 1) "Length of shape" annotation(Dialog(group = "if animation = true", enable = animation));
          input SI.Distance width(start = 0.1) "Width of shape" annotation(Dialog(group = "if animation = true", enable = animation));
          input SI.Distance height(start = 0.1) "Height of shape" annotation(Dialog(group = "if animation = true", enable = animation));
          input Modelica.Mechanics.MultiBody.Types.Color color = {0, 128, 255} "Color of shape" annotation(Dialog(colorSelector = true, group = "if animation = true", enable = animation));
          input Types.ShapeExtra extra = 0.0 "Additional data for cylinder, cone, pipe, gearwheel and spring" annotation(Dialog(group = "if animation = true", enable = animation));
          input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(group = "if animation = true", enable = animation));
        protected
          Advanced.Shape vis(shapeType = shapeType, r_shape = r_shape, lengthDirection = lengthDirection, widthDirection = widthDirection, length = length, width = width, height = height, color = color, extra = extra, specularCoefficient = specularCoefficient, r = frame_a.r_0, R = frame_a.R) if world.enableAnimation and animation;
        equation
          // No forces and torques
          frame_a.f = zeros(3);
          frame_a.t = zeros(3);
          annotation(Documentation(info = "<HTML>
 <p>
 Model <b>FixedShape</b> defines a visual shape that is
 shown at the location of its frame_a.
 All describing data such as size and color can vary dynamically by
 providing appropriate expressions in the input fields of the
 parameter menu. The only exception is parameter shapeType
 that cannot be changed during simulation.
 The following shapes are currently supported via
 parameter <b>shapeType</b> (e.g., shapeType=\"box\"):<br>&nbsp;
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Shape.png\" ALT=\"model Visualizers.FixedShape\">
 </p>
 
 <p>
 The dark blue arrows in the figure above are directed along
 variable <b>lengthDirection</b>. The light blue arrows are directed
 along variable <b>widthDirection</b>. The <b>coordinate systems</b>
 in the figure represent frame_a of the FixedShape component.
 </p>
 
 <p>
 Additionally, <b>external shapes</b> can be specified as (not all options might be supported by all tools):
 </p>
 
 <ul>
 <li> <b>\"1\", \"2\", ...</b><br>
      define external shapes specified in DXF format in files \"1.dxf\", \"2.dxf\", ...
      The DXF-files must be found either in the current directory or in the directory where
      the Shape instance is stored that references the DXF file.
      This (very limited) option should not be used for new models. Example:<br>
     shapeType=\"1\".<br></li>
 
 <li> \"<b>modelica:</b>//&lt;Modelica-name&gt;/&lt;relative-path-file-name&gt;\"<br>
      characterizes the file that is stored under the location of the
      &lt;Modelica-name&gt; library path with the given relative file name.
      Example:<br> shapeType = \"modelica://Modelica/Resources/Data/Shapes/Engine/piston.dxf\".<br></li>
 
 <li> \"<b>file:</b>//&lt;absolute-file-name&gt;\"<br>
      characterizes an absolute file name in the file system. Example:<br>
      shapeType=\"file://C:/users/myname/shapes/piston.dxf\".</li>
 </ul>
 
 <p>
 The supported file formats are tool dependent. Most tools support
 at least DXF-files (a tool might support 3-dim. Face of the DXF format only),
 but may support other format as well (such as stl, obj, 3ds).
 Since visualization files contain color and other data, the corresponding
 information in the model is usually ignored.
 </p>
 
 <p>
 The sizes of any of the above components are specified by the
 <b>length</b>, <b>width</b> and <b>height</b> variables.
 Via variable <b>extra</b> additional data can be defined:
 </p>
 <table border=1 cellspacing=0 cellpadding=2>
 <tr><th><b>shapeType</b></th><th>Meaning of parameter <b>extra</b></th></tr>
 <tr>
   <td valign=\"top\">\"cylinder\"</td>
   <td valign=\"top\">if extra &gt; 0, a black line is included in the
       cylinder to show the rotation of it.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"cone\"</td>
   <td valign=\"top\">extra = diameter-left-side / diameter-right-side, i.e.,<br>
       extra = 1: cylinder<br>
       extra = 0: \"real\" cone.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"pipe\"</td>
   <td valign=\"top\">extra = outer-diameter / inner-diameter, i.e, <br>
       extra = 1: cylinder that is completely hollow<br>
       extra = 0: cylinder without a hole.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"gearwheel\"</td>
   <td valign=\"top\">extra is the number of teeth of the (external) gear.
 If extra &lt; 0, an internal gear is visualized with |extra| teeth.
 The axis of the gearwheel is along \"lengthDirection\", and usually:
 width = height = 2*radiusOfGearWheel.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"spring\"</td>
   <td valign=\"top\">extra is the number of windings of the spring.
       Additionally, \"height\" is <b>not</b> the \"height\" but
       2*coil-width.</td>
 </tr>
 <tr>
   <td valign=\"top\">external shape</td>
   <td valign=\"top\">extra = 0: Visualization from file is not scaled.<br>
                      extra = 1: Visualization from file is scaled with \"length\", \"width\" and height\"
                                 of the shape</td>
 </tr>
 </table>
 <p>
 Parameter <b>color</b> is a vector with 3 elements,
 {r, g, b}, and specifies the color of the shape.
 {r,g,b} are the \"red\", \"green\" and \"blue\" color parts.
 Note, r g, b are given as Integer[3] in the ranges 0 .. 255,
 respectively. The predefined type
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Types.Color\">MultiBody.Types.Color</a> contains a menu
 definition of the colors used in the MultiBody library together with a color editor.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 33}, {-100, -61}, {-10, -41}, {50, -61}, {50, 33}, {-10, 11}, {-100, 33}}, lineColor = {0, 127, 255}, fillColor = {0, 127, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-98, 34}, {-64, 46}, {0, 30}, {74, 56}, {50, 32}, {-10, 12}, {-98, 34}}, lineColor = {255, 255, 255}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid), Polygon(points = {{72, 54}, {50, 32}, {50, -60}, {72, -32}, {72, 54}}, lineColor = {255, 255, 255}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -65}, {150, -95}}, lineColor = {0, 0, 0}, textString = "%shapeType"), Text(extent = {{-150, 100}, {150, 60}}, textString = "%name", lineColor = {0, 0, 255})}));
        end FixedShape;

        package Advanced "Visualizers that require basic knowledge about Modelica in order to use them"
          extends Modelica.Icons.Package;

          model Arrow "Visualizing an arrow with variable size; all data have to be set as modifiers (see info layer)"
            import Modelica.Mechanics.MultiBody.Types;
            import Modelica.Mechanics.MultiBody.Frames;
            import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
            import Modelica.SIunits.Conversions.to_unit1;
            input Frames.Orientation R = Frames.nullRotation() "Orientation object to rotate the world frame into the arrow frame" annotation(Dialog);
            input SI.Position r[3] = {0, 0, 0} "Position vector from origin of world frame to origin of arrow frame, resolved in world frame" annotation(Dialog);
            input SI.Position r_tail[3] = {0, 0, 0} "Position vector from origin of arrow frame to arrow tail, resolved in arrow frame" annotation(Dialog);
            input SI.Position r_head[3] = {0, 0, 0} "Position vector from arrow tail to the head of the arrow, resolved in arrow frame" annotation(Dialog);
            input SI.Diameter diameter = world.defaultArrowDiameter "Diameter of arrow line" annotation(Dialog);
            input Modelica.Mechanics.MultiBody.Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.ArrowColor "Color of arrow" annotation(Dialog(colorSelector = true));
            input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Material property describing the reflecting of ambient light (= 0 means, that light is completely absorbed)" annotation(Dialog);
          protected
            outer Modelica.Mechanics.MultiBody.World world;
            SI.Length length = Modelica.Math.Vectors.length(r_head) "Length of arrow";
            Real e_x[3](each final unit = "1", start = {1, 0, 0}) = noEvent(if length < 1e-10 then {1, 0, 0} else r_head / length);
            Real rxvisobj[3](each final unit = "1") = transpose(R.T) * e_x "X-axis unit vector of shape, resolved in world frame" annotation(HideResult = true);
            SI.Position rvisobj[3] = r + T.resolve1(R.T, r_tail) "Position vector from world frame to shape frame, resolved in world frame" annotation(HideResult = true);
            SI.Length arrowLength = noEvent(max(0, length - diameter * Types.Defaults.ArrowHeadLengthFraction)) annotation(HideResult = true);
            Visualizers.Advanced.Shape arrowLine(length = arrowLength, width = diameter, height = diameter, lengthDirection = to_unit1(r_head), widthDirection = {0, 1, 0}, shapeType = "cylinder", color = color, specularCoefficient = specularCoefficient, r_shape = r_tail, r = r, R = R) if world.enableAnimation;
            Visualizers.Advanced.Shape arrowHead(length = noEvent(max(0, min(length, diameter * Types.Defaults.ArrowHeadLengthFraction))), width = noEvent(max(0, diameter * MultiBody.Types.Defaults.ArrowHeadWidthFraction)), height = noEvent(max(0, diameter * MultiBody.Types.Defaults.ArrowHeadWidthFraction)), lengthDirection = to_unit1(r_head), widthDirection = {0, 1, 0}, shapeType = "cone", color = color, specularCoefficient = specularCoefficient, r = rvisobj + rxvisobj * arrowLength, R = R) if world.enableAnimation;
            annotation(Documentation(info = "<HTML>
 <p>
 Model <b>Arrow</b> defines an arrow that is dynamically
 visualized at the defined location (see variables below).
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/Arrow.png\" ALT=\"model Visualizers.Advanced.Arrow\">
 </p>
 
 <p>
 The variables under heading <b>Parameters</b> below
 are declared as (time varying) <b>input</b> variables.
 If the default equation is not appropriate, a corresponding
 modifier equation has to be provided in the
 model where an <b>Arrow</b> instance is used, e.g., in the form
 </p>
 <pre>
     Visualizers.Advanced.Arrow arrow(diameter = sin(time));
 </pre>
 
 <p>
 Variable <b>color</b> is an Integer vector with 3 elements,
 {r, g, b}, and specifies the color of the shape.
 {r,g,b} are the \"red\", \"green\" and \"blue\" color parts.
 Note, r g, b are given in the range 0 .. 255.
 The predefined type <b>MultiBody.Types.Color</b> contains
 a menu definition of the colors used in the MultiBody
 library (will be replaced by a color editor).
 </p>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 28}, {20, -30}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Polygon(points = {{20, 60}, {100, 0}, {20, -60}, {20, 60}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 105}, {150, 65}}, textString = "%name", lineColor = {0, 0, 255})}));
          end Arrow;

          model Shape "Visualizing an elementary object with variable size; all data have to be set as modifiers (see info layer)"
            extends ModelicaServices.Animation.Shape;
            extends Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape;
            annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {80, 60}}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-100, 60}, {-80, 100}, {100, 100}, {80, 60}, {-100, 60}}, lineColor = {0, 0, 255}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Polygon(points = {{100, 100}, {100, -60}, {80, -100}, {80, 60}, {100, 100}}, lineColor = {0, 0, 255}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid), Text(extent = {{-100, -54}, {80, 8}}, lineColor = {0, 0, 0}, textString = "%shapeType"), Text(extent = {{-150, 150}, {150, 110}}, lineColor = {0, 0, 255}, textString = "%name")}), Documentation(info = "<HTML>
 <p>
 Model <b>Shape</b> defines a visual shape that is
 shown at the location of its reference coordinate system, called
 'object frame' below. All describing variables such
 as size and color can vary dynamically (with the only exception
 of parameter shapeType). The default equations in the
 declarations should be modified by providing appropriate modifier
 equations. Model <b>Shape</b> is usually used as a basic building block to
 implement simpler to use graphical components.
 </p>
 <p>
 The following shapes are supported via
 parameter <b>shapeType</b> (e.g., shapeType=\"box\"):<br>&nbsp;
 </p>
 
 <p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Shape.png\" ALT=\"model Visualizers.FixedShape\">
 </p>
 
 <p>&nbsp;<br>
 The dark blue arrows in the figure above are directed along
 variable <b>lengthDirection</b>. The light blue arrows are directed
 along variable <b>widthDirection</b>. The <b>coordinate systems</b>
 in the figure represent frame_a of the Shape component.
 </p>
 
 <p>
 Additionally, <b>external shapes</b> can be specified as (not all options might be supported by all tools):
 </p>
 
 <ul>
 <li> <b>\"1\", \"2\", ...</b><br>
      define external shapes specified in DXF format in files \"1.dxf\", \"2.dxf\", ...
      The DXF-files must be found either in the current directory or in the directory where
      the Shape instance is stored that references the DXF file.
      This (very limited) option should not be used for new models. Example:<br>
     shapeType=\"1\".<br></li>
 
 <li> \"<b>modelica:</b>//&lt;Modelica-name&gt;/&lt;relative-path-file-name&gt;\"<br>
      characterizes the file that is stored under the location of the
      &lt;Modelica-name&gt; library path with the given relative file name.
      Example:<br> shapeType = \"modelica://Modelica/Resources/Data/Shapes/Engine/piston.dxf\".<br></li>
 
 <li> \"<b>file:</b>//&lt;absolute-file-name&gt;\"<br>
      characterizes an absolute file name in the file system. Example:<br>
      shapeType=\"file://C:/users/myname/shapes/piston.dxf\".</li>
 </ul>
 
 <p>
 The supported file formats are tool dependent. Most tools support
 at least DXF-files (a tool might support 3-dim. Face of the DXF format only),
 but may support other format as well (such as stl, obj, 3ds).
 Since visualization files contain color and other data, the corresponding
 information in the model is usually ignored.
 </p>
 
 <p>
 The sizes of any of the above components are specified by the
 <b>length</b>, <b>width</b> and <b>height</b> variables.
 Via variable <b>extra</b> additional data can be defined:
 </p>
 <table border=1 cellspacing=0 cellpadding=2>
 <tr><th><b>shapeType</b></th><th>Meaning of parameter <b>extra</b></th></tr>
 <tr>
   <td valign=\"top\">\"cylinder\"</td>
   <td valign=\"top\">if extra &gt; 0, a black line is included in the
       cylinder to show the rotation of it.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"cone\"</td>
   <td valign=\"top\">extra = diameter-left-side / diameter-right-side, i.e.,<br>
       extra = 1: cylinder<br>
       extra = 0: \"real\" cone.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"pipe\"</td>
   <td valign=\"top\">extra = outer-diameter / inner-diameter, i.e, <br>
       extra = 1: cylinder that is completely hollow<br>
       extra = 0: cylinder without a hole.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"gearwheel\"</td>
   <td valign=\"top\">extra is the number of teeth of the (external) gear.
 If extra &lt; 0, an internal gear is visualized with |extra| teeth.
 The axis of the gearwheel is along \"lengthDirection\", and usually:
 width = height = 2*radiusOfGearWheel.</td>
 </tr>
 <tr>
   <td valign=\"top\">\"spring\"</td>
   <td valign=\"top\">extra is the number of windings of the spring.
       Additionally, \"height\" is <b>not</b> the \"height\" but
       2*coil-width.</td>
 </tr>
 <tr>
   <td valign=\"top\">external shape</td>
   <td valign=\"top\">extra = 0: Visualization from file is not scaled.<br>
                    extra = 1: Visualization from file is scaled with \"length\", \"width\" and height\"
                               of the shape</td>
 </tr>
 </table>
 <p>
 Parameter <b>color</b> is a vector with 3 elements,
 {r, g, b}, and specifies the color of the shape.
 {r,g,b} are the \"red\", \"green\" and \"blue\" color parts.
 Note, r g, b are given as Integer[3] in the ranges 0 .. 255,
 respectively. The predefined type
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Types.Color\">MultiBody.Types.Color</a> contains a menu
 definition of the colors used in the MultiBody library together with a color editor.
 </p>
 
 <p>
 The variables under heading <b>Parameters</b> below
 are declared as (time varying) <b>input</b> variables.
 If the default equation is not appropriate, a corresponding
 modifier equation has to be provided in the
 model where a <b>Shape</b> instance is used, e.g., in the form
 </p>
 <pre>
     Visualizers.Advanced.Shape shape(length = sin(time));
 </pre>
 </html>"));
          end Shape;
          annotation(Documentation(info = "<HTML>
 <p>
 Package <b>Visualizers.Advanced</b> contains components to visualize
 3-dimensional shapes with dynamical sizes. None of the components
 has a frame connector. The position and orientation is set via
 modifiers. Basic knowledge of Modelica
 is needed in order to utilize the components of this package.
 These components have also to be used for models,
 where the forces and torques in the frame connector are set via
 equations (in this case, the models of the Visualizers package cannot be used,
 since they all have frame connectors).
 </p>
 <h4>Content</h4>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow\">Arrow</a></td>
       <td valign=\"top\">Visualizing an arrow where all parts of the arrow can vary dynamically:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/Arrow.png\" ALT=\"model Visualizers.Advanced.Arrow\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrow\">DoubleArrow</a></td>
       <td valign=\"top\">Visualizing a double arrow where all parts of the arrow can vary dynamically:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/DoubleArrow.png\" ALT=\"model Visualizers.Advanced.DoubleArrow\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape\">Shape</a></td>
       <td valign=\"top\">Visualizing an elementary object with variable size.
       The following shape types are supported:<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedShape.png\" ALT=\"model Visualizers.Advanced.Shape\">
       </td>
   </tr>
 
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface\">Surface</a></td>
       <td valign=\"top\">Visualizing a moveable parameterized surface:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/Surface_small.png\">
       </td>
   </tr>
 
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField\">PipeWithScalarField</a></td>
       <td valign=\"top\">Visualizing a pipe with a scalar field represented by a color coding:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/PipeWithScalarFieldIcon.png\">
       </td>
   </tr>
 </table>
 </HTML>"));
        end Advanced;

        package Internal "Visualizers that will be replaced by improved versions in the future (do not use them)"
          extends Modelica.Icons.InternalPackage;

          model Lines "Visualizing a set of lines as cylinders with variable size, e.g., used to display characters (no Frame connector)"
            import Modelica.Mechanics.MultiBody;
            import Modelica.Mechanics.MultiBody.Types;
            import Modelica.Mechanics.MultiBody.Frames;
            import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
            input Modelica.Mechanics.MultiBody.Frames.Orientation R = Frames.nullRotation() "Orientation object to rotate the world frame into the object frame" annotation(Dialog);
            input SI.Position r[3] = {0, 0, 0} "Position vector from origin of world frame to origin of object frame, resolved in world frame" annotation(Dialog);
            input SI.Position r_lines[3] = {0, 0, 0} "Position vector from origin of object frame to the origin of 'lines' frame, resolved in object frame" annotation(Dialog);
            input Real n_x[3](each final unit = "1") = {1, 0, 0} "Vector in direction of x-axis of 'lines' frame, resolved in object frame" annotation(Dialog);
            input Real n_y[3](each final unit = "1") = {0, 1, 0} "Vector in direction of y-axis of 'lines' frame, resolved in object frame" annotation(Dialog);
            input SI.Position lines[:, 2, 2] = zeros(0, 2, 2) "List of start and end points of cylinders resolved in an x-y frame defined by n_x, n_y, e.g., {[0,0;1,1], [0,1;1,0], [2,0; 3,1]}" annotation(Dialog);
            input SI.Length diameter(min = 0) = 0.05 "Diameter of the cylinders defined by lines" annotation(Dialog);
            input Modelica.Mechanics.MultiBody.Types.Color color = {0, 128, 255} "Color of cylinders" annotation(Dialog(colorSelector = true));
            input Types.SpecularCoefficient specularCoefficient = 0.7 "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog);
          protected
            parameter Integer n = size(lines, 1) "Number of cylinders";
            T.Orientation R_rel = T.from_nxy(n_x, n_y);
            T.Orientation R_lines = T.absoluteRotation(R.T, R_rel);
            Modelica.SIunits.Position r_abs[3] = r + T.resolve1(R.T, r_lines);
            Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinders[n](each shapeType = "cylinder", lengthDirection = array(T.resolve1(R_rel, vector([lines[i, 2, :] - lines[i, 1, :]; 0])) for i in 1:n), length = array(Modelica.Math.Vectors.length(lines[i, 2, :] - lines[i, 1, :]) for i in 1:n), r = array(r_abs + T.resolve1(R_lines, vector([lines[i, 1, :]; 0])) for i in 1:n), each width = diameter, each height = diameter, each widthDirection = {0, 1, 0}, each color = color, each R = R, each specularCoefficient = specularCoefficient);
            annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {128, 128, 128}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-24, -34}, {-82, 40}, {-72, 46}, {-14, -26}, {-24, -34}}, lineColor = {0, 127, 255}, fillColor = {0, 127, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-82, -24}, {-20, 46}, {-10, 38}, {-72, -32}, {-82, -24}}, lineColor = {0, 127, 255}, fillColor = {0, 127, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{42, -18}, {10, 40}, {20, 48}, {50, -6}, {42, -18}}, lineColor = {0, 127, 255}, fillColor = {0, 127, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{10, -68}, {84, 48}, {96, 42}, {24, -72}, {10, -68}}, lineColor = {0, 127, 255}, fillColor = {0, 127, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 145}, {150, 105}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<HTML>
 <p>
 With model <b>Lines</b> a set of dynamic lines is defined
 that are located relatively to frame_a. Every line
 is represented by a cylinder. This allows, e.g., to define simple shaped
 3-dimensional characters. Note, if the lines are fixed relatively to frame_a,
 it is more convenient to use model <b>Visualizers.FixedLines</b>.
 An example for dynamic lines is shown in the following figure:<br>&nbsp;
 </p>
 <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedLines.png\" ALT=\"model Visualizers.FixedLines\">
 <p>&nbsp;<br>
 The two letters \"x\" and \"y\" are constructed with 4 lines
 by providing the following data for input variable <b>lines</b>
 </p>
 <pre>
    lines = {[0, 0; 1, 1],[0, 1; 1, 0],[1.5, -0.5; 2.5, 1],[1.5, 1; 2, 0.25]}
 </pre>
 <p>
 Via vectors <b>n_x</b> and <b>n_y</b> a two-dimensional
 coordinate system is defined. The points defined with variable
 <b>lines</b> are with respect to this coordinate system. For example
 \"[0, 0; 1, 1]\" defines a line that starts at {0,0} and ends at {1,1}.
 The diameter and color of all line cylinders are identical
 and are defined by parameters.
 </p>
 
 </html>"));
          end Lines;
          annotation(Documentation(info = "<html>
 <p>
 This package contains components to construct 3-dim. fonts
 with \"cylinder\" elements for the animation window.
 This is just a temporary hack until 3-dim. fonts are supported in
 Modelica tools. The components are used to construct the \"x\", \"y\",
 \"z\" labels of coordinates systems in the animation.
 </p>
 </html>"));
        end Internal;
        annotation(Documentation(info = "<HTML>
 <p>
 Package <b>Visualizers</b> contains components to visualize
 3-dimensional shapes. These components are the basis for the
 animation features of the MultiBody library.
 </p>
 <h4>Content</h4>
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.FixedShape\">FixedShape</a><br>
              <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.FixedShape2\">FixedShape2</a></td>
       <td valign=\"top\">Visualizing an elementary shape with dynamically varying shape attributes.
       FixedShape has one connector frame_a, whereas FixedShape2 has additionally
           a frame_b for easier connection to further visual objects.
           The following shape types are supported:<br>&nbsp;<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedShape.png\" ALT=\"model Visualizers.FixedShape\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.FixedFrame\">FixedFrame</a></td>
       <td valign=\"top\">Visualizing a coordinate system including axes labels with fixed sizes:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/FixedFrame2.png\"
        ALT=\"model Visualizers.FixedFrame\">
       </td>
   </tr>
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.FixedArrow\">FixedArrow</a>,<br>
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.SignalArrow\">SignalArrow</a></td>
       <td valign=\"top\">Visualizing an arrow. Model \"FixedArrow\" provides
       a fixed sized arrow, model \"SignalArrow\" provides
       an arrow with dynamically varying length that is defined
       by an input signal vector:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/Arrow.png\">
       </td>
   </tr>
 
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Ground\">Ground</a></td>
       <td valign=\"top\">Visualizing the x-y plane by a box:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/GroundSmall.png\">
       </td>
   </tr>
 
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Torus\">Torus</a></td>
       <td valign=\"top\">Visualizing a torus:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/TorusIcon.png\">
       </td>
   </tr>
 
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.VoluminousWheel\">VoluminousWheel</a></td>
       <td valign=\"top\">Visualizing a wheel:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/VoluminousWheelIcon.png\">
       </td>
   </tr>
 
   <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.PipeWithScalarField\">PipeWithScalarField</a></td>
       <td valign=\"top\">Visualizing a pipe with a scalar field represented by a color coding:<br>
       <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/PipeWithScalarFieldIcon.png\">
       </td>
   </tr>
 
 <tr><td valign=\"top\"><a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced\">Advanced</a></td>
       <td valign=\"top\"> <b>Package</b> that contains components to visualize
           3-dimensional shapes where all parts of the shape
           can vary dynamically. Basic knowledge of Modelica is
           needed in order to utilize the components of this package.
       </td>
   </tr>
 </table>
 <p>
 The colors of the visualization components are declared with
 the predefined type <b>MultiBody.Types.Color</b>.
 This is a vector with 3 elements,
 {r, g, b}, and specifies the color of the shape.
 {r,g,b} are the \"red\", \"green\" and \"blue\" color parts.
 Note, r g, b are given as Integer[3] in the ranges 0 .. 255,
 respectively.
 </p>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-80, 26}, {26, -70}}, lineColor = {95, 95, 95}, fillPattern = FillPattern.Solid, fillColor = {245, 245, 245}), Polygon(points = {{-80, 26}, {-16, 70}, {80, 70}, {26, 26}, {-80, 26}}, lineColor = {95, 95, 95}, smooth = Smooth.None, fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid), Polygon(points = {{80, 70}, {26, 26}, {26, -70}, {80, -32}, {80, 70}}, lineColor = {95, 95, 95}, smooth = Smooth.None, fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid)}));
      end Visualizers;

      package Types "Constants and types with choices, especially to build menus"
        extends Modelica.Icons.TypesPackage;
        type Axis = Modelica.Icons.TypeReal[3](each final unit = "1") "Axis vector with choices for menus" annotation(preferredView = "text", Evaluate = true, choices(choice = {1, 0, 0} "{1,0,0} \"x axis\"", choice = {0, 1, 0} "{0,1,0} \"y axis\"", choice = {0, 0, 1} "{0,0,1} \"z axis\"", choice = {-1, 0, 0} "{-1,0,0} \"negative x axis\"", choice = {0, -1, 0} "{0,-1,0} \"negative y axis\"", choice = {0, 0, -1} "{0,0,-1} \"negative z axis\""), Documentation(info = "<html>
           </html>"));
        type AxisLabel = Modelica.Icons.TypeString "Label of axis with choices for menus" annotation(preferredView = "text", choices(choice = "x" "x", choice = "y" "y", choice = "z" "z"));
        type RotationSequence = Modelica.Icons.TypeInteger[3](min = {1, 1, 1}, max = {3, 3, 3}) "Sequence of planar frame rotations with choices for menus" annotation(preferredView = "text", Evaluate = true, choices(choice = {1, 2, 3} "{1,2,3} \"Cardan/Tait-Bryan angles\"", choice = {3, 1, 3} "{3,1,3} \"Euler angles\"", choice = {3, 2, 1} "{3,2,1}"));
        type Color = Modelica.Icons.TypeInteger[3](each min = 0, each max = 255) "RGB representation of color" annotation(Dialog(colorSelector = true), choices(choice = {0, 0, 0} "{0,0,0}       \"black\"", choice = {155, 0, 0} "{155,0,0}     \"dark red\"", choice = {255, 0, 0} "{255,0,0 }    \"red\"", choice = {255, 65, 65} "{255,65,65}   \"light red\"", choice = {0, 128, 0} "{0,128,0}     \"dark green\"", choice = {0, 180, 0} "{0,180,0}     \"green\"", choice = {0, 230, 0} "{0,230,0}     \"light green\"", choice = {0, 0, 200} "{0,0,200}     \"dark blue\"", choice = {0, 0, 255} "{0,0,255}     \"blue\"", choice = {0, 128, 255} "{0,128,255}   \"light blue\"", choice = {255, 255, 0} "{255,255,0}   \"yellow\"", choice = {255, 0, 255} "{255,0,255}   \"pink\"", choice = {100, 100, 100} "{100,100,100} \"dark grey\"", choice = {155, 155, 155} "{155,155,155} \"grey\"", choice = {255, 255, 255} "{255,255,255} \"white\""), Documentation(info = "<html>
           <p>
           Type <b>Color</b> is an Integer vector with 3 elements,
           {r, g, b}, and specifies the color of a shape.
           {r,g,b} are the \"red\", \"green\" and \"blue\" color parts.
           Note, r g, b are given in the range 0 .. 255.
           </p>
           </html>"));
        type SpecularCoefficient = Modelica.Icons.TypeReal(min = 0) "Reflection of ambient light (= 0: light is completely absorbed)" annotation(choices(choice = 0 "\"0.0 (dull)\"", choice = 0.7 "\"0.7 (medium)\"", choice = 1 "\"1.0 (glossy)\""), Documentation(info = "<html>
           <p>
           Type <b>SpecularCoefficient</b> defines the reflection of
           ambient light on shape surfaces. If value = 0, the light
           is completely absorbed. Often, 0.7 is a reasonable value.
           It might be that from some viewing directions, a body is no
           longer visible, if the SpecularCoefficient value is too high.
           In the following image, the different values of SpecularCoefficient
           are shown for a cylinder:
           </p>
           
           <p>
           <img src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/SpecularCoefficient.png\" />
           </p>
           </html>"));
        type ShapeType = Modelica.Icons.TypeString "Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring, <external shape>)" annotation(choices(choice = "box" "\"box\"", choice = "sphere" "\"sphere\"", choice = "cylinder" "\"cylinder\"", choice = "pipecylinder" "\"pipecylinder\"", choice = "cone" "\"cone\"", choice = "pipe" "\"pipe\"", choice = "beam" "\"beam\"", choice = "gearwheel" "\"gearwheel\"", choice = "spring" "\"spring\"", choice = "modelica://PackageName/PathName.dxf"), Documentation(info = "<html>
           <p>
           Type <b>ShapeType</b> is used to define the shape of the
           visual object as parameter String. Usually, \"shapeType\" is used
           as instance name. The following
           values for shapeType are possible, e.g., shapeType=\"box\":
           </p>
           
           <p>
           <IMG src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Shape.png\" ALT=\"model Visualizers.FixedShape\">
           </p>
           
           <p>
           The dark blue arrows in the figure above are directed along
           variable <b>lengthDirection</b>. The light blue arrows are directed
           along variable <b>widthDirection</b>. The <b>coordinate systems</b>
           in the figure represent frame_a of the Shape component.
           </p>
           
           <p>
           Additionally, external shapes can be specified as (not all options might be supported by all tools):
           </p>
           
           <ul>
           <li> <b>\"1\", \"2\", ...</b><br>
                define external shapes specified in DXF format in files \"1.dxf\", \"2.dxf\", ...
                The DXF-files must be found either in the current directory or in the directory where
                the Shape instance is stored that references the DXF file.
                This (very limited) option should not be used for new models. Example:<br>
               shapeType=\"1\".<br></li>
           
           <li> \"<b>modelica:</b>//&lt;Modelica-name&gt;/&lt;relative-path-file-name&gt;\"<br>
                characterizes the file that is stored under the location of the
                &lt;Modelica-name&gt; library path with the given relative file name.
                Example:<br> shapeType = \"modelica://Modelica/Resources/Data/Shapes/Engine/piston.dxf\".<br></li>
           
           <li> \"<b>file:</b>//&lt;absolute-file-name&gt;\"<br>
                characterizes an absolute file name in the file system. Example:<br>
                shapeType=\"file://C:/users/myname/shapes/piston.dxf\".</li>
           </ul>
           
           <p>
           The supported file formats are tool dependent. Most tools support
           at least DXF-files (a tool might support 3-dim. Face of the DXF format only),
           but may support other format as well (such as stl, obj, 3ds).
           Since visualization files contain color and other data, the corresponding
           information in the model is usually ignored.
           </p>
           </html>"));
        type ShapeExtra = Modelica.Icons.TypeReal "Type of the additional data that can be defined for an elementary ShapeType" annotation(Documentation(info = "<html>
           <p>
           This type is used in shapes of visual objects to define
           extra data depending on the shape type. Usually, input
           variable <b>extra</b> is used as instance name:
           </p>
           
           <table border=1 cellspacing=0 cellpadding=2>
           <tr><th><b>shapeType</b></th><th>Meaning of parameter <b>extra</b></th></tr>
           <tr>
             <td valign=\"top\">\"cylinder\"</td>
             <td valign=\"top\">if extra &gt; 0, a black line is included in the
                 cylinder to show the rotation of it.</td>
           </tr>
           <tr>
             <td valign=\"top\">\"cone\"</td>
             <td valign=\"top\">extra = diameter-left-side / diameter-right-side, i.e.,<br>
                 extra = 1: cylinder<br>
                 extra = 0: \"real\" cone.</td>
           </tr>
           <tr>
             <td valign=\"top\">\"pipe\"</td>
             <td valign=\"top\">extra = outer-diameter / inner-diameter, i.e, <br>
                 extra = 1: cylinder that is completely hollow<br>
                 extra = 0: cylinder without a hole.</td>
           </tr>
           <tr>
             <td valign=\"top\">\"gearwheel\"</td>
             <td valign=\"top\">extra is the number of teeth of the (external) gear.
           If extra &lt; 0, an internal gear is visualized with |extra| teeth.
           The axis of the gearwheel is along \"lengthDirection\", and usually:
           width = height = 2*radiusOfGearWheel.</td>
           </tr>
           <tr>
             <td valign=\"top\">\"spring\"</td>
             <td valign=\"top\">extra is the number of windings of the spring.
                 Additionally, \"height\" is <b>not</b> the \"height\" but
                 2*coil-width.</td>
           </tr>
           <tr>
             <td valign=\"top\">external shape</td>
             <td valign=\"top\">extra = 0: Visualization from file is not scaled.<br>
                                extra = 1: Visualization from file is scaled with \"length\", \"width\" and height\"
                                           of the shape</td>
           </tr>
           
           </table>
           
           </html>"));
        type ResolveInFrameB = enumeration(world "Resolve in world frame", frame_b "Resolve in frame_b", frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)") "Enumeration to define the frame in which an absolute vector is resolved (world, frame_b, frame_resolve)" annotation(Documentation(info = "<html>
           <table border=1 cellspacing=0 cellpadding=2>
           <tr><th><b>Types.ResolveInFrameB.</b></th><th><b>Meaning</b></th></tr>
           <tr><td valign=\"top\">world</td>
               <td valign=\"top\">Resolve vector in world frame</td></tr>
           
           <tr><td valign=\"top\">frame_b</td>
               <td valign=\"top\">Resolve vector in frame_b</td></tr>
           
           <tr><td valign=\"top\">frame_resolve</td>
               <td valign=\"top\">Resolve vector in frame_resolve (frame_resolve must be connected)</td></tr>
           </table>
           </html>"));
        type ResolveInFrameAB = enumeration(world "Resolve in world frame", frame_a "Resolve in frame_a", frame_b "Resolve in frame_b", frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)") "Enumeration to define the frame in which a relative vector is resolved (world, frame_a, frame_b, frame_resolve)" annotation(Documentation(info = "<html>
           <table border=1 cellspacing=0 cellpadding=2>
           <tr><th><b>Types.ResolveInFrameAB.</b></th><th><b>Meaning</b></th></tr>
           <tr><td valign=\"top\">world</td>
               <td valign=\"top\">Resolve vector in world frame</td></tr>
           
           <tr><td valign=\"top\">frame_a</td>
               <td valign=\"top\">Resolve vector in frame_a</td></tr>
           
           <tr><td valign=\"top\">frame_b</td>
               <td valign=\"top\">Resolve vector in frame_b</td></tr>
           
           <tr><td valign=\"top\">frame_resolve</td>
               <td valign=\"top\">Resolve vector in frame_resolve (frame_resolve must be connected)</td></tr>
           </table>
           </html>"));
        type RotationTypes = enumeration(RotationAxis "Rotating frame_a around an angle with a fixed axis", TwoAxesVectors "Resolve two vectors of frame_b in frame_a", PlanarRotationSequence "Planar rotation sequence") "Enumeration defining in which way the fixed orientation of frame_b with respect to frame_a is specified" annotation(Documentation(Evaluate = true, info = "<html>
           <table border=1 cellspacing=0 cellpadding=2>
           <tr><th><b>Types.RotationTypes.</b></th><th><b>Meaning</b></th></tr>
           <tr><td valign=\"top\">RotationAxis</td>
               <td valign=\"top\">frame_b is defined by rotating the coordinate system along
                   an axis fixed in frame_a and with a fixed angle.</td></tr>
           
           <tr><td valign=\"top\">TwoAxesVectors</td>
               <td valign=\"top\">frame_b is defined by resolving two vectors of frame_b in frame_a.</td></tr>
           
           <tr><td valign=\"top\">PlanarRotationSequence</td>
               <td valign=\"top\">frame_b is defined by rotating the coordinate system along
                   3 consecutive axes vectors with fixed rotation angles
                   (e.g., Cardan or Euler angle sequence rotation).</td></tr>
           </table>
           </html>"));
        type GravityTypes = enumeration(NoGravity "No gravity field", UniformGravity "Uniform gravity field", PointGravity "Point gravity field") "Enumeration defining the type of the gravity field" annotation(Documentation(info = "<html>
           <table border=1 cellspacing=0 cellpadding=2>
           <tr><th><b>Types.GravityTypes.</b></th><th><b>Meaning</b></th></tr>
           <tr><td valign=\"top\">NoGravity</td>
               <td valign=\"top\">No gravity field</td></tr>
           
           <tr><td valign=\"top\">UniformGravity</td>
               <td valign=\"top\">Gravity field is described by a vector of constant gravity acceleration</td></tr>
           
           <tr><td valign=\"top\">PointGravity</td>
               <td valign=\"top\">Central gravity field. The gravity acceleration vector is directed to
                   the field center and the gravity is proportional to 1/r^2, where
                   r is the distance to the field center.</td></tr>
           </table>
           </html>"));

        package Defaults "Default settings of the MultiBody library via constants"
          extends Modelica.Icons.Package;
          // Color defaults
          constant Types.Color BodyColor = {0, 128, 255} "Default color for body shapes that have mass (light blue)";
          constant Types.Color RodColor = {155, 155, 155} "Default color for massless rod shapes (grey)";
          constant Types.Color JointColor = {255, 0, 0} "Default color for elementary joints (red)";
          constant Types.Color ForceColor = {0, 128, 0} "Default color for force arrow (dark green)";
          constant Types.Color TorqueColor = {0, 128, 0} "Default color for torque arrow (dark green)";
          constant Types.Color SpringColor = {0, 0, 255} "Default color for a spring (blue)";
          constant Types.Color SensorColor = {255, 255, 0} "Default color for sensors (yellow)";
          constant Types.Color FrameColor = {0, 0, 0} "Default color for frame axes and labels (black)";
          constant Types.Color ArrowColor = {0, 0, 255} "Default color for arrows and double arrows (blue)";
          // Arrow and frame defaults
          constant Real FrameHeadLengthFraction = 5.0 "Frame arrow head length / arrow diameter";
          constant Real FrameHeadWidthFraction = 3.0 "Frame arrow head width / arrow diameter";
          constant Real FrameLabelHeightFraction = 3.0 "Height of frame label / arrow diameter";
          constant Real ArrowHeadLengthFraction = 4.0 "Arrow head length / arrow diameter";
          constant Real ArrowHeadWidthFraction = 3.0 "Arrow head width / arrow diameter";
          // Other defaults
          constant SI.Diameter BodyCylinderDiameterFraction = 3 "Default for body cylinder diameter as a fraction of body sphere diameter";
          constant Real JointRodDiameterFraction = 2 "Default for rod diameter as a fraction of joint sphere diameter attached to rod";
          /*
            constant Real N_to_m(unit="N/m") = 1000
              "Default force arrow scaling (length = force/N_to_m_default)";
            constant Real Nm_to_m(unit="N.m/m") = 1000
              "Default torque arrow scaling (length = torque/Nm_to_m_default)";
          */
          annotation(Documentation(info = "<html>
 <p>
 This package contains constants used as default setting
 in the MultiBody library.
 </p>
 </html>"));
        end Defaults;
        annotation(Documentation(info = "<HTML>
 <p>
 In this package <b>types</b> and <b>constants</b> are defined that are used in the
 MultiBody library. The types have additional annotation choices
 definitions that define the menus to be built up in the graphical
 user interface when the type is used as parameter in a declaration.
 </p>
 </HTML>"));
      end Types;
      annotation(Documentation(info = "<HTML>
 <p>
 Library <b>MultiBody</b> is a <b>free</b> Modelica package providing
 3-dimensional mechanical components to model in a convenient way
 <b>mechanical systems</b>, such as robots, mechanisms, vehicles.
 Typical animations generated with this library are shown
 in the next figure:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/MultiBody.png\">
 </p>
 
 <p>
 For an introduction, have especially a look at:
 </p>
 <ul>
 <li> <a href=\"modelica://Modelica.Mechanics.MultiBody.UsersGuide\">MultiBody.UsersGuide</a>
      discusses the most important aspects how to use this library.</li>
 <li> <a href=\"modelica://Modelica.Mechanics.MultiBody.Examples\">MultiBody.Examples</a>
      contains examples that demonstrate the usage of this library.</li>
 </ul>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-58, 76}, {6, 76}, {-26, 50}, {-58, 76}}, lineColor = {95, 95, 95}, smooth = Smooth.None, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-26, 50}, {28, -50}}, color = {0, 0, 0}, smooth = Smooth.None), Ellipse(extent = {{-4, -14}, {60, -78}}, lineColor = {135, 135, 135}, fillPattern = FillPattern.Sphere, fillColor = {255, 255, 255})}));
    end MultiBody;

    package Rotational "Library to model 1-dimensional, rotational mechanical systems"
      extends Modelica.Icons.Package;
      import SI = Modelica.SIunits;

      package Components "Components for 1D rotational mechanical drive trains"
        extends Modelica.Icons.Package;

        model Fixed "Flange fixed in housing at a given angle"
          parameter SI.Angle phi0 = 0 "Fixed offset angle of housing";
          Interfaces.Flange_b flange "(right) flange fixed in housing" annotation(Placement(transformation(extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        equation
          flange.phi = phi0;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, -90}, {150, -130}}, lineColor = {0, 0, 255}, textString = "%name"), Line(points = {{-80, -40}, {80, -40}}, color = {0, 0, 0}), Line(points = {{80, -40}, {40, -80}}, color = {0, 0, 0}), Line(points = {{40, -40}, {0, -80}}, color = {0, 0, 0}), Line(points = {{0, -40}, {-40, -80}}, color = {0, 0, 0}), Line(points = {{-40, -40}, {-80, -80}}, color = {0, 0, 0}), Line(points = {{0, -40}, {0, -10}}, color = {0, 0, 0})}), Documentation(info = "<html>
 <p>
 The <b>flange</b> of a 1D rotational mechanical system is <b>fixed</b>
 at an angle phi0 in the <b>housing</b>. May be used:
 </p>
 <ul>
 <li> to connect a compliant element, such as a spring or a damper,
      between an inertia or gearbox component and the housing.
 <li> to fix a rigid element, such as an inertia, with a specific
      angle to the housing.
 </ul>
 
 </html>"), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, -40}, {80, -40}}, color = {0, 0, 0}), Line(points = {{80, -40}, {40, -80}}, color = {0, 0, 0}), Line(points = {{40, -40}, {0, -80}}, color = {0, 0, 0}), Line(points = {{0, -40}, {-40, -80}}, color = {0, 0, 0}), Line(points = {{-40, -40}, {-80, -80}}, color = {0, 0, 0}), Line(points = {{0, -40}, {0, -4}}, color = {0, 0, 0})}));
        end Fixed;

        model Disc "1-dim. rotational rigid component without inertia, where right flange is rotated by a fixed angle with respect to left flange"
          extends Rotational.Interfaces.PartialTwoFlanges;
          parameter SI.Angle deltaPhi = 0 "Fixed rotation of left flange with respect to right flange (= flange_b.phi - flange_a.phi)";
          SI.Angle phi "Absolute rotation angle of component";
        equation
          flange_a.phi = phi - deltaPhi / 2;
          flange_b.phi = phi + deltaPhi / 2;
          0 = flange_a.tau + flange_b.tau;
          annotation(Documentation(info = "<html>
 <p>
 Rotational component with two rigidly connected flanges without <b>inertia</b>.
 The right flange is rotated by the fixed angle \"deltaPhi\" with respect to the left
 flange.
 </p>
 
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -10.0}, {99.0, 10.0}}), Rectangle(lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-10.0, -50.0}, {10.0, 50.0}}), Text(lineColor = {0, 0, 255}, extent = {{-150.0, 60.0}, {150.0, 100.0}}, textString = "%name"), Rectangle(lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-30.0, 10.0}, {-10.0, 50.0}}), Rectangle(lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{10.0, -50.0}, {30.0, -10.0}}), Text(extent = {{-160.0, -87.0}, {160.0, -62.0}}, textString = "deltaPhi = %deltaPhi")}));
        end Disc;

        model Damper "Linear 1D rotational damper"
          extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;
          parameter SI.RotationalDampingConstant d(final min = 0, start = 0) "Damping constant";
          extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
        equation
          tau = d * w_rel;
          lossPower = tau * w_rel;
          annotation(Documentation(info = "<html>
 <p>
 <b>Linear, velocity dependent damper</b> element. It can be either connected
 between an inertia or gear and the housing (component Fixed), or
 between two inertia/gear elements.
 </p>
 
 <p>
 See also the discussion
 <a href=\"modelica://Modelica.Mechanics.Rotational.UsersGuide.StateSelection\">State Selection</a>
 in the User's Guide of the Rotational library.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {-60, 0}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {-60, 30}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {60, -30}}, color = {0, 0, 0}), Line(points = {{-60, 30}, {60, 30}}, color = {0, 0, 0}), Rectangle(extent = {{-60, 30}, {30, -30}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{30, 0}, {90, 0}}, color = {0, 0, 0}), Text(extent = {{-150, 80}, {150, 40}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-150, -50}, {150, -90}}, lineColor = {0, 0, 0}, textString = "d=%d"), Line(visible = useHeatPort, points = {{-100, -100}, {-100, -40}, {-20, -40}, {-20, 0}}, color = {191, 0, 0}, smooth = Smooth.None, pattern = LinePattern.Dot)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-96, 0}, {-60, 0}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {-60, 30}}, color = {0, 0, 0}), Line(points = {{-60, -30}, {60, -30}}, color = {0, 0, 0}), Line(points = {{-60, 30}, {60, 30}}, color = {0, 0, 0}), Rectangle(extent = {{-60, 30}, {30, -30}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{30, 0}, {96, 0}}, color = {0, 0, 0}), Line(points = {{-68, 0}, {-68, 65}}, color = {128, 128, 128}), Text(extent = {{-40, 66}, {33, 85}}, lineColor = {0, 0, 255}, textString = "phi_rel"), Line(points = {{-68, 60}, {72, 60}}, color = {128, 128, 128}), Line(points = {{72, 0}, {72, 65}}, color = {128, 128, 128}), Polygon(points = {{62, 63}, {72, 60}, {62, 57}, {62, 63}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid)}));
        end Damper;

        model ElastoBacklash "Backlash connected in series to linear spring and damper (backlash is modeled with elasticity)"
          parameter SI.RotationalSpringConstant c(final min = Modelica.Constants.small, start = 100000.0) "Spring constant (c > 0 required)";
          parameter SI.RotationalDampingConstant d(final min = 0, start = 0) "Damping constant";
          parameter SI.Angle b(final min = 0) = 0 "Total backlash";
          parameter SI.Angle phi_rel0 = 0 "Unstretched spring angle";
          extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;
          extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
        protected
          final parameter SI.Angle bMax = b / 2 "Backlash in range bMin <= phi_rel - phi_rel0 <= bMax";
          final parameter SI.Angle bMin = -bMax "Backlash in range bMin <= phi_rel - phi_rel0 <= bMax";
          SI.Torque tau_c;
          SI.Torque tau_d;
          SI.Angle phi_diff = phi_rel - phi_rel0;
          // A minimum backlash is defined in order to avoid an infinite
          // number of state events if backlash b is set to zero.
          constant SI.Angle bEps = 1e-10 "Minimum backlash";
        equation
          if initial() then
            tau_c = if phi_diff > 1.5 * bMax then c * (phi_diff - bMax) else if phi_diff < 1.5 * bMin then c * (phi_diff - bMin) else c / 3 * phi_diff;
            tau_d = d * w_rel;
            tau = tau_c + tau_d;
            lossPower = tau_d * w_rel;
          else
            tau_c = if abs(b) <= bEps then c * phi_diff else if phi_diff > bMax then c * (phi_diff - bMax) else if phi_diff < bMin then c * (phi_diff - bMin) else 0;
            tau_d = d * w_rel;
            tau = if abs(b) <= bEps then tau_c + tau_d else if phi_diff > bMax then smooth(0, noEvent(if tau_c + tau_d <= 0 then 0 else tau_c + min(tau_c, tau_d))) else if phi_diff < bMin then smooth(0, noEvent(if tau_c + tau_d >= 0 then 0 else tau_c + max(tau_c, tau_d))) else 0;
            lossPower = if abs(b) <= bEps then tau_d * w_rel else if phi_diff > bMax then smooth(0, noEvent(if tau_c + tau_d <= 0 then 0 else min(tau_c, tau_d) * w_rel)) else if phi_diff < bMin then smooth(0, noEvent(if tau_c + tau_d >= 0 then 0 else max(tau_c, tau_d) * w_rel)) else 0;
          end if;
          /* During initialization the characteristic is modified, in order that
                  it is a strict monoton rising function. Otherwise, initialization might
                  result in a singular system when the characteristic has to be
                  inverted. The characteristic is modified in the range 1.5*bMin <= phi_rel - phi_rel0 <= 1.5 bMax,
                  so that in this range a linear characteristic is present that approaches the original
                  function continuously at its limits, e.g.,
                    original:  tau(1.5*bMax) = c*(phi_diff - bMax)
                                             = c*(0.5*bMax)
                    initial :  tau(1.5*bMax) = (c/3)*phi_diff
                                             = (c/3)*(3/2)*bMax
                                             = (c/2)*bMax
               */
          /*
               if abs(b) <= bEps then
                  tau_c = c*phi_diff;
                  tau_d = d*w_rel;
                  tau   = tau_c + tau_d;
               elseif phi_diff > bMax then
                  tau_c = c*(phi_diff - bMax);
                  tau_d = d*w_rel;
                  tau   = smooth(0, noEvent(if tau_c + tau_d <= 0 then 0 else tau_c + min(tau_c,tau_d)));
               elseif phi_diff < bMin then
                  tau_c = c*(phi_diff - bMin);
                  tau_d = d*w_rel;
                  tau   = smooth(0, noEvent(if tau_c + tau_d >= 0 then 0 else tau_c + max(tau_c,tau_d)));
               else
                  tau_c = 0;
                  tau_d = 0;
                  tau   = 0;
               end if;
          
               This is written in the form below, in order that parameter "b"
               is not evaluated during translation (i.e., in the above form
               it cannot be changed anymore after translation).
             */
          annotation(Documentation(info = "<html>
 <p>
 This element consists of a <b>backlash</b> element <b>connected in series</b>
 to a <b>spring</b> and <b>damper</b> element which are <b>connected in parallel</b>.
 The spring constant shall be non-zero, otherwise the component cannot be used.
 </p>
 
 <p>
 In combination with components IdealGear, the ElastoBacklash model
 can be used to model a gear box with backlash, elasticity and damping.
 </p>
 
 <p>
 During initialization, the backlash characteristic is replaced by a continuous
 approximation in the backlash region, in order to reduce problems during
 initialization, especially for inverse models.
 </p>
 
 <p>
 If the backlash b is smaller as 1e-10 rad (especially, if b=0),
 then the backlash is ignored and the component reduces to a spring/damper
 element in parallel.
 </p>
 
 <p>
 In the backlash region (-b/2 &le; flange_b.phi - flange_a.phi - phi_rel0 &le; b/2) no torque
 is exerted (flange_b.tau = 0). Outside of this region, contact is present and
 the contact torque is basically computed with a linear
 spring/damper characteristic:
 </p>
 
 <pre>
    desiredContactTorque = c*phi_contact + d*<b>der</b>(phi_contact)
 
             phi_contact = phi_rel - phi_rel0 - b/2 <b>if</b> phi_rel - phi_rel0 &gt;  b/2
                         = phi_rel - phi_rel0 + b/2 <b>if</b> phi_rel - phi_rel0 &lt; -b/2
 
             phi_rel     = flange_b.phi - flange_a.phi;
 </pre>
 
 <p>
 This torque characteristic leads to the following difficulties:
 </p>
 
 <ol>
 <li> If the damper torque becomes larger as the spring torque and with opposite sign,
      the contact torque would be \"pulling/sticking\" which is unphysical, since during
      contact only pushing torques can occur.</li>
 
 <li> When contact occurs with a non-zero relative speed (which is the usual
      situation), the damping torque has a non-zero value and therefore the contact
      torque changes discontinuously at phi_rel = phi_rel0. Again, this is not physical
      because the torque can only change continuously. (Note, this component is not an
      idealized model where a steep characteristic is approximated by a discontinuity,
      but it shall model the steep characteristic.)</li>
 </ol>
 
 <p>
 In the literature there are several proposals to fix problem (2). However, there
 seems to be no proposal to avoid sticking. For this reason, the most simple
 approach is used in the ElastoBacklash model, to fix both problems by slight changes
 to the linear spring/damper characteristic:
 </p>
 
 <pre>
     // Torque characteristic when phi_rel > phi_rel0
     <b>if</b> phi_rel - phi_rel0 &lt; b/2 <b>then</b>
        tau_c = 0;          // spring torque
        tau_d = 0;          // damper torque
        flange_b.tau = 0;
     <b>else</b>
        tau_c = c*(phi_rel - phi_rel0);    // spring torque
        tau_d = d*<b>der</b>(phi_rel);            // damper torque
        flange_b.tau = <b>if</b> tau_c + tau_d &le; 0 <b>then</b> 0 <b>else</b> tau_c + <b>min</b>( tau_c, tau_d );
     <b>end if</b>;
 </pre>
 
 <p>
 Note, when sticking would occur (tau_c + tau_d &le; 0), then the contact torque
 is explicitly set to zero. The \"min(tau_c, tau_d)\" part in the if-expression,
 limits the damping torque when it is pushing. This means that at the start of
 the contact (phi_rel - phi_rel0 = b/2), the damping torque is zero and is continuous.
 The effect of both modifications is that the absolute value of the damping torque
 is always limited by the absolute value of the spring torque: |tau_d| &le; |tau_c|.
 </p>
 
 <p>
 In the next figure, a typical simulation with the ElastoBacklash model is shown
 (<a href=\"modelica://Modelica.Mechanics.Rotational.Examples.Backlash\">Examples.Backlash</a>)
 where the different effects are visualized:
 </p>
 
 <ol>
 <li> Curve 1 (elastoBacklash1.tau) is the unmodified contact torque, i.e., the linear spring/damper
      characteristic. A pulling/sticking torque is present at the end of the contact.</li>
 <li> Curve 2 (elastoBacklash2.tau) is the contact torque, where the torque is explicitly set to
      zero when pulling/sticking occurs. The contact torque is discontinuous at begin of
      contact.</li>
 <li> Curve 3 (elastoBacklash3.tau) is the ElastoBacklash model of this library. No discontinuity and no
      pulling/sticking occurs.</li>
 </ol>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Mechanics/Rotational/elastoBacklash1.png\">
 </p>
 
 <p>
 See also the discussion
 <a href=\"modelica://Modelica.Mechanics.Rotational.UsersGuide.StateSelection\">State Selection</a>
 in the User's Guide of the Rotational library.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 32}, {-58, 32}, {-48, 0}, {-34, 61}, {-20, 0}, {-8, 60}, {0, 30}, {20, 30}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Rectangle(extent = {{-60, -10}, {-10, -50}}, lineColor = {0, 0, 0}, pattern = LinePattern.Solid, lineThickness = 0.25, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-60, -50}, {0, -50}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{-60, -10}, {0, -10}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{-10, -30}, {20, -30}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{-80, -30}, {-60, -30}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{-80, 32}, {-80, -30}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{20, 30}, {20, -30}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{-90, 0}, {-80, 0}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{90, 0}, {80, 0}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{20, 0}, {60, 0}, {60, -30}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Line(points = {{40, -12}, {40, -40}, {80, -40}, {80, 0}}, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25, arrow = {Arrow.None, Arrow.None}), Text(extent = {{-150, -130}, {150, -90}}, lineColor = {0, 0, 0}, textString = "b=%b"), Text(extent = {{-150, 100}, {150, 60}}, lineColor = {0, 0, 255}, textString = "%name"), Text(extent = {{-152, -92}, {148, -52}}, lineColor = {0, 0, 0}, textString = "c=%c"), Line(visible = useHeatPort, points = {{-100, -100}, {-100, -43}, {-34, -43}}, color = {191, 0, 0}, pattern = LinePattern.Dot, smooth = Smooth.None)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 32}, {-58, 32}, {-48, 0}, {-34, 60}, {-20, 0}, {-8, 60}, {0, 30}, {20, 30}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-68, 32}, {-68, 97}}, color = {128, 128, 128}), Line(points = {{80, 0}, {80, 96}}, color = {128, 128, 128}), Line(points = {{-68, 92}, {72, 92}}, color = {128, 128, 128}), Polygon(points = {{70, 95}, {80, 92}, {70, 89}, {70, 95}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-34, 77}, {40, 90}}, lineColor = {128, 128, 128}, textString = "phi_rel"), Rectangle(extent = {{-60, -20}, {-10, -80}}, lineColor = {0, 0, 0}, lineThickness = 0.5, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-52, -80}, {0, -80}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-52, -20}, {0, -20}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-10, -50}, {20, -50}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-80, -50}, {-60, -50}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-80, 32}, {-80, -50}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{20, 30}, {20, -50}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-96, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{96, 0}, {80, 0}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{20, 0}, {60, 0}, {60, -30}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{40, -12}, {40, -40}, {80, -40}, {80, 0}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{30, 0}, {30, 64}}, color = {128, 128, 128}), Line(points = {{30, 60}, {80, 60}}, color = {128, 128, 128}), Polygon(points = {{70, 63}, {80, 60}, {70, 57}, {70, 63}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{39, 60}, {68, 46}}, lineColor = {160, 160, 164}, textString = "b")}));
        end ElastoBacklash;
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(origin = {13.5135, 76.9841}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-63.5135, -126.9841}, {36.4865, -26.9841}}, radius = 10.0), Rectangle(origin = {13.5135, 76.9841}, lineColor = {64, 64, 64}, fillPattern = FillPattern.None, extent = {{-63.5135, -126.9841}, {36.4865, -26.9841}}, radius = 10.0), Rectangle(origin = {-3.0, 73.07689999999999}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-87.0, -83.07689999999999}, {-47.0, -63.0769}}), Rectangle(origin = {22.3077, 70.0}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{27.6923, -80.0}, {67.6923, -60.0}})}), Documentation(info = "<html>
 <p>
 This package contains basic components 1D mechanical rotational drive trains.
 </p>
 </html>"));
      end Components;

      package Sensors "Sensors to measure variables in 1D rotational mechanical components"
        extends Modelica.Icons.SensorsPackage;

        model RelAngleSensor "Ideal sensor to measure the relative angle between two flanges"
          extends Rotational.Interfaces.PartialRelativeSensor;
          Modelica.Blocks.Interfaces.RealOutput phi_rel(unit = "rad", displayUnit = "deg") "Relative angle between two flanges (= flange_b.phi - flange_a.phi) as output signal" annotation(Placement(transformation(origin = {0, -110}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
        equation
          phi_rel = flange_b.phi - flange_a.phi;
          0 = flange_a.tau;
          annotation(Documentation(info = "<html>
 <p>
 Measures the <b>relative angle phi_rel</b> between two flanges
 in an ideal way and provides the result as output signal <b>phi_rel</b>
 (to be further processed with blocks of the Modelica.Blocks library).
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Text(extent = {{20.0, -114.0}, {160.0, -84.0}}, textString = "phi_rel"), Line(points = {{0.0, -100.0}, {0.0, -70.0}}, color = {0, 0, 127})}));
        end RelAngleSensor;
        annotation(Documentation(info = "<html>
 <p>
 This package contains ideal sensor components that provide
 the connector variables as signals for further processing with the
 Modelica.Blocks library.
 </p>
 </html>"));
      end Sensors;

      package Sources "Sources to drive 1D rotational mechanical components"
        extends Modelica.Icons.SourcesPackage;

        model Position "Forced movement of a flange according to a reference angle signal"
          extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
          parameter Boolean exact = false "true/false exact treatment/filtering the input signal";
          parameter SI.Frequency f_crit = 50 "if exact=false, critical frequency of filter to filter input signal" annotation(Dialog(enable = not exact));
          SI.Angle phi(stateSelect = if exact then StateSelect.default else StateSelect.prefer) "Rotation angle of flange with respect to support";
          SI.AngularVelocity w(start = 0, stateSelect = if exact then StateSelect.default else StateSelect.prefer) "If exact=false, Angular velocity of flange with respect to support else dummy";
          SI.AngularAcceleration a(start = 0) "If exact=false, Angular acceleration of flange with respect to support else dummy";
          Modelica.Blocks.Interfaces.RealInput phi_ref(final quantity = "Angle", final unit = "rad", displayUnit = "deg") "Reference angle of flange with respect to support as input signal" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
        protected
          parameter Modelica.SIunits.AngularFrequency w_crit = 2 * Modelica.Constants.pi * f_crit "Critical frequency";
          constant Real af = 1.3617 "s coefficient of Bessel filter";
          constant Real bf = 0.618 "s*s coefficient of Bessel filter";
        initial equation
          if not exact then
            phi = phi_ref;
          end if;
        equation
          phi = flange.phi - phi_support;
          if exact then
            phi = phi_ref;
            w = 0;
            a = 0;
          else
            w = der(phi);
            a = der(w);
            a = ((phi_ref - phi) * w_crit - af * w) * w_crit / bf;
          end if;
          // Filter: a = phi_ref*s^2/(1 + (af/w_crit)*s + (bf/w_crit^2)*s^2)
          annotation(Documentation(info = "<HTML>
 <p>
 The input signal <b>phi_ref</b> defines the <b>reference
 angle</b> in [rad]. Flange <b>flange</b> is <b>forced</b>
 to move according to this reference motion relative to flange support. According to parameter
 <b>exact</b> (default = <b>false</b>), this is done in the following way:
 <ol>
 <li><b>exact=true</b><br>
     The reference angle is treated <b>exactly</b>. This is only possible, if
     the input signal is defined by an analytical function which can be
     differentiated at least twice. If this prerequisite is fulfilled,
     the Modelica translator will differentiate the input signal twice
     in order to compute the reference acceleration of the flange.</li>
 <li><b>exact=false</b><br>
     The reference angle is <b>filtered</b> and the second derivative
     of the filtered curve is used to compute the reference acceleration
     of the flange. This second derivative is <b>not</b> computed by
     numerical differentiation but by an appropriate realization of the
     filter. For filtering, a second order Bessel filter is used.
     The critical frequency (also called cut-off frequency) of the
     filter is defined via parameter <b>f_crit</b> in [Hz]. This value
     should be selected in such a way that it is higher as the essential
     low frequencies in the signal.</li>
 </ol>
 <p>
 The input signal can be provided from one of the signal generator
 blocks of the block library Modelica.Blocks.Sources.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -20.0}, {100.0, 20.0}}), Line(points = {{-30.0, -32.0}, {30.0, -32.0}}), Line(points = {{0.0, 52.0}, {0.0, 32.0}}), Line(points = {{-29.0, 32.0}, {30.0, 32.0}}), Line(points = {{0.0, -32.0}, {0.0, -100.0}}), Line(points = {{30.0, -42.0}, {20.0, -52.0}}), Line(points = {{30.0, -32.0}, {10.0, -52.0}}), Line(points = {{20.0, -32.0}, {0.0, -52.0}}), Line(points = {{10.0, -32.0}, {-10.0, -52.0}}), Line(points = {{0.0, -32.0}, {-20.0, -52.0}}), Line(points = {{-10.0, -32.0}, {-30.0, -52.0}}), Line(points = {{-20.0, -32.0}, {-30.0, -42.0}}), Text(extent = {{-172.0, -90.0}, {-56.0, -56.0}}, textString = "phi_ref"), Text(lineColor = {0, 0, 255}, extent = {{-150.0, 60.0}, {150.0, 100.0}}, textString = "%name"), Text(extent = {{30.0, -62.0}, {146.0, -28.0}}, textString = "exact="), Text(extent = {{30.0, -98.0}, {146.0, -64.0}}, textString = "%exact")}));
        end Position;

        model Torque "Input signal acting as external torque on a flange"
          extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
          Modelica.Blocks.Interfaces.RealInput tau(unit = "N.m") "Accelerating torque acting at flange (= -flange.tau)" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
        equation
          flange.tau = -tau;
          annotation(Documentation(info = "<HTML>
 <p>
 The input signal <b>tau</b> defines an external
 torque in [Nm] which acts (with negative sign) at
 a flange connector, i.e., the component connected to this
 flange is driven by torque <b>tau</b>.</p>
 <p>
 The input signal can be provided from one of the signal generator
 blocks of Modelica.Blocks.Sources.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, 110}, {150, 70}}, textString = "%name", lineColor = {0, 0, 255}), Text(extent = {{-62, -29}, {-141, -70}}, lineColor = {0, 0, 0}, textString = "tau"), Line(points = {{-88, 0}, {-64, 30}, {-36, 52}, {-2, 62}, {28, 56}, {48, 44}, {64, 28}, {76, 14}, {86, 0}}, color = {0, 0, 0}, thickness = 0.5, smooth = Smooth.Bezier), Polygon(points = {{86, 0}, {66, 58}, {37, 27}, {86, 0}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-30, -30}, {30, -30}}, color = {0, 0, 0}), Line(points = {{0, -30}, {0, -101}}, color = {0, 0, 0}), Line(points = {{-30, -50}, {-10, -30}}, color = {0, 0, 0}), Line(points = {{-10, -50}, {10, -30}}, color = {0, 0, 0}), Line(points = {{10, -50}, {30, -30}}, color = {0, 0, 0}), Line(points = {{-54, -42}, {-38, -28}, {-16, -16}, {4, -14}, {22, -18}, {36, -26}, {48, -36}, {56, -46}, {64, -58}}, color = {0, 0, 0}, smooth = Smooth.Bezier), Polygon(points = {{-61, -66}, {-44, -42}, {-58, -36}, {-61, -66}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{14, 86}, {82, 73}}, lineColor = {128, 128, 128}, textString = "rotation axis"), Polygon(points = {{10, 80}, {-10, 85}, {-10, 75}, {10, 80}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Line(points = {{-80, 80}, {-9, 80}}, color = {128, 128, 128}), Line(points = {{-88, 0}, {-64, 30}, {-36, 52}, {-2, 62}, {28, 56}, {48, 44}, {64, 28}, {76, 14}, {80, 10}}, color = {0, 0, 0}, thickness = 0.5, smooth = Smooth.Bezier), Polygon(points = {{86, 0}, {66, 58}, {38, 28}, {86, 0}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}));
        end Torque;

        model ConstantTorque "Constant torque, not dependent on speed"
          extends Rotational.Interfaces.PartialTorque;
          parameter Modelica.SIunits.Torque tau_constant "Constant torque (if negative, torque is acting as load)";
          Modelica.SIunits.Torque tau "Accelerating torque acting at flange (= -flange.tau)";
        equation
          tau = -flange.tau;
          tau = tau_constant;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-98, 0}, {100, 0}}, color = {0, 0, 127}), Text(extent = {{-124.0, -40.0}, {120.0, -16.0}}, textString = "%tau_constant")}), Documentation(info = "<HTML>
 <p>
 Model of constant torque, not dependent on angular velocity of flange.<br>
 Positive torque acts accelerating.
 </p>
 </HTML>"));
        end ConstantTorque;
        annotation(Documentation(info = "<html>
 <p>
 This package contains ideal sources to drive 1D mechanical rotational drive trains.
 </p>
 </html>"));
      end Sources;

      package Interfaces "Connectors and partial models for 1D rotational mechanical components"
        extends Modelica.Icons.InterfacesPackage;

        connector Flange_a "1-dim. rotational flange of a shaft (filled square icon)"
          SI.Angle phi "Absolute rotation angle of flange";
          flow SI.Torque tau "Cut torque in the flange";
          annotation(defaultComponentName = "flange_a", Documentation(info = "<html>
 <p>
 This is a connector for 1-dim. rotational mechanical systems and models
 the mechanical flange of a shaft. The following variables are defined in this connector:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"> <b>phi</b></td>
       <td valign=\"top\"> Absolute rotation angle of the shaft flange in [rad] </td>
   </tr>
   <tr><td valign=\"top\"> <b>tau</b></td>
       <td valign=\"top\"> Cut-torque in the shaft flange in [Nm] </td>
   </tr>
 </table>
 
 <p>
 There is a second connector for flanges: Flange_b. The connectors
 Flange_a and Flange_b are completely identical. There is only a difference
 in the icons, in order to easier identify a flange variable in a diagram.
 For a discussion on the actual direction of the cut-torque tau and
 of the rotation angle, see section
 <a href=\"modelica://Modelica.Mechanics.Rotational.UsersGuide.SignConventions\">Sign Conventions</a>
 in the user's guide of Rotational.
 </p>
 
 <p>
 If needed, the absolute angular velocity w and the
 absolute angular acceleration a of the flange can be determined by
 differentiation of the flange angle phi:
 </p>
 <pre>
      w = der(phi);    a = der(w)
 </pre>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-160, 90}, {40, 50}}, lineColor = {0, 0, 0}, textString = "%name"), Ellipse(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 0}, fillColor = {135, 135, 135}, fillPattern = FillPattern.Solid)}));
        end Flange_a;

        connector Flange_b "1-dim. rotational flange of a shaft (non-filled square icon)"
          SI.Angle phi "Absolute rotation angle of flange";
          flow SI.Torque tau "Cut torque in the flange";
          annotation(defaultComponentName = "flange_b", Documentation(info = "<html>
 <p>
 This is a connector for 1-dim. rotational mechanical systems and models
 the mechanical flange of a shaft. The following variables are defined in this connector:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"> <b>phi</b></td>
       <td valign=\"top\"> Absolute rotation angle of the shaft flange in [rad] </td>
   </tr>
   <tr><td valign=\"top\"> <b>tau</b></td>
       <td valign=\"top\"> Cut-torque in the shaft flange in [Nm] </td>
   </tr>
 </table>
 
 <p>
 There is a second connector for flanges: Flange_a. The connectors
 Flange_a and Flange_b are completely identical. There is only a difference
 in the icons, in order to easier identify a flange variable in a diagram.
 For a discussion on the actual direction of the cut-torque tau and
 of the rotation angle, see section
 <a href=\"modelica://Modelica.Mechanics.Rotational.UsersGuide.SignConventions\">Sign Conventions</a>
 in the user's guide of Rotational.
 </p>
 
 <p>
 If needed, the absolute angular velocity w and the
 absolute angular acceleration a of the flange can be determined by
 differentiation of the flange angle phi:
 </p>
 <pre>
      w = der(phi);    a = der(w)
 </pre>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-98, 100}, {102, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-40, 90}, {160, 50}}, lineColor = {0, 0, 0}, textString = "%name")}));
        end Flange_b;

        connector Support "Support/housing of a 1-dim. rotational shaft"
          SI.Angle phi "Absolute rotation angle of the support/housing";
          flow SI.Torque tau "Reaction torque in the support/housing";
          annotation(Documentation(info = "<html>
 <p>
 This is a connector for 1-dim. rotational mechanical systems and models
 the support or housing of a shaft. The following variables are defined in this connector:
 </p>
 
 <table border=1 cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\"> <b>phi</b></td>
       <td valign=\"top\"> Absolute rotation angle of the support/housing in [rad] </td>
   </tr>
   <tr><td valign=\"top\"> <b>tau</b></td>
       <td valign=\"top\"> Reaction torque in the support/housing in [Nm] </td>
   </tr>
 </table>
 
 <p>
 The support connector is usually defined as conditional connector.
 It is most convenient to utilize it
 </p>
 
 <ul>
 <li> For models to be build graphically (i.e., the model is build up by drag-and-drop
      from elementary components):<br>
      <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialOneFlangeAndSupport\">PartialOneFlangeAndSupport</a>,<br>
      <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlangesAndSupport\">PartialTwoFlangesAndSupport</a>, <br> &nbsp; </li>
 
 <li> For models to be build textually (i.e., elementary models):<br>
      <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport\">PartialElementaryOneFlangeAndSupport</a>,<br>
      <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport\">PartialElementaryTwoFlangesAndSupport</a>,<br>
      <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational\">PartialElementaryRotationalToTranslational</a>.</li>
 </ul>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-150, 150}, {150, -150}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1), graphics = {Rectangle(extent = {{-60, 60}, {60, -60}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-160, 100}, {40, 60}}, lineColor = {0, 0, 0}, textString = "%name"), Ellipse(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 0}, fillColor = {135, 135, 135}, fillPattern = FillPattern.Solid)}));
        end Support;

        model InternalSupport "Adapter model to utilize conditional support connector"
          input Modelica.SIunits.Torque tau "External support torque (must be computed via torque balance in model where InternalSupport is used; = flange.tau)";
          Modelica.SIunits.Angle phi "External support angle (= flange.phi)";
          Flange_a flange "Internal support flange (must be connected to the conditional support connector for useSupport=true and to conditional fixed model for useSupport=false)" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        equation
          flange.tau = tau;
          flange.phi = phi;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-20, 20}, {20, -20}}, lineColor = {135, 135, 135}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Text(extent = {{-200, 80}, {200, 40}}, lineColor = {0, 0, 255}, textString = "%name")}), Documentation(info = "<html>
 <p>
 This is an adapter model to utilize a conditional support connector
 in an elementary component, i.e., where the component equations are
 defined textually:
 </p>
 
 <ul>
 <li> If <i>useSupport = true</i>, the flange has to be connected to the conditional
      support connector.</li>
 <li> If <i>useSupport = false</i>, the flange has to be connected to the conditional
      fixed model.</li>
 </ul>
 
 <p>
 Variable <b>tau</b> is defined as <b>input</b> and must be provided when using
 this component as a modifier (computed via a torque balance in
 the model where InternalSupport is used). Usually, model InternalSupport is
 utilized via the partial models:
 </p>
 
 <blockquote>
 <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport\">
 PartialElementaryOneFlangeAndSupport</a>,<br>
 <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport\">
 PartialElementaryTwoFlangesAndSupport</a>,<br>
 <a href=\"modelica://Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational\">
 PartialElementaryRotationalToTranslational</a>.
 </blockquote>
 
 <p>
 Note, the support angle can always be accessed as internalSupport.phi, and
 the support torque can always be accessed as internalSupport.tau.
 </p>
 </html>"));
        end InternalSupport;

        partial model PartialTwoFlanges "Partial model for a component with two rotational 1-dim. shaft flanges"
          Flange_a flange_a "Flange of left shaft" annotation(Placement(transformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
          Flange_b flange_b "Flange of right shaft" annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
          annotation(Documentation(info = "<html>
 <p>
 This is a 1-dim. rotational component with two flanges.
 It is used e.g., to build up parts of a drive train consisting
 of several components.
 </p>
 </html>"));
        end PartialTwoFlanges;

        partial model PartialCompliantWithRelativeStates "Partial model for the compliant connection of two rotational 1-dim. shaft flanges where the relative angle and speed are used as preferred states"
          Modelica.SIunits.Angle phi_rel(start = 0, stateSelect = stateSelect, nominal = if phi_nominal >= Modelica.Constants.eps then phi_nominal else 1) "Relative rotation angle (= flange_b.phi - flange_a.phi)";
          Modelica.SIunits.AngularVelocity w_rel(start = 0, stateSelect = stateSelect) "Relative angular velocity (= der(phi_rel))";
          Modelica.SIunits.AngularAcceleration a_rel(start = 0) "Relative angular acceleration (= der(w_rel))";
          Modelica.SIunits.Torque tau "Torque between flanges (= flange_b.tau)";
          Flange_a flange_a "Left flange of compliant 1-dim. rotational component" annotation(Placement(transformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
          Flange_b flange_b "Right flange of compliant 1-dim. rotational component" annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
          parameter SI.Angle phi_nominal(displayUnit = "rad", min = 0.0) = 0.0001 "Nominal value of phi_rel (used for scaling)" annotation(Dialog(tab = "Advanced"));
          parameter StateSelect stateSelect = StateSelect.prefer "Priority to use phi_rel and w_rel as states" annotation(HideResult = true, Dialog(tab = "Advanced"));
        equation
          phi_rel = flange_b.phi - flange_a.phi;
          w_rel = der(phi_rel);
          a_rel = der(w_rel);
          flange_b.tau = tau;
          flange_a.tau = -tau;
          annotation(Documentation(info = "<html>
 <p>
 This is a 1-dim. rotational component with a compliant connection of two
 rotational 1-dim. flanges where inertial effects between the two
 flanges are neglected. The basic assumption is that the cut-torques
 of the two flanges sum-up to zero, i.e., they have the same absolute value
 but opposite sign: flange_a.tau + flange_b.tau = 0. This base class
 is used to built up force elements such as springs, dampers, friction.
 </p>
 
 <p>
 The relative angle and the relative speed are defined as preferred states.
 The reason is that for some drive trains, such as drive
 trains in vehicles, the absolute angle is quickly increasing during operation.
 Numerically, it is better to use relative angles between drive train components
 because they remain in a limited size. For this reason, StateSelect.prefer
 is set for the relative angle of this component.
 </p>
 
 <p>
 In order to improve the numerics, a nominal value for the relative angle
 can be provided via parameter <b>phi_nominal</b> in the Advanced menu.
 The default is 1e-4 rad since relative angles are usually
 in this order and the step size control of an integrator would be
 practically switched off, if a default of 1 rad would be used.
 This nominal value might also be computed from other values, such
 as \"phi_nominal = tau_nominal / c\" for a rotational spring, if tau_nominal
 and c are more meaningful for the user.
 </p>
 
 <p>
 See also the discussion
 <a href=\"modelica://Modelica.Mechanics.Rotational.UsersGuide.StateSelection\">State Selection</a>
 in the User's Guide of the Rotational library.
 </p>
 </html>"));
        end PartialCompliantWithRelativeStates;

        partial model PartialElementaryOneFlangeAndSupport2 "Partial model for a component with one rotational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models"
          parameter Boolean useSupport = false "= true, if support flange enabled, otherwise implicitly grounded" annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
          Flange_b flange "Flange of shaft" annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
          Support support(phi = phi_support, tau = -flange.tau) if useSupport "Support/housing of component" annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}})));
        protected
          Modelica.SIunits.Angle phi_support "Absolute angle of support flange";
        equation
          if not useSupport then
            phi_support = 0;
          end if;
          annotation(Documentation(info = "<html>
 <p>
 This is a 1-dim. rotational component with one flange and a support/housing.
 It is used to build up elementary components of a drive train with
 equations in the text layer.
 </p>
 
 <p>
 If <i>useSupport=true</i>, the support connector is conditionally enabled
 and needs to be connected.<br>
 If <i>useSupport=false</i>, the support connector is conditionally disabled
 and instead the component is internally fixed to ground.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(visible = not useSupport, points = {{-50, -120}, {-30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -120}, {-10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-10, -120}, {10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{10, -120}, {30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -100}, {30, -100}}, color = {0, 0, 0})}));
        end PartialElementaryOneFlangeAndSupport2;

        partial model PartialTorque "Partial model of a torque acting at the flange (accelerates the flange)"
          extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
          Modelica.SIunits.Angle phi "Angle of flange with respect to support (= flange.phi - support.phi)";
        equation
          phi = flange.phi - phi_support;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-96, 96}, {96, -96}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{0, -62}, {0, -100}}, color = {0, 0, 0}), Line(points = {{-92, 0}, {-76, 36}, {-54, 62}, {-30, 80}, {-14, 88}, {10, 92}, {26, 90}, {46, 80}, {64, 62}}, color = {0, 0, 0}, smooth = Smooth.Bezier), Text(extent = {{-150, 140}, {150, 100}}, lineColor = {0, 0, 255}, textString = "%name"), Polygon(points = {{94, 16}, {80, 74}, {50, 52}, {94, 16}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-58, -82}, {-42, -68}, {-20, -56}, {0, -54}, {18, -56}, {34, -62}, {44, -72}, {54, -82}, {60, -94}}, color = {0, 0, 0}, smooth = Smooth.Bezier), Polygon(points = {{-65, -98}, {-46, -80}, {-58, -72}, {-65, -98}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(visible = not useSupport, points = {{-50, -120}, {-30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -120}, {-10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-10, -120}, {10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{10, -120}, {30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -100}, {30, -100}}, color = {0, 0, 0})}), Documentation(info = "<HTML>
 <p>
 Partial model of torque that accelerates the flange.
 </p>
 
 <p>
 If <i>useSupport=true</i>, the support connector is conditionally enabled
 and needs to be connected.<br>
 If <i>useSupport=false</i>, the support connector is conditionally disabled
 and instead the component is internally fixed to ground.
 </p>
 </html>"));
        end PartialTorque;

        partial model PartialRelativeSensor "Partial model to measure a single relative variable between two flanges"
          extends Modelica.Icons.RotationalSensor;
          Flange_a flange_a "Left flange of shaft" annotation(Placement(transformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
          Flange_b flange_b "Right flange of shaft" annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
        equation
          0 = flange_a.tau + flange_b.tau;
          annotation(Documentation(info = "<html>
 <p>
 This is a partial model for 1-dim. rotational components with two rigidly connected
 flanges in order to measure relative kinematic quantities
 between the two flanges or the cut-torque in the flange and
 to provide the measured signal as output signal for further processing
 with the blocks of package Modelica.Blocks.
 </p>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Line(points = {{-70.0, 0.0}, {-90.0, 0.0}}), Line(points = {{70.0, 0.0}, {90.0, 0.0}}), Text(lineColor = {0, 0, 255}, extent = {{-150.0, 73.0}, {150.0, 113.0}}, textString = "%name")}));
        end PartialRelativeSensor;
        annotation(Documentation(info = "<html>
 <p>
 This package contains connectors and partial models for 1-dim.
 rotational mechanical components. The components of this package can
 only be used as basic building elements for models.
 </p>
 </html>"));
      end Interfaces;
      annotation(Documentation(info = "<html>
 
 <p>
 Library <b>Rotational</b> is a <b>free</b> Modelica package providing
 1-dimensional, rotational mechanical components to model in a convenient way
 drive trains with frictional losses. A typical, simple example is shown
 in the next figure:
 </p>
 
 <img src=\"modelica://Modelica/Resources/Images/Mechanics/Rotational/driveExample.png\">
 
 <p>
 For an introduction, have especially a look at:
 </p>
 <ul>
 <li> <a href=\"modelica://Modelica.Mechanics.Rotational.UsersGuide\">Rotational.UsersGuide</a>
      discusses the most important aspects how to use this library.</li>
 <li> <a href=\"modelica://Modelica.Mechanics.Rotational.Examples\">Rotational.Examples</a>
      contains examples that demonstrate the usage of this library.</li>
 </ul>
 
 <p>
 In version 3.0 of the Modelica Standard Library, the basic design of the
 library has changed: Previously, bearing connectors could or could not be connected.
 In 3.0, the bearing connector is renamed to \"<b>support</b>\" and this connector
 is enabled via parameter \"useSupport\". If the support connector is enabled,
 it must be connected, and if it is not enabled, it must not be connected.
 </p>
 
 <p>
 In version 3.2 of the Modelica Standard Library, all <b>dissipative</b> components
 of the Rotational library got an optional <b>heatPort</b> connector to which the
 dissipated energy is transported in form of heat. This connector is enabled
 via parameter \"useHeatPort\". If the heatPort connector is enabled,
 it must be connected, and if it is not enabled, it must not be connected.
 Independently, whether the heatPort is enabled or not,
 the dissipated power is available from the new variable \"<b>lossPower</b>\" (which is
 positive if heat is flowing out of the heatPort). For an example, see
 <a href=\"modelica://Modelica.Mechanics.Rotational.Examples.HeatLosses\">Examples.HeatLosses</a>.
 </p>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = ""), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Line(visible = true, origin = {-2.0, 46.0}, points = {{-83.0, -66.0}, {-63.0, -66.0}}), Line(visible = true, origin = {29.0, 48.0}, points = {{36.0, -68.0}, {56.0, -68.0}}), Line(visible = true, origin = {-2.0, 49.0}, points = {{-83.0, -29.0}, {-63.0, -29.0}}), Line(visible = true, origin = {29.0, 52.0}, points = {{36.0, -32.0}, {56.0, -32.0}}), Line(visible = true, origin = {-2.0, 49.0}, points = {{-73.0, -9.0}, {-73.0, -29.0}}), Line(visible = true, origin = {29.0, 52.0}, points = {{46.0, -12.0}, {46.0, -32.0}}), Line(visible = true, origin = {-0.0, -47.5}, points = {{-75.0, 27.5}, {-75.0, -27.5}, {75.0, -27.5}, {75.0, 27.5}}), Rectangle(visible = true, origin = {13.5135, 76.9841}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-63.5135, -126.9841}, {36.4865, -26.9841}}, radius = 10.0), Rectangle(visible = true, origin = {13.5135, 76.9841}, lineColor = {64, 64, 64}, fillPattern = FillPattern.None, extent = {{-63.5135, -126.9841}, {36.4865, -26.9841}}, radius = 10.0), Rectangle(visible = true, origin = {-3.0, 73.07689999999999}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-87.0, -83.07689999999999}, {-47.0, -63.0769}}), Rectangle(visible = true, origin = {22.3077, 70.0}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{27.6923, -80.0}, {67.6923, -60.0}})}));
    end Rotational;

    package Translational "Library to model 1-dimensional, translational mechanical systems"
      extends Modelica.Icons.Package;
      import SI = Modelica.SIunits;

      package Components "Components for 1D translational mechanical drive trains"
        extends Modelica.Icons.Package;

        model Fixed "Fixed flange"
          parameter SI.Position s0 = 0 "Fixed offset position of housing";
          Interfaces.Flange_b flange annotation(Placement(transformation(origin = {0, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 180)));
        equation
          flange.s = s0;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, -40}, {80, -40}}, color = {0, 0, 0}), Line(points = {{80, -40}, {40, -80}}, color = {0, 0, 0}), Line(points = {{40, -40}, {0, -80}}, color = {0, 0, 0}), Line(points = {{0, -40}, {-40, -80}}, color = {0, 0, 0}), Line(points = {{-40, -40}, {-80, -80}}, color = {0, 0, 0}), Line(points = {{0, -40}, {0, -10}}, color = {0, 0, 0}), Text(extent = {{-150, -90}, {150, -130}}, textString = "%name", lineColor = {0, 0, 255})}), Documentation(info = "<html>
 <p>
 The <i>flange</i> of a 1D translational mechanical system <i>fixed</i>
 at an position s0 in the <i>housing</i>. May be used:
 </p>
 <ul>
 <li> to connect a compliant element, such as a spring or a damper,
      between a sliding mass and the housing.
 <li> to fix a rigid element, such as a sliding mass, at a specific
      position.
 </ul>
 
 </html>"));
        end Fixed;
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(origin = {11.5, 31.183}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-67, -66}, {44, -6}})}), Documentation(info = "<html>
 <p>
 This package contains basic components 1D mechanical translational drive trains.
 </p>
 </html>"));
      end Components;

      package Sources "Sources to drive 1D translational mechanical components"
        extends Modelica.Icons.SourcesPackage;

        model Position "Forced movement of a flange according to a reference position"
          extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2(s(stateSelect = if exact then StateSelect.default else StateSelect.prefer));
          parameter Boolean exact = false "true/false exact treatment/filtering the input signal";
          parameter SI.Frequency f_crit = 50 "if exact=false, critical frequency of filter to filter input signal" annotation(Dialog(enable = not exact));
          SI.Velocity v(start = 0, stateSelect = if exact then StateSelect.default else StateSelect.prefer) "If exact=false, absolute velocity of flange_b else dummy";
          SI.Acceleration a(start = 0) "If exact=false, absolute acceleration of flange_b else dummy";
          Modelica.Blocks.Interfaces.RealInput s_ref(unit = "m") "Reference position of flange as input signal" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
        protected
          parameter Modelica.SIunits.AngularFrequency w_crit = 2 * Modelica.Constants.pi * f_crit "Critical frequency";
          constant Real af = 1.3617 "s coefficient of Bessel filter";
          constant Real bf = 0.618 "s*s coefficient of Bessel filter";
        initial equation
          if not exact then
            s = s_ref;
          end if;
        equation
          if exact then
            s = s_ref;
            v = 0;
            a = 0;
          else
            v = der(s);
            a = der(v);
            a = ((s_ref - s) * w_crit - af * v) * w_crit / bf;
          end if;
          // Filter: a = s_ref*S^2/(1 + (af/w_crit)*S + (bf/w_crit^2)*S^2)
          annotation(Documentation(info = "<HTML>
 <p>
 The input signal <b>s_ref</b> defines the <b>reference
 position</b> in [m]. Flange <b>flange_b</b> is <b>forced</b>
 to move relative to the support connector according to this reference motion. According to parameter
 <b>exact</b> (default = <b>false</b>), this is done in the following way:
 <ol>
 <li><b>exact=true</b><br>
     The reference position is treated <b>exactly</b>. This is only possible, if
     the input signal is defined by an analytical function which can be
     differentiated at least twice. If this prerequisite is fulfilled,
     the Modelica translator will differentiate the input signal twice
     in order to compute the reference acceleration of the flange.</li>
 <li><b>exact=false</b><br>
     The reference position is <b>filtered</b> and the second derivative
     of the filtered curve is used to compute the reference acceleration
     of the flange. This second derivative is <b>not</b> computed by
     numerical differentiation but by an appropriate realization of the
     filter. For filtering, a second order Bessel filter is used.
     The critical frequency (also called cut-off frequency) of the
     filter is defined via parameter <b>f_crit</b> in [Hz]. This value
     should be selected in such a way that it is higher as the essential
     low frequencies in the signal.</li>
 </ol>
 <p>
 The input signal can be provided from one of the signal generator
 blocks of the block library Modelica.Blocks.Sources.
 </p>
 
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-56, -36}, {-178, -66}}, lineColor = {0, 0, 0}, textString = "s_ref"), Rectangle(extent = {{-100, 20}, {100, -20}}, lineColor = {0, 127, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{150, 60}, {-150, 100}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{0, 52}, {0, 32}}, color = {0, 0, 0}), Line(points = {{-29, 32}, {30, 32}}, color = {0, 0, 0}), Line(points = {{-30, -32}, {30, -32}}, color = {0, 0, 0}), Line(points = {{0, -32}, {0, -100}}, color = {0, 0, 0}), Line(points = {{30, -42}, {20, -52}}, color = {0, 0, 0}), Line(points = {{30, -32}, {10, -52}}, color = {0, 0, 0}), Line(points = {{20, -32}, {0, -52}}, color = {0, 0, 0}), Line(points = {{10, -32}, {-10, -52}}, color = {0, 0, 0}), Line(points = {{0, -32}, {-20, -52}}, color = {0, 0, 0}), Line(points = {{-10, -32}, {-30, -52}}, color = {0, 0, 0}), Line(points = {{-20, -32}, {-30, -42}}, color = {0, 0, 0}), Text(extent = {{144, -30}, {30, -60}}, lineColor = {0, 0, 0}, textString = "exact="), Text(extent = {{134, -68}, {22, -96}}, lineColor = {0, 0, 0}, textString = "%exact")}));
        end Position;

        model Force "External force acting on a drive train element as input signal"
          extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2;
          Modelica.Blocks.Interfaces.RealInput f(unit = "N") "Driving force as input signal" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
        equation
          flange.f = -f;
          annotation(Documentation(info = "<html>
 <p>
 The input signal \"f\" in [N] characterizes an <i>external
 force</i> which acts (with positive sign) at a flange,
 i.e., the component connected to the flange is driven by force f.
 </p>
 <p>
 Input signal f can be provided from one of the signal generator
 blocks of Modelica.Blocks.Source.
 </p>
 
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 10}, {20, 10}, {20, 41}, {90, 0}, {20, -41}, {20, -10}, {-100, -10}, {-100, 10}}, lineColor = {0, 127, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -32}, {-80, -62}}, lineColor = {0, 0, 0}, textString = "f"), Text(extent = {{-150, 90}, {150, 50}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-30, -60}, {30, -60}}, color = {0, 0, 0}), Line(points = {{0, -60}, {0, -101}}, color = {0, 0, 0}), Line(points = {{-30, -80}, {-10, -60}}, color = {0, 0, 0}), Line(points = {{-10, -80}, {10, -60}}, color = {0, 0, 0}), Line(points = {{10, -80}, {30, -60}}, color = {0, 0, 0}), Polygon(points = {{-61, -50}, {-30, -40}, {-30, -60}, {-61, -50}}, lineColor = {0, 0, 0}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Line(points = {{-31, -50}, {50, -50}}, color = {0, 0, 0}), Line(points = {{-50, -80}, {-30, -60}}, color = {0, 0, 0})}));
        end Force;

        model ConstantForce "Constant force, not dependent on speed"
          extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
          parameter Modelica.SIunits.Force f_constant "Nominal force (if negative, force is acting as load)";
        equation
          f = -f_constant;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 0}, {98, 0}}, color = {0, 0, 255}), Text(extent = {{-118, 58}, {126, 34}}, lineColor = {0, 0, 0}, textString = "%f_constant")}), Documentation(info = "<HTML>
 <p>
 Model of constant force, not dependent on velocity of flange.<br>
 Positive force acts accelerating.
 </p>
 </HTML>"));
        end ConstantForce;
        annotation(Documentation(info = "<html>
 <p>
 This package contains ideal sources to drive 1D mechanical translational drive trains.
 </p>
 </html>"));
      end Sources;

      package Interfaces "Interfaces for 1-dim. translational mechanical components"
        extends Modelica.Icons.InterfacesPackage;

        connector Flange_a "(left) 1D translational flange (flange axis directed INTO cut plane, e. g. from left to right)"
          SI.Position s "Absolute position of flange";
          flow SI.Force f "Cut force directed into flange";
          annotation(defaultComponentName = "flange_a", Documentation(info = "<html>
 <p>
 This is a flange for 1D translational mechanical systems. In the cut plane of
 the flange a unit vector n, called flange axis, is defined which is directed
 INTO the cut plane, i. e. from left to right. All vectors in the cut plane are
 resolved with respect to
 this unit vector. E.g. force f characterizes a vector which is directed in
 the direction of n with value equal to f. When this flange is connected to
 other 1D translational flanges, this means that the axes vectors of the connected
 flanges are identical.
 </p>
 <p>
 The following variables are transported through this connector:
 </p>
 <pre>
   s: Absolute position of the flange in [m]. A positive translation
      means that the flange is translated along the flange axis.
   f: Cut-force in direction of the flange axis in [N].
 </pre>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 127, 0}, fillColor = {0, 127, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-40, -40}, {40, 40}}, lineColor = {0, 127, 0}, fillColor = {0, 127, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-160, 110}, {40, 50}}, lineColor = {0, 127, 0}, textString = "%name")}));
        end Flange_a;

        connector Flange_b "(right) 1D translational flange (flange axis directed OUT OF cut plane)"
          SI.Position s "Absolute position of flange";
          flow SI.Force f "Cut force directed into flange";
          annotation(defaultComponentName = "flange_b", Documentation(info = "<html>
 <p>
 This is a flange for 1D translational mechanical systems. In the cut plane of
 the flange a unit vector n, called flange axis, is defined which is directed
 OUT OF the cut plane. All vectors in the cut plane are resolved with respect to
 this unit vector. E.g. force f characterizes a vector which is directed in
 the direction of n with value equal to f. When this flange is connected to
 other 1D translational flanges, this means that the axes vectors of the connected
 flanges are identical.
 </p>
 <p>
 The following variables are transported through this connector:
 <pre>
   s: Absolute position of the flange in [m]. A positive translation
      means that the flange is translated along the flange axis.
   f: Cut-force in direction of the flange axis in [N].
 </pre>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-40, -40}, {40, 40}}, lineColor = {0, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-40, 110}, {160, 50}}, lineColor = {0, 127, 0}, textString = "%name")}));
        end Flange_b;

        connector Support "Support/housing 1D translational flange"
          SI.Position s "Absolute position of flange";
          flow SI.Force f "Cut force directed into flange";
          annotation(Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-60, 60}, {60, -60}}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Text(extent = {{-160, 110}, {40, 50}}, lineColor = {0, 127, 0}, textString = "%name"), Rectangle(extent = {{-40, -40}, {40, 40}}, lineColor = {0, 127, 0}, fillColor = {0, 127, 0}, fillPattern = FillPattern.Solid)}), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-150, 150}, {150, -150}}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Rectangle(extent = {{-90, -90}, {90, 90}}, lineColor = {0, 127, 0}, fillColor = {0, 127, 0}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>This is a connector for 1-dim. rotational mechanical systems and models the support or housing of a shaft. The following variables are defined in this connector:</p>
 <table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
 <td valign=\"top\"><h4>s</h4></td>
 <td valign=\"top\"><p>Absolute position of the support/housing in [m]</p></td>
 </tr>
 <tr>
 <td valign=\"top\"><h4>f</h4></td>
 <td valign=\"top\"><p>Reaction force in the support/housing in [N]</p></td>
 </tr>
 </table>
 <p><br/>The support connector is usually defined as conditional connector. It is most convenient to utilize it</p>
 <ul>
 <li>For models to be build graphically (i.e., the model is build up by drag-and-drop from elementary components):<br/><a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport\">PartialOneFlangeAndSupport</a>,<br/><a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport\">PartialTwoFlangesAndSupport</a>, <br/>&nbsp; </li>
 <li>For models to be build textually (i.e., elementary models):<br/><a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport\">PartialElementaryOneFlangeAndSupport</a>,<br/><a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport\">PartialElementaryTwoFlangesAndSupport</a>,<br/><a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational\">PartialElementaryRotationalToTranslational</a>. </li>
 </ul>
 </html>"));
        end Support;

        model InternalSupport "Adapter model to utilize conditional support connector"
          input SI.Force f "External support force (must be computed via force balance in model where InternalSupport is used; = flange.f)";
          SI.Position s "External support position (= flange.s)";
          Flange_a flange "Internal support flange (must be connected to the conditional support connector for useSupport=true and to conditional fixed model for useSupport=false)" annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        equation
          flange.f = f;
          flange.s = s;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-200, 80}, {200, 40}}, lineColor = {0, 0, 255}, textString = "%name"), Rectangle(extent = {{-20, 20}, {20, -20}}, lineColor = {0, 127, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 This is an adapter model to utilize a conditional support connector
 in an elementary component, i.e., where the component equations are
 defined textually:
 </p>
 
 <ul>
 <li> If <i>useSupport = true</i>, the flange has to be connected to the conditional
      support connector.</li>
 <li> If <i>useSupport = false</i>, the flange has to be connected to the conditional
      fixed model.</li>
 </ul>
 
 <p>
 Variable <b>f</b> is defined as <b>input</b> and must be provided when using
 this component as a modifier (computed via a force balance in
 the model where InternalSupport is used). Usually, model InternalSupport is
 utilized via the partial models:
 </p>
 
 <blockquote>
 <a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport\">
 PartialElementaryOneFlangeAndSupport</a>,<br>
 <a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport\">
 PartialElementaryTwoFlangesAndSupport</a>,<br>
 <a href=\"modelica://Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational\">
 PartialElementaryRotationalToTranslational</a>.
 </blockquote>
 
 <p>
 Note, the support position can always be accessed as internalSupport.s, and
 the support force can always be accessed as internalSupport.f.
 </p>
 </html>"));
        end InternalSupport;

        partial model PartialElementaryOneFlangeAndSupport2 "Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models"
          parameter Boolean useSupport = false "= true, if support flange enabled, otherwise implicitly grounded" annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
          Modelica.SIunits.Length s "Distance between flange and support (= flange.s - support.s)";
          Flange_b flange "Flange of component" annotation(Placement(transformation(extent = {{90, -10}, {110, 10}}, rotation = 0)));
          Support support(s = s_support, f = -flange.f) if useSupport "Support/housing of component" annotation(Placement(transformation(extent = {{-10, -110}, {10, -90}})));
        protected
          Modelica.SIunits.Length s_support "Absolute position of support flange";
        equation
          s = flange.s - s_support;
          if not useSupport then
            s_support = 0;
          end if;
          annotation(Documentation(info = "<html>
 <p>
 This is a 1-dim. translational component with one flange and a support/housing.
 It is used to build up elementary components of a drive train with
 equations in the text layer.
 </p>
 
 <p>
 If <i>useSupport=true</i>, the support connector is conditionally enabled
 and needs to be connected.<br>
 If <i>useSupport=false</i>, the support connector is conditionally disabled
 and instead the component is internally fixed to ground.
 </p>
 
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(visible = not useSupport, points = {{-50, -120}, {-30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -120}, {-10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-10, -120}, {10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{10, -120}, {30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -100}, {30, -100}}, color = {0, 0, 0})}));
        end PartialElementaryOneFlangeAndSupport2;

        partial model PartialForce "Partial model of a force acting at the flange (accelerates the flange)"
          extends PartialElementaryOneFlangeAndSupport2;
          Modelica.SIunits.Force f "Accelerating force acting at flange (= flange.f)";
        equation
          f = flange.f;
          annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-96, 96}, {96, -96}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{0, -60}, {0, -100}}, color = {0, 0, 0}), Text(extent = {{-150, 140}, {150, 100}}, lineColor = {0, 0, 255}, textString = "%name"), Line(points = {{-78, 80}, {51, 80}}, color = {0, 0, 0}), Polygon(points = {{81, 80}, {51, 90}, {51, 70}, {81, 80}}, lineColor = {0, 0, 0}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Line(points = {{-52, -60}, {77, -60}}, color = {0, 0, 0}), Polygon(points = {{-82, -60}, {-51, -50}, {-51, -70}, {-82, -60}}, lineColor = {0, 0, 0}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Line(visible = not useSupport, points = {{-50, -120}, {-30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -120}, {-10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-10, -120}, {10, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{10, -120}, {30, -100}}, color = {0, 0, 0}), Line(visible = not useSupport, points = {{-30, -100}, {30, -100}}, color = {0, 0, 0})}), Documentation(info = "<HTML>
 <p>
 Partial model of force that accelerates the flange.
 </p>
 
 <p>
 If <i>useSupport=true</i>, the support connector is conditionally enabled
 and needs to be connected.<br>
 If <i>useSupport=false</i>, the support connector is conditionally disabled
 and instead the component is internally fixed to ground.
 </p>
 </HTML>"));
        end PartialForce;
        annotation(Documentation(info = "<html>
 <p>
 This package contains connectors and partial models for 1-dim.
 translational mechanical components. The components of this package can
 only be used as basic building elements for models.
 </p>
 
 </html>"));
      end Interfaces;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(origin = {14, 53}, points = {{-84, -73}, {66, -73}}), Rectangle(origin = {14, 53}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Sphere, extent = {{-81, -65}, {-8, -22}}), Line(visible = true, origin = {14, 53}, points = {{-8, -43}, {-1, -43}, {6, -64}, {17, -23}, {29, -65}, {40, -23}, {50, -44}, {61, -44}}), Line(origin = {14, 53}, points = {{-59, -73}, {-84, -93}}), Line(origin = {14, 53}, points = {{-11, -73}, {-36, -93}}), Line(origin = {14, 53}, points = {{-34, -73}, {-59, -93}}), Line(origin = {14, 53}, points = {{14, -73}, {-11, -93}}), Line(origin = {14, 53}, points = {{39, -73}, {14, -93}}), Line(origin = {14, 53}, points = {{63, -73}, {38, -93}})}), Documentation(info = "<html>
 <p>
 This package contains components to model <i>1-dimensional translational
 mechanical</i> systems.
 </p>
 <p>
 The <i>filled</i> and <i>non-filled green squares</i> at the left and
 right side of a component represent <i>mechanical flanges</i>.
 Drawing a line between such squares means that the corresponding
 flanges are <i>rigidly attached</i> to each other. The components of this
 library can be usually connected together in an arbitrary way. E.g. it is
 possible to connect two springs or two sliding masses with inertia directly
 together.
 <p> The only <i>connection restriction</i> is that the Coulomb friction
 elements (e.g., MassWithStopAndFriction) should be only connected
 together provided a compliant element, such as a spring, is in between.
 The reason is that otherwise the frictional force is not uniquely
 defined if the elements are stuck at the same time instant (i.e., there
 does not exist a unique solution) and some simulation systems may not be
 able to handle this situation, since this leads to a singularity during
 simulation. It can only be resolved in a \"clean way\" by combining the
 two connected friction elements into
 one component and resolving the ambiguity of the frictional force in the
 stuck mode.
 </p>
 <p> Another restriction arises if the hard stops in model MassWithStopAndFriction are used, i. e.
 the movement of the mass is limited by a stop at smax or smin.
 <font color=\"#ff0000\"> <b>This requires the states Stop.s and Stop.v</b> </font>. If these states are eliminated during the index reduction
 the model will not work. To avoid this any inertias should be connected via springs
 to the Stop element, other sliding masses, dampers or hydraulic chambers must be avoided.</p>
 <p>
 In the <i>icon</i> of every component an <i>arrow</i> is displayed in grey
 color. This arrow characterizes the coordinate system in which the vectors
 of the component are resolved. It is directed into the positive
 translational direction (in the mathematical sense).
 In the flanges of a component, a coordinate system is rigidly attached
 to the flange. It is called <i>flange frame</i> and is directed in parallel
 to the component coordinate system. As a result, e.g., the positive
 cut-force of a \"left\" flange (flange_a) is directed into the flange, whereas
 the positive cut-force of a \"right\" flange (flange_b) is directed out of the
 flange. A flange is described by a Modelica connector containing
 the following variables:
 </p>
 <pre>
    Modelica.SIunits.Position s    \"Absolute position of flange\";
    <b>flow</b> Modelica.SIunits.Force f  \"Cut-force in the flange\";
 </pre>
 
 <p>
 This library is designed in a fully object oriented way in order that
 components can be connected together in every meaningful combination
 (e.g., direct connection of two springs or two shafts with inertia).
 As a consequence, most models lead to a system of
 differential-algebraic equations of <i>index 3</i> (= constraint
 equations have to be differentiated twice in order to arrive at
 a state space representation) and the Modelica translator or
 the simulator has to cope with this system representation.
 According to our present knowledge, this requires that the
 Modelica translator is able to symbolically differentiate equations
 (otherwise it is e.g., not possible to provide consistent initial
 conditions; even if consistent initial conditions are present, most
 numerical DAE integrators can cope at most with index 2 DAEs).
 </p>
 
 <p>
 In version 3.2 of the Modelica Standard Library, all <b>dissipative</b> components
 of the Translational library got an optional <b>heatPort</b> connector to which the
 dissipated energy is transported in form of heat. This connector is enabled
 via parameter \"useHeatPort\". If the heatPort connector is enabled,
 it must be connected, and if it is not enabled, it must not be connected.
 Independently, whether the heatPort is enabled or not,
 the dissipated power is available from the new variable \"<b>lossPower</b>\" (which is
 positive if heat is flowing out of the heatPort). For an example, see
 <a href=\"modelica://Modelica.Mechanics.Translational.Examples.HeatLosses\">Examples.HeatLosses</a>.
 </p>
 
 <dl>
 <dt><b>Library Officer</b>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> <br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
     Institut f&uuml;r Robotik und Mechatronik (DLR-RM)<br>
     Abteilung Systemdynamik und Regelungstechnik<br>
     Postfach 1116<br>
     D-82230 Wessling<br>
     Germany<br>
     email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br><br>
 </dl>
 
 <p>
 <b>Contributors to this library:</b>
 </p>
 
 <ul>
 <li> Main author until 2006:<br>
      Peter Beater <br>
      Universit&auml;t Paderborn, Abteilung Soest<br>
      Fachbereich Maschinenbau/Automatisierungstechnik<br>
      L&uuml;becker Ring 2 <br>
      D 59494 Soest <br>
      Germany <br>
      email: <A HREF=\"mailto:info@beater.de\">info@beater.de</A><br><br>
      </li>
 
 <li> <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
      Technical Consulting &amp; Electrical Engineering<br>
      A-3423 St.Andrae-Woerdern, Austria<br>
      email: <a href=\"mailto:a.haumer@haumer.at\">a.haumer@haumer.at</a><br><br></li>
 
 <li> <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> (DLR-RM)</li>
 </ul>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association, Anton Haumer and Universit&auml;t Paderborn, FB 12.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>Version 1.2.0 2010-07-22</i>
        by Anton Haumer and Martin Otter<br>
        heatPort introduced for all dissipative elements, and
        text in icons improved.
        <br></li>
 
 <li><i>Version 1.1.0 2007-11-16</i>
        by Anton Haumer<br>
        Redesign for Modelica 3.0-compliance<br>
        Added new components according to Mechanics.Rotational library
        <br></li>
 
 <li><i>Version 1.01 (July 18, 2001)</i>
        by Peter Beater <br>
        Assert statement added to \"Stop\", small bug fixes in examples.
        <br></li>
 
 <li><i>Version 1.0 (January 5, 2000)</i>
        by Peter Beater <br>
        Realized a first version based on Modelica library Mechanics.Rotational
        by Martin Otter and an existing Dymola library onedof.lib by Peter Beater.</li>
 </ul>
 </html>"));
    end Translational;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(origin = {8.6, 63.3333}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-4.6, -93.33329999999999}, {41.4, -53.3333}}), Ellipse(origin = {9.0, 46.0}, extent = {{-90.0, -60.0}, {-80.0, -50.0}}), Line(origin = {9.0, 46.0}, points = {{-85.0, -55.0}, {-60.0, -21.0}}, thickness = 0.5), Ellipse(origin = {9.0, 46.0}, extent = {{-65.0, -26.0}, {-55.0, -16.0}}), Line(origin = {9.0, 46.0}, points = {{-60.0, -21.0}, {9.0, -55.0}}, thickness = 0.5), Ellipse(origin = {9.0, 46.0}, fillPattern = FillPattern.Solid, extent = {{4.0, -60.0}, {14.0, -50.0}}), Line(origin = {9.0, 46.0}, points = {{-10.0, -26.0}, {72.0, -26.0}, {72.0, -86.0}, {-10.0, -86.0}})}), Documentation(info = "<HTML>
 <p>
 This package contains components to model the movement
 of 1-dim. rotational, 1-dim. translational, and
 3-dim. <b>mechanical systems</b>.
 </p>
 
 <p>
 Note, all <b>dissipative</b> components of the Modelica.Mechanics library have
 an optional <b>heatPort</b> connector to which the
 dissipated energy is transported in form of heat. This connector is enabled
 via parameter \"useHeatPort\". If the heatPort connector is enabled,
 it must be connected, and if it is not enabled, it must not be connected.
 Independently, whether the heatPort is enabled or not,
 the dissipated power is available from variable \"<b>lossPower</b>\" (which is
 positive if heat is flowing out of the heatPort).
 </p>
 </html>"));
  end Mechanics;

  package Thermal "Library of thermal system components to model heat transfer and simple thermo-fluid pipe flow"
    extends Modelica.Icons.Package;

    package HeatTransfer "Library of 1-dimensional heat transfer with lumped elements"
      extends Modelica.Icons.Package;

      package Interfaces "Connectors and partial models"
        extends Modelica.Icons.InterfacesPackage;

        partial connector HeatPort "Thermal port for 1-dim. heat transfer"
          Modelica.SIunits.Temperature T "Port temperature";
          flow Modelica.SIunits.HeatFlowRate Q_flow "Heat flow rate (positive if flowing from outside into the component)";
          annotation(Documentation(info = "<html>
 
 </html>"));
        end HeatPort;

        connector HeatPort_a "Thermal port for 1-dim. heat transfer (filled rectangular icon)"
          extends HeatPort;
          annotation(defaultComponentName = "port_a", Documentation(info = "<HTML>
 <p>This connector is used for 1-dimensional heat flow between components.
 The variables in the connector are:</p>
 <pre>
    T       Temperature in [Kelvin].
    Q_flow  Heat flow rate in [Watt].
 </pre>
 <p>According to the Modelica sign convention, a <b>positive</b> heat flow
 rate <b>Q_flow</b> is considered to flow <b>into</b> a component. This
 convention has to be used whenever this connector is used in a model
 class.</p>
 <p>Note, that the two connector classes <b>HeatPort_a</b> and
 <b>HeatPort_b</b> are identical with the only exception of the different
 <b>icon layout</b>.</p></html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-50, 50}, {50, -50}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-120, 120}, {100, 60}}, lineColor = {191, 0, 0}, textString = "%name")}));
        end HeatPort_a;

        partial model PartialElementaryConditionalHeatPort "Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models"
          parameter Boolean useHeatPort = false "=true, if heatPort is enabled" annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
          parameter Modelica.SIunits.Temperature T = 293.15 "Fixed device temperature if useHeatPort = false" annotation(Dialog(enable = not useHeatPort));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(final T = TheatPort, final Q_flow = -lossPower) if useHeatPort "Optional port to which dissipated losses are transported in form of heat" annotation(Placement(transformation(extent = {{-110, -110}, {-90, -90}}), iconTransformation(extent = {{-110, -110}, {-90, -90}})));
          Modelica.SIunits.Power lossPower "Loss power leaving component via heatPort (> 0, if heat is flowing out of component)";
          Modelica.SIunits.Temperature TheatPort "Temperature of heatPort";
        equation
          if not useHeatPort then
            TheatPort = T;
          end if;
          annotation(Documentation(info = "<html>
 <p>
 This partial model provides a conditional heat port for dissipating losses.
 </p>
 <ul>
 <li>If <b>useHeatPort</b> is set to <b>false</b> (default), no heat port is available, and the thermal loss power is dissipated internally.
 In this case, the parameter <b>T</b> specifies the fixed device temperature (the default for T = 20&deg;C) </li>
 <li>If <b>useHeatPort</b> is set to <b>true</b>, the heat port is available. </li>
 </ul>
 <p>
 If this model is used, the loss power has to be provided by an equation in the model which inherits from PartialElementaryConditionalHeatPort model
 (<b>lossPower = ...</b>). The device temperature <b>TheatPort</b> can be used to describe the influence of the device temperature on the model behaviour.
 </p>
 </html>"));
        end PartialElementaryConditionalHeatPort;

        partial model PartialElementaryConditionalHeatPortWithoutT "Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models"
          parameter Boolean useHeatPort = false "=true, if heatPort is enabled" annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(final Q_flow = -lossPower) if useHeatPort "Optional port to which dissipated losses are transported in form of heat" annotation(Placement(transformation(extent = {{-110, -110}, {-90, -90}}), iconTransformation(extent = {{-110, -110}, {-90, -90}})));
          Modelica.SIunits.Power lossPower "Loss power leaving component via heatPort (> 0, if heat is flowing out of component)";
          annotation(Documentation(info = "<html>
 <p>
 This partial model provides a conditional heat port for dissipating losses.
 </p>
 <ul>
 <li>If <b>useHeatPort</b> is set to <b>false</b> (default), no heat port is available, and the thermal loss power is dissipated internally.
 <li>If <b>useHeatPort</b> is set to <b>true</b>, the heat port is available and must be connected from the outside.</li>
 </ul>
 <p>
 If this model is used, the loss power has to be provided by an equation in the model which inherits from the PartialElementaryConditionalHeatPortWithoutT model
 (<b>lossPower = ...</b>).
 </p>
 
 <p>
 Note, this partial model is used in cases, where heatPort.T (that is the device temperature) is not utilized in the model. If this is desired, inherit instead from partial model
 <a href=\"modelica://Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort\">PartialElementaryConditionalHeatPort</a>.
 </p>
 </html>"));
        end PartialElementaryConditionalHeatPortWithoutT;
        annotation(Documentation(info = "<html>
 
 </html>"));
      end Interfaces;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {13.758, 27.517}, lineColor = {128, 128, 128}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{-54, -6}, {-61, -7}, {-75, -15}, {-79, -24}, {-80, -34}, {-78, -42}, {-73, -49}, {-64, -51}, {-57, -51}, {-47, -50}, {-41, -43}, {-38, -35}, {-40, -27}, {-40, -20}, {-42, -13}, {-47, -7}, {-54, -5}, {-54, -6}}), Polygon(origin = {13.758, 27.517}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{-75, -15}, {-79, -25}, {-80, -34}, {-78, -42}, {-72, -49}, {-64, -51}, {-57, -51}, {-47, -50}, {-57, -47}, {-65, -45}, {-71, -40}, {-74, -33}, {-76, -23}, {-75, -15}, {-75, -15}}), Polygon(origin = {13.758, 27.517}, lineColor = {160, 160, 164}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{39, -6}, {32, -7}, {18, -15}, {14, -24}, {13, -34}, {15, -42}, {20, -49}, {29, -51}, {36, -51}, {46, -50}, {52, -43}, {55, -35}, {53, -27}, {53, -20}, {51, -13}, {46, -7}, {39, -5}, {39, -6}}), Polygon(origin = {13.758, 27.517}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{18, -15}, {14, -25}, {13, -34}, {15, -42}, {21, -49}, {29, -51}, {36, -51}, {46, -50}, {36, -47}, {28, -45}, {22, -40}, {19, -33}, {17, -23}, {18, -15}, {18, -15}}), Polygon(origin = {13.758, 27.517}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{-9, -23}, {-9, -10}, {18, -17}, {-9, -23}}), Line(origin = {13.758, 27.517}, points = {{-41, -17}, {-9, -17}}, color = {191, 0, 0}, thickness = 0.5), Line(origin = {13.758, 27.517}, points = {{-17, -40}, {15, -40}}, color = {191, 0, 0}, thickness = 0.5), Polygon(origin = {13.758, 27.517}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{-17, -46}, {-17, -34}, {-40, -40}, {-17, -46}})}), Documentation(info = "<HTML>
 <p>
 This package contains components to model <b>1-dimensional heat transfer</b>
 with lumped elements. This allows especially to model heat transfer in
 machines provided the parameters of the lumped elements, such as
 the heat capacity of a part, can be determined by measurements
 (due to the complex geometries and many materials used in machines,
 calculating the lumped element parameters from some basic analytic
 formulas is usually not possible).
 </p>
 <p>
 Example models how to use this library are given in subpackage <b>Examples</b>.<br>
 For a first simple example, see <b>Examples.TwoMasses</b> where two masses
 with different initial temperatures are getting in contact to each
 other and arriving after some time at a common temperature.<br>
 <b>Examples.ControlledTemperature</b> shows how to hold a temperature
 within desired limits by switching on and off an electric resistor.<br>
 A more realistic example is provided in <b>Examples.Motor</b> where the
 heating of an electrical motor is modelled, see the following screen shot
 of this example:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Thermal/HeatTransfer/driveWithHeatTransfer.png\" ALT=\"driveWithHeatTransfer\">
 </p>
 
 <p>
 The <b>filled</b> and <b>non-filled red squares</b> at the left and
 right side of a component represent <b>thermal ports</b> (connector HeatPort).
 Drawing a line between such squares means that they are thermally connected.
 The variables of a HeatPort connector are the temperature <b>T</b> at the port
 and the heat flow rate <b>Q_flow</b> flowing into the component (if Q_flow is positive,
 the heat flows into the element, otherwise it flows out of the element):
 </p>
 <pre>   Modelica.SIunits.Temperature  T  \"absolute temperature at port in Kelvin\";
    Modelica.SIunits.HeatFlowRate Q_flow  \"flow rate at the port in Watt\";
 </pre>
 <p>
 Note, that all temperatures of this package, including initial conditions,
 are given in Kelvin. For convenience, in subpackages <b>HeatTransfer.Celsius</b>,
  <b>HeatTransfer.Fahrenheit</b> and <b>HeatTransfer.Rankine</b> components are provided such that source and
 sensor information is available in degree Celsius, degree Fahrenheit, or degree Rankine,
 respectively. Additionally, in package <b>SIunits.Conversions</b> conversion
 functions between the units Kelvin and Celsius, Fahrenheit, Rankine are
 provided. These functions may be used in the following way:
 </p>
 <pre>  <b>import</b> SI=Modelica.SIunits;
   <b>import</b> Modelica.SIunits.Conversions.*;
      ...
   <b>parameter</b> SI.Temperature T = from_degC(25);  // convert 25 degree Celsius to Kelvin
 </pre>
 
 <p>
 There are several other components available, such as AxialConduction (discretized PDE in
 axial direction), which have been temporarily removed from this library. The reason is that
 these components reference material properties, such as thermal conductivity, and currently
 the Modelica design group is discussing a general scheme to describe material properties.
 </p>
 <p>
 For technical details in the design of this library, see the following reference:<br>
 <b>Michael Tiller (2001)</b>: <a href=\"http://www.amazon.de\">
 Introduction to Physical Modeling with Modelica</a>.
 Kluwer Academic Publishers Boston.
 </p>
 <p>
 <b>Acknowledgements:</b><br>
 Several helpful remarks from the following persons are acknowledged:
 John Batteh, Ford Motors, Dearborn, U.S.A;
 <a href=\"http://www.haumer.at/\">Anton Haumer</a>, Technical Consulting &amp; Electrical Engineering, Austria;
 Ludwig Marvan, VA TECH ELIN EBG Elektronik GmbH, Wien, Austria;
 Hans Olsson, Dassault Syst&egrave;mes AB, Sweden;
 Hubertus Tummescheit, Lund Institute of Technology, Lund, Sweden.
 </p>
 <dl>
   <dt><b>Main Authors:</b></dt>
   <dd>
   <p>
   <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
   Technical Consulting &amp; Electrical Engineering<br>
   A-3423 St.Andrae-Woerdern, Austria<br>
   email: <a href=\"mailto:a.haumer@haumer.at\">a.haumer@haumer.at</a>
 </p>
   </dd>
 </dl>
 <p><b>Copyright &copy; 2001-2013, Modelica Association, Michael Tiller and DLR.</b></p>
 
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>July 15, 2002</i>
        by Michael Tiller, <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and Nikolaus Sch&uuml;rmann:<br>
        Implemented.
 </li>
 <li><i>June 13, 2005</i>
        by <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
        Refined placing of connectors (cosmetic).<br>
        Refined all Examples; removed Examples.FrequencyInverter, introducing Examples.Motor<br>
        Introduced temperature dependent correction (1 + alpha*(T - T_ref)) in Fixed/PrescribedHeatFlow<br>
 </li>
   <li> v1.1.1 2007/11/13 Anton Haumer<br>
        components moved to sub-packages</li>
   <li> v1.2.0 2009/08/26 Anton Haumer<br>
        added component ThermalCollector</li>
 
 </ul>
 </html>"));
    end HeatTransfer;
    annotation(Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Line(origin = {-47.5, 11.6667}, points = {{-2.5, -91.66670000000001}, {17.5, -71.66670000000001}, {-22.5, -51.6667}, {17.5, -31.6667}, {-22.5, -11.667}, {17.5, 8.333299999999999}, {-2.5, 28.3333}, {-2.5, 48.3333}}, smooth = Smooth.Bezier), Polygon(origin = {-50.0, 68.333}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{0.0, 21.667}, {-10.0, -8.333}, {10.0, -8.333}}), Line(origin = {2.5, 11.6667}, points = {{-2.5, -91.66670000000001}, {17.5, -71.66670000000001}, {-22.5, -51.6667}, {17.5, -31.6667}, {-22.5, -11.667}, {17.5, 8.333299999999999}, {-2.5, 28.3333}, {-2.5, 48.3333}}, smooth = Smooth.Bezier), Polygon(origin = {0.0, 68.333}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{0.0, 21.667}, {-10.0, -8.333}, {10.0, -8.333}}), Line(origin = {52.5, 11.6667}, points = {{-2.5, -91.66670000000001}, {17.5, -71.66670000000001}, {-22.5, -51.6667}, {17.5, -31.6667}, {-22.5, -11.667}, {17.5, 8.333299999999999}, {-2.5, 28.3333}, {-2.5, 48.3333}}, smooth = Smooth.Bezier), Polygon(origin = {50.0, 68.333}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{0.0, 21.667}, {-10.0, -8.333}, {10.0, -8.333}})}), Documentation(info = "<html>
 <p>
 This package contains libraries to model heat transfer
 and fluid heat flow.
 </p>
 </html>"));
  end Thermal;

  package Math "Library of mathematical functions (e.g., sin, cos) and of functions operating on vectors and matrices"
    import SI = Modelica.SIunits;
    extends Modelica.Icons.Package;

    package Icons "Icons for Math"
      extends Modelica.Icons.IconsPackage;

      partial function AxisLeft "Basic icon for mathematical function with y-axis on left side"
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-80, 68}}, color = {192, 192, 192}), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 80}, {-88, 80}}, color = {95, 95, 95}), Line(points = {{-80, -80}, {-88, -80}}, color = {95, 95, 95}), Line(points = {{-80, -90}, {-80, 84}}, color = {95, 95, 95}), Text(extent = {{-75, 104}, {-55, 84}}, lineColor = {95, 95, 95}, textString = "y"), Polygon(points = {{-80, 98}, {-86, 82}, {-74, 82}, {-80, 98}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Icon for a mathematical function, consisting of an y-axis on the left side.
 It is expected, that an x-axis is added and a plot of the function.
 </p>
 </html>"));
      end AxisLeft;

      partial function AxisCenter "Basic icon for mathematical function with y-axis in the center"
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{0, -80}, {0, 68}}, color = {192, 192, 192}), Polygon(points = {{0, 90}, {-8, 68}, {8, 68}, {0, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Diagram(graphics = {Line(points = {{0, 80}, {-8, 80}}, color = {95, 95, 95}), Line(points = {{0, -80}, {-8, -80}}, color = {95, 95, 95}), Line(points = {{0, -90}, {0, 84}}, color = {95, 95, 95}), Text(extent = {{5, 104}, {25, 84}}, lineColor = {95, 95, 95}, textString = "y"), Polygon(points = {{0, 98}, {-6, 82}, {6, 82}, {0, 98}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Icon for a mathematical function, consisting of an y-axis in the middle.
 It is expected, that an x-axis is added and a plot of the function.
 </p>
 </html>"));
      end AxisCenter;
    end Icons;

    package Vectors "Library of functions operating on vectors"
      extends Modelica.Icons.Package;

      function length "Return length of a vector (better as norm(), if further symbolic processing is performed)"
        extends Modelica.Icons.Function;
        input Real v[:] "Vector";
        output Real result "Length of vector v";
      algorithm
        result := sqrt(v * v);
        annotation(Inline = true, Documentation(info = "<html>
 <h4>Syntax</h4>
 <blockquote><pre>
 Vectors.<b>length</b>(v);
 </pre></blockquote>
 <h4>Description</h4>
 <p>
 The function call \"<code>Vectors.<b>length</b>(v)</code>\" returns the
 <b>Euclidean length</b> \"<code>sqrt(v*v)</code>\" of vector v.
 The function call is equivalent to Vectors.norm(v). The advantage of
 length(v) over norm(v)\"is that function length(..) is implemented
 in one statement and therefore the function is usually automatically
 inlined. Further symbolic processing is therefore possible, which is
 not the case with function norm(..).
 </p>
 <h4>Example</h4>
 <blockquote><pre>
   v = {2, -4, -2, -1};
   <b>length</b>(v);  // = 5
 </pre></blockquote>
 <h4>See also</h4>
 <p>
 <a href=\"modelica://Modelica.Math.Vectors.norm\">Vectors.norm</a>
 </p>
 </html>"));
      end length;

      function normalize "Return normalized vector such that length = 1 and prevent zero-division for zero vector"
        extends Modelica.Icons.Function;
        input Real v[:] "Vector";
        input Real eps(min = 0.0) = 100 * Modelica.Constants.eps "if |v| < eps then result = v/eps";
        output Real result[size(v, 1)] "Input vector v normalized to length=1";
      algorithm
        result := smooth(0, noEvent(if length(v) >= eps then v / length(v) else v / eps));
        annotation(Inline = true, Documentation(info = "<html>
 <h4>Syntax</h4>
 <blockquote><pre>
 Vectors.<b>normalize</b>(v);
 Vectors.<b>normalize</b>(v,eps=100*Modelica.Constants.eps);
 </pre></blockquote>
 <h4>Description</h4>
 <p>
 The function call \"<code>Vectors.<b>normalize</b>(v)</code>\" returns the
 <b>unit vector</b> \"<code>v/length(v)</code>\" of vector v.
 If length(v) is close to zero (more precisely, if length(v) &lt; eps),
 v/eps is returned in order to avoid
 a division by zero. For many applications this is useful, because
 often the unit vector <b>e</b> = <b>v</b>/length(<b>v</b>) is used to compute
 a vector x*<b>e</b>, where the scalar x is in the order of length(<b>v</b>),
 i.e., x*<b>e</b> is small, when length(<b>v</b>) is small and then
 it is fine to replace <b>e</b> by <b>v</b> to avoid a division by zero.
 </p>
 <p>
 Since the function has the \"Inline\" annotation, it
 is usually inlined and symbolic processing is applied.
 </p>
 <h4>Example</h4>
 <blockquote><pre>
   <b>normalize</b>({1,2,3});  // = {0.267, 0.534, 0.802}
   <b>normalize</b>({0,0,0});  // = {0,0,0}
 </pre></blockquote>
 <h4>See also</h4>
 <p>
 <a href=\"modelica://Modelica.Math.Vectors.length\">Vectors.length</a>,
 <a href=\"modelica://Modelica.Math.Vectors.normalize\">Vectors.normalizeWithAssert</a>
 </p>
 </html>"));
      end normalize;

      function normalizeWithAssert "Return normalized vector such that length = 1 (trigger an assert for zero vector)"
        import Modelica.Math.Vectors.length;
        extends Modelica.Icons.Function;
        input Real v[:] "Vector";
        output Real result[size(v, 1)] "Input vector v normalized to length=1";
      algorithm
        assert(length(v) > 0.0, "Vector v={0,0,0} shall be normalized (= v/sqrt(v*v)), but this results in a division by zero.\nProvide a non-zero vector!");
        result := v / length(v);
        annotation(Inline = true, Documentation(info = "<html>
 <h4>Syntax</h4>
 <blockquote><pre>
 Vectors.<b>normalizeWithAssert</b>(v);
 </pre></blockquote>
 <h4>Description</h4>
 <p>
 The function call \"<code>Vectors.<b>normalizeWithAssert</b>(v)</code>\" returns the
 <b>unit vector</b> \"<code>v/sqrt(v*v)</code>\" of vector v.
 If vector v is a zero vector, an assert is triggered.
 </p>
 <p>
 Since the function has the \"Inline\" annotation, it
 is usually inlined and symbolic processing is applied.
 </p>
 <h4>Example</h4>
 <blockquote><pre>
   <b>normalizeWithAssert</b>({1,2,3});  // = {0.267, 0.534, 0.802}
   <b>normalizeWithAssert</b>({0,0,0});  // error (an assert is triggered)
 </pre></blockquote>
 <h4>See also</h4>
 <p>
 <a href=\"modelica://Modelica.Math.Vectors.length\">Vectors.length</a>,
 <a href=\"modelica://Modelica.Math.Vectors.normalize\">Vectors.normalize</a>
 </p>
 </html>"));
      end normalizeWithAssert;
      annotation(preferredView = "info", Documentation(info = "<HTML>
 <h4>Library content</h4>
 <p>
 This library provides functions operating on vectors:
 </p>
 
 <ul>
 <li> <a href=\"modelica://Modelica.Math.Vectors.toString\">toString</a>(v)
      - returns the string representation of vector v.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.isEqual\">isEqual</a>(v1, v2)
      - returns true if vectors v1 and v2 have the same size and the same elements.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.norm\">norm</a>(v,p)
      - returns the p-norm of vector v.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.length\">length</a>(v)
      - returns the length of vector v (= norm(v,2), but inlined and therefore usable in
        symbolic manipulations)</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.normalize\">normalize</a>(v)
      - returns vector in direction of v with lenght = 1 and prevents
        zero-division for zero vector.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.reverse\">reverse</a>(v)
      - reverses the vector elements of v. </li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.sort\">sort</a>(v)
      - sorts the elements of vector v in ascending or descending order.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.find\">find</a>(e, v)
      - returns the index of the first occurrence of scalar e in vector v.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.interpolate\">interpolate</a>(x, y, xi)
      - returns the interpolated value in (x,y) that corresponds to xi.</li>
 
 <li> <a href=\"modelica://Modelica.Math.Vectors.relNodePositions\">relNodePositions</a>(nNodes)
      - returns a vector of relative node positions (0..1).</li>
 </ul>
 
 <h4>See also</h4>
 <a href=\"modelica://Modelica.Math.Matrices\">Matrices</a>
 </HTML>"));
    end Vectors;

    function sin "Sine"
      extends Modelica.Math.Icons.AxisLeft;
      input Modelica.SIunits.Angle u;
      output Real y;
    
      external "builtin" y = sin(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {-68.7, 34.2}, {-61.5, 53.1}, {-55.1, 66.40000000000001}, {-49.4, 74.59999999999999}, {-43.8, 79.09999999999999}, {-38.2, 79.8}, {-32.6, 76.59999999999999}, {-26.9, 69.7}, {-21.3, 59.4}, {-14.9, 44.1}, {-6.83, 21.2}, {10.1, -30.8}, {17.3, -50.2}, {23.7, -64.2}, {29.3, -73.09999999999999}, {35, -78.40000000000001}, {40.6, -80}, {46.2, -77.59999999999999}, {51.9, -71.5}, {57.5, -61.9}, {63.9, -47.2}, {72, -24.8}, {80, 0}}, color = {0, 0, 0}), Text(extent = {{12, 84}, {84, 36}}, lineColor = {192, 192, 192}, textString = "sin")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{100, 0}, {84, 6}, {84, -6}, {100, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {-68.7, 34.2}, {-61.5, 53.1}, {-55.1, 66.40000000000001}, {-49.4, 74.59999999999999}, {-43.8, 79.09999999999999}, {-38.2, 79.8}, {-32.6, 76.59999999999999}, {-26.9, 69.7}, {-21.3, 59.4}, {-14.9, 44.1}, {-6.83, 21.2}, {10.1, -30.8}, {17.3, -50.2}, {23.7, -64.2}, {29.3, -73.09999999999999}, {35, -78.40000000000001}, {40.6, -80}, {46.2, -77.59999999999999}, {51.9, -71.5}, {57.5, -61.9}, {63.9, -47.2}, {72, -24.8}, {80, 0}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{-105, 72}, {-85, 88}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{70, 25}, {90, 5}}, textString = "2*pi", lineColor = {0, 0, 255}), Text(extent = {{-103, -72}, {-83, -88}}, textString = "-1", lineColor = {0, 0, 255}), Text(extent = {{82, -6}, {102, -26}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{-80, 80}, {-28, 80}}, color = {175, 175, 175}, smooth = Smooth.None), Line(points = {{-80, -80}, {50, -80}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = sin(u), with -&infin; &lt; u &lt; &infin;:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/sin.png\">
 </p>
 </html>"));
    end sin;

    function cos "Cosine"
      extends Modelica.Math.Icons.AxisLeft;
      input SI.Angle u;
      output Real y;
    
      external "builtin" y = cos(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 80}, {-74.40000000000001, 78.09999999999999}, {-68.7, 72.3}, {-63.1, 63}, {-56.7, 48.7}, {-48.6, 26.6}, {-29.3, -32.5}, {-22.1, -51.7}, {-15.7, -65.3}, {-10.1, -73.8}, {-4.42, -78.8}, {1.21, -79.90000000000001}, {6.83, -77.09999999999999}, {12.5, -70.59999999999999}, {18.1, -60.6}, {24.5, -45.7}, {32.6, -23}, {50.3, 31.3}, {57.5, 50.7}, {63.9, 64.59999999999999}, {69.5, 73.40000000000001}, {75.2, 78.59999999999999}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-36, 82}, {36, 34}}, lineColor = {192, 192, 192}, textString = "cos")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-103, 72}, {-83, 88}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{-103, -72}, {-83, -88}}, textString = "-1", lineColor = {0, 0, 255}), Text(extent = {{70, 25}, {90, 5}}, textString = "2*pi", lineColor = {0, 0, 255}), Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{98, 0}, {82, 6}, {82, -6}, {98, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 80}, {-74.40000000000001, 78.09999999999999}, {-68.7, 72.3}, {-63.1, 63}, {-56.7, 48.7}, {-48.6, 26.6}, {-29.3, -32.5}, {-22.1, -51.7}, {-15.7, -65.3}, {-10.1, -73.8}, {-4.42, -78.8}, {1.21, -79.90000000000001}, {6.83, -77.09999999999999}, {12.5, -70.59999999999999}, {18.1, -60.6}, {24.5, -45.7}, {32.6, -23}, {50.3, 31.3}, {57.5, 50.7}, {63.9, 64.59999999999999}, {69.5, 73.40000000000001}, {75.2, 78.59999999999999}, {80, 80}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{78, -6}, {98, -26}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{-80, -80}, {18, -80}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = cos(u), with -&infin; &lt; u &lt; &infin;:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/cos.png\">
 </p>
 </html>"));
    end cos;

    function asin "Inverse sine (-1 <= u <= 1)"
      extends Modelica.Math.Icons.AxisCenter;
      input Real u;
      output SI.Angle y;
    
      external "builtin" y = asin(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-79.2, -72.8}, {-77.59999999999999, -67.5}, {-73.59999999999999, -59.4}, {-66.3, -49.8}, {-53.5, -37.3}, {-30.2, -19.7}, {37.4, 24.8}, {57.5, 40.8}, {68.7, 52.7}, {75.2, 62.2}, {77.59999999999999, 67.5}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-88, 78}, {-16, 30}}, lineColor = {192, 192, 192}, textString = "asin")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-40, -72}, {-15, -88}}, textString = "-pi/2", lineColor = {0, 0, 255}), Text(extent = {{-38, 88}, {-13, 72}}, textString = " pi/2", lineColor = {0, 0, 255}), Text(extent = {{68, -9}, {88, -29}}, textString = "+1", lineColor = {0, 0, 255}), Text(extent = {{-90, 21}, {-70, 1}}, textString = "-1", lineColor = {0, 0, 255}), Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{98, 0}, {82, 6}, {82, -6}, {98, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-79.2, -72.8}, {-77.59999999999999, -67.5}, {-73.59999999999999, -59.4}, {-66.3, -49.8}, {-53.5, -37.3}, {-30.2, -19.7}, {37.4, 24.8}, {57.5, 40.8}, {68.7, 52.7}, {75.2, 62.2}, {77.59999999999999, 67.5}, {80, 80}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{82, 24}, {102, 4}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{0, 80}, {86, 80}}, color = {175, 175, 175}, smooth = Smooth.None), Line(points = {{80, 86}, {80, -10}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = asin(u), with -1 &le; u &le; +1:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/asin.png\">
 </p>
 </html>"));
    end asin;

    function atan2 "Four quadrant inverse tangent"
      extends Modelica.Math.Icons.AxisCenter;
      input Real u1;
      input Real u2;
      output SI.Angle y;
    
      external "builtin" y = atan2(u1, u2);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{0, -80}, {8.93, -67.2}, {17.1, -59.3}, {27.3, -53.6}, {42.1, -49.4}, {69.90000000000001, -45.8}, {80, -45.1}}, color = {0, 0, 0}), Line(points = {{-80, -34.9}, {-46.1, -31.4}, {-29.4, -27.1}, {-18.3, -21.5}, {-10.3, -14.5}, {-2.03, -3.17}, {7.97, 11.6}, {15.5, 19.4}, {24.3, 25}, {39, 30}, {62.1, 33.5}, {80, 34.9}}, color = {0, 0, 0}), Line(points = {{-80, 45.1}, {-45.9, 48.7}, {-29.1, 52.9}, {-18.1, 58.6}, {-10.2, 65.8}, {-1.82, 77.2}, {0, 80}}, color = {0, 0, 0}), Text(extent = {{-90, -46}, {-18, -94}}, lineColor = {192, 192, 192}, textString = "atan2")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{96, 0}, {80, 6}, {80, -6}, {96, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{0, -80}, {8.93, -67.2}, {17.1, -59.3}, {27.3, -53.6}, {42.1, -49.4}, {69.90000000000001, -45.8}, {80, -45.1}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-80, -34.9}, {-46.1, -31.4}, {-29.4, -27.1}, {-18.3, -21.5}, {-10.3, -14.5}, {-2.03, -3.17}, {7.97, 11.6}, {15.5, 19.4}, {24.3, 25}, {39, 30}, {62.1, 33.5}, {80, 34.9}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-80, 45.1}, {-45.9, 48.7}, {-29.1, 52.9}, {-18.1, 58.6}, {-10.2, 65.8}, {-1.82, 77.2}, {0, 80}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{-32, 89}, {-10, 74}}, textString = "pi", lineColor = {0, 0, 255}), Text(extent = {{-32, -72}, {-4, -88}}, textString = "-pi", lineColor = {0, 0, 255}), Text(extent = {{0, 55}, {20, 42}}, textString = "pi/2", lineColor = {0, 0, 255}), Line(points = {{0, 40}, {-8, 40}}, color = {192, 192, 192}), Line(points = {{0, -40}, {-8, -40}}, color = {192, 192, 192}), Text(extent = {{0, -23}, {20, -42}}, textString = "-pi/2", lineColor = {0, 0, 255}), Text(extent = {{62, -4}, {94, -26}}, lineColor = {95, 95, 95}, textString = "u1, u2"), Line(points = {{-88, 40}, {86, 40}}, color = {175, 175, 175}, smooth = Smooth.None), Line(points = {{-86, -40}, {86, -40}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<HTML>
 <p>
 This function returns y = atan2(u1,u2) such that tan(y) = u1/u2 and
 y is in the range -pi &lt; y &le; pi. u2 may be zero, provided
 u1 is not zero. Usually u1, u2 is provided in such a form that
 u1 = sin(y) and u2 = cos(y):
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/atan2.png\">
 </p>
 
 </html>"));
    end atan2;

    function exp "Exponential, base e"
      extends Modelica.Math.Icons.AxisCenter;
      input Real u;
      output Real y;
    
      external "builtin" y = exp(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, -80.3976}, {68, -80.3976}}, color = {192, 192, 192}), Polygon(points = {{90, -80.3976}, {68, -72.3976}, {68, -88.3976}, {90, -80.3976}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-86, 50}, {-14, 2}}, lineColor = {192, 192, 192}, textString = "exp")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, -80.3976}, {84, -80.3976}}, color = {95, 95, 95}), Polygon(points = {{98, -80.3976}, {82, -74.3976}, {82, -86.3976}, {98, -80.3976}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-31, -77.90000000000001}, {-6.03, -74}, {10.9, -68.40000000000001}, {23.7, -61}, {34.2, -51.6}, {43, -40.3}, {50.3, -27.8}, {56.7, -13.5}, {62.3, 2.23}, {67.09999999999999, 18.6}, {72, 38.2}, {76, 57.6}, {80, 80}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{-31, 72}, {-11, 88}}, textString = "20", lineColor = {0, 0, 255}), Text(extent = {{-92, -81}, {-72, -101}}, textString = "-3", lineColor = {0, 0, 255}), Text(extent = {{66, -81}, {86, -101}}, textString = "3", lineColor = {0, 0, 255}), Text(extent = {{2, -69}, {22, -89}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{78, -54}, {98, -74}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{0, 80}, {88, 80}}, color = {175, 175, 175}, smooth = Smooth.None), Line(points = {{80, 84}, {80, -84}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = exp(u), with -&infin; &lt; u &lt; &infin;:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/exp.png\">
 </p>
 </html>"));
    end exp;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 0}, {-68.7, 34.2}, {-61.5, 53.1}, {-55.1, 66.40000000000001}, {-49.4, 74.59999999999999}, {-43.8, 79.09999999999999}, {-38.2, 79.8}, {-32.6, 76.59999999999999}, {-26.9, 69.7}, {-21.3, 59.4}, {-14.9, 44.1}, {-6.83, 21.2}, {10.1, -30.8}, {17.3, -50.2}, {23.7, -64.2}, {29.3, -73.09999999999999}, {35, -78.40000000000001}, {40.6, -80}, {46.2, -77.59999999999999}, {51.9, -71.5}, {57.5, -61.9}, {63.9, -47.2}, {72, -24.8}, {80, 0}}, color = {0, 0, 0}, smooth = Smooth.Bezier)}), Documentation(info = "<HTML>
 <p>
 This package contains <b>basic mathematical functions</b> (such as sin(..)),
 as well as functions operating on
 <a href=\"modelica://Modelica.Math.Vectors\">vectors</a>,
 <a href=\"modelica://Modelica.Math.Matrices\">matrices</a>,
 <a href=\"modelica://Modelica.Math.Nonlinear\">nonlinear functions</a>, and
 <a href=\"modelica://Modelica.Math.BooleanVectors\">Boolean vectors</a>.
 </p>
 
 <dl>
 <dt><b>Main Authors:</b>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and
     Marcus Baur<br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
     Institut f&uuml;r Robotik und Mechatronik<br>
     Postfach 1116<br>
     D-82230 Wessling<br>
     Germany<br>
     email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
 </dl>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>October 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        Function tempInterpol2 added.</li>
 <li><i>Oct. 24, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Icons for icon and diagram level introduced.</li>
 <li><i>June 30, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized.</li>
 </ul>
 
 </html>"));
  end Math;

  package Utilities "Library of utility functions dedicated to scripting (operating on files, streams, strings, system)"
    extends Modelica.Icons.Package;

    package Internal "Internal components that a user should usually not directly utilize"
      extends Modelica.Icons.InternalPackage;

      partial package PartialModelicaServices "Interfaces of components requiring a tool specific implementation"
        extends Modelica.Icons.InternalPackage;

        package Animation "Models and functions for 3-dim. animation"
          extends Modelica.Icons.Package;

          partial model PartialShape "Interface for 3D animation of elementary shapes"
            import SI = Modelica.SIunits;
            import Modelica.Mechanics.MultiBody.Frames;
            import Modelica.Mechanics.MultiBody.Types;
            parameter Types.ShapeType shapeType = "box" "Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring, <external shape>)";
            input Frames.Orientation R = Frames.nullRotation() "Orientation object to rotate the world frame into the object frame" annotation(Dialog);
            input SI.Position r[3] = {0, 0, 0} "Position vector from origin of world frame to origin of object frame, resolved in world frame" annotation(Dialog);
            input SI.Position r_shape[3] = {0, 0, 0} "Position vector from origin of object frame to shape origin, resolved in object frame" annotation(Dialog);
            input Real lengthDirection[3](each final unit = "1") = {1, 0, 0} "Vector in length direction, resolved in object frame" annotation(Dialog);
            input Real widthDirection[3](each final unit = "1") = {0, 1, 0} "Vector in width direction, resolved in object frame" annotation(Dialog);
            input SI.Length length = 0 "Length of visual object" annotation(Dialog);
            input SI.Length width = 0 "Width of visual object" annotation(Dialog);
            input SI.Length height = 0 "Height of visual object" annotation(Dialog);
            input Types.ShapeExtra extra = 0.0 "Additional size data for some of the shape types" annotation(Dialog);
            input Real color[3] = {255, 0, 0} "Color of shape" annotation(Dialog(colorSelector = true));
            input Types.SpecularCoefficient specularCoefficient = 0.7 "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog);
            annotation(Documentation(info = "<html>
 
 <p>
 This model is documented at
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape\">Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape</a>.
 </p>
 
 </html>"));
          end PartialShape;
        end Animation;
        annotation(Documentation(info = "<html>
 
 <p>
 This package contains interfaces of a set of functions and models used in the
 Modelica Standard Library that requires a <b>tool specific implementation</b>.
 There is an associated package called <b>ModelicaServices</b>. A tool vendor
 should provide a proper implementation of this library for the corresponding
 tool. The default implementation is \"do nothing\".
 In the Modelica Standard Library, the models and functions of ModelicaServices
 are used.
 </p>
 </html>"));
      end PartialModelicaServices;
    end Internal;
    annotation(Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Polygon(origin = {1.3835, -4.1418}, rotation = 45.0, fillColor = {64, 64, 64}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.0, 93.333}, {-15.0, 68.333}, {0.0, 58.333}, {15.0, 68.333}, {15.0, 93.333}, {20.0, 93.333}, {25.0, 83.333}, {25.0, 58.333}, {10.0, 43.333}, {10.0, -41.667}, {25.0, -56.667}, {25.0, -76.667}, {10.0, -91.667}, {0.0, -91.667}, {0.0, -81.667}, {5.0, -81.667}, {15.0, -71.667}, {15.0, -61.667}, {5.0, -51.667}, {-5.0, -51.667}, {-15.0, -61.667}, {-15.0, -71.667}, {-5.0, -81.667}, {0.0, -81.667}, {0.0, -91.667}, {-10.0, -91.667}, {-25.0, -76.667}, {-25.0, -56.667}, {-10.0, -41.667}, {-10.0, 43.333}, {-25.0, 58.333}, {-25.0, 83.333}, {-20.0, 93.333}}), Polygon(origin = {10.1018, 5.218}, rotation = -45.0, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-15.0, 87.273}, {15.0, 87.273}, {20.0, 82.273}, {20.0, 27.273}, {10.0, 17.273}, {10.0, 7.273}, {20.0, 2.273}, {20.0, -2.727}, {5.0, -2.727}, {5.0, -77.727}, {10.0, -87.727}, {5.0, -112.727}, {-5.0, -112.727}, {-10.0, -87.727}, {-5.0, -77.727}, {-5.0, -2.727}, {-20.0, -2.727}, {-20.0, 2.273}, {-10.0, 7.273}, {-10.0, 17.273}, {-20.0, 27.273}, {-20.0, 82.273}})}), Documentation(info = "<html>
 <p>
 This package contains Modelica <b>functions</b> that are
 especially suited for <b>scripting</b>. The functions might
 be used to work with strings, read data from file, write data
 to file or copy, move and remove files.
 </p>
 <p>
 For an introduction, have especially a look at:
 </p>
 <ul>
 <li> <a href=\"modelica://Modelica.Utilities.UsersGuide\">Modelica.Utilities.User's Guide</a>
      discusses the most important aspects of this library.</li>
 <li> <a href=\"modelica://Modelica.Utilities.Examples\">Modelica.Utilities.Examples</a>
      contains examples that demonstrate the usage of this library.</li>
 </ul>
 <p>
 The following main sublibraries are available:
 </p>
 <ul>
 <li> <a href=\"modelica://Modelica.Utilities.Files\">Files</a>
      provides functions to operate on files and directories, e.g.,
      to copy, move, remove files.</li>
 <li> <a href=\"modelica://Modelica.Utilities.Streams\">Streams</a>
      provides functions to read from files and write to files.</li>
 <li> <a href=\"modelica://Modelica.Utilities.Strings\">Strings</a>
      provides functions to operate on strings. E.g.
      substring, find, replace, sort, scanToken.</li>
 <li> <a href=\"modelica://Modelica.Utilities.System\">System</a>
      provides functions to interact with the environment.
      E.g., get or set the working directory or environment
      variables and to send a command to the default shell.</li>
 </ul>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association, DLR, and Dassault Syst&egrave;mes AB.
 </p>
 
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 
 </html>"));
  end Utilities;

  package Constants "Library of mathematical constants and constants of nature (e.g., pi, eps, R, sigma)"
    import SI = Modelica.SIunits;
    import NonSI = Modelica.SIunits.Conversions.NonSIunits;
    extends Modelica.Icons.Package;
    // Mathematical constants
    final constant Real e = Modelica.Math.exp(1.0);
    final constant Real pi = 2 * Modelica.Math.asin(1.0);
    // 3.14159265358979;
    final constant Real D2R = pi / 180 "Degree to Radian";
    final constant Real R2D = 180 / pi "Radian to Degree";
    final constant Real gamma = 0.5772156649015329 "see http://en.wikipedia.org/wiki/Euler_constant";
    // Machine dependent constants
    final constant Real eps = ModelicaServices.Machine.eps "Biggest number such that 1.0 + eps = 1.0";
    final constant Real small = ModelicaServices.Machine.small "Smallest number such that small and -small are representable on the machine";
    final constant Real inf = ModelicaServices.Machine.inf "Biggest Real number such that inf and -inf are representable on the machine";
    final constant Integer Integer_inf = ModelicaServices.Machine.Integer_inf "Biggest Integer number such that Integer_inf and -Integer_inf are representable on the machine";
    // Constants of nature
    // (name, value, description from http://physics.nist.gov/cuu/Constants/)
    final constant SI.Velocity c = 299792458 "Speed of light in vacuum";
    final constant SI.Acceleration g_n = 9.806649999999999 "Standard acceleration of gravity on earth";
    final constant Real G(final unit = "m3/(kg.s2)") = 6.6742e-11 "Newtonian constant of gravitation";
    final constant SI.FaradayConstant F = 96485.33990000001 "Faraday constant, C/mol";
    final constant Real h(final unit = "J.s") = 6.6260693e-34 "Planck constant";
    final constant Real k(final unit = "J/K") = 1.3806505e-23 "Boltzmann constant";
    final constant Real R(final unit = "J/(mol.K)") = 8.314472 "Molar gas constant";
    final constant Real sigma(final unit = "W/(m2.K4)") = 5.6704e-08 "Stefan-Boltzmann constant";
    final constant Real N_A(final unit = "1/mol") = 6.0221415e+23 "Avogadro constant";
    final constant Real mue_0(final unit = "N/A2") = 4 * pi * 1e-07 "Magnetic constant";
    final constant Real epsilon_0(final unit = "F/m") = 1 / (mue_0 * c * c) "Electric constant";
    final constant NonSI.Temperature_degC T_zero = -273.15 "Absolute zero temperature";
    annotation(Documentation(info = "<html>
 <p>
 This package provides often needed constants from mathematics, machine
 dependent constants and constants from nature. The latter constants
 (name, value, description) are from the following source:
 </p>
 
 <dl>
 <dt>Peter J. Mohr and Barry N. Taylor (1999):</dt>
 <dd><b>CODATA Recommended Values of the Fundamental Physical Constants: 1998</b>.
     Journal of Physical and Chemical Reference Data, Vol. 28, No. 6, 1999 and
     Reviews of Modern Physics, Vol. 72, No. 2, 2000. See also <a href=
 \"http://physics.nist.gov/cuu/Constants/\">http://physics.nist.gov/cuu/Constants/</a></dd>
 </dl>
 
 <p>CODATA is the Committee on Data for Science and Technology.</p>
 
 <dl>
 <dt><b>Main Author:</b></dt>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e. V. (DLR)<br>
     Oberpfaffenhofen<br>
     Postfach 11 16<br>
     D-82230 We&szlig;ling<br>
     email: <a href=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</a></dd>
 </dl>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>Nov 8, 2004</i>
        by <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        Constants updated according to 2002 CODATA values.</li>
 <li><i>Dec 9, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Constants updated according to 1998 CODATA values. Using names, values
        and description text from this source. Included magnetic and
        electric constant.</li>
 <li><i>Sep 18, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Constants eps, inf, small introduced.</li>
 <li><i>Nov 15, 1997</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized.</li>
 </ul>
 </html>"), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Polygon(origin = {-9.2597, 25.6673}, fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{48.017, 11.336}, {48.017, 11.336}, {10.766, 11.336}, {-25.684, 10.95}, {-34.944, -15.111}, {-34.944, -15.111}, {-32.298, -15.244}, {-32.298, -15.244}, {-22.112, 0.168}, {11.292, 0.234}, {48.267, -0.097}, {48.267, -0.097}}, smooth = Smooth.Bezier), Polygon(origin = {-19.9923, -8.3993}, fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{3.239, 37.343}, {3.305, 37.343}, {-0.399, 2.683}, {-16.936, -20.071}, {-7.808, -28.604}, {6.811, -22.519}, {9.986000000000001, 37.145}, {9.986000000000001, 37.145}}, smooth = Smooth.Bezier), Polygon(origin = {23.753, -11.5422}, fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10.873, 41.478}, {-10.873, 41.478}, {-14.048, -4.162}, {-9.352, -24.8}, {7.912, -24.469}, {16.247, 0.27}, {16.247, 0.27}, {13.336, 0.07099999999999999}, {13.336, 0.07099999999999999}, {7.515, -9.983000000000001}, {-3.134, -7.271}, {-2.671, 41.214}, {-2.671, 41.214}}, smooth = Smooth.Bezier)}));
  end Constants;

  package Icons "Library of icons"
    extends Icons.Package;

    partial package Package "Icon for standard packages"
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0)}), Documentation(info = "<html>
 <p>Standard package icon.</p>
 </html>"));
    end Package;

    partial package InterfacesPackage "Icon for packages containing interfaces"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {20.0, 0.0}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-10.0, 70.0}, {10.0, 70.0}, {40.0, 20.0}, {80.0, 20.0}, {80.0, -20.0}, {40.0, -20.0}, {10.0, -70.0}, {-10.0, -70.0}}), Polygon(fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-100.0, 20.0}, {-60.0, 20.0}, {-30.0, 70.0}, {-10.0, 70.0}, {-10.0, -70.0}, {-30.0, -70.0}, {-60.0, -20.0}, {-100.0, -20.0}})}), Documentation(info = "<html>
 <p>This icon indicates packages containing interfaces.</p>
 </html>"));
    end InterfacesPackage;

    partial package SourcesPackage "Icon for packages containing sources"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {23.3333, 0.0}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-23.333, 30.0}, {46.667, 0.0}, {-23.333, -30.0}}), Rectangle(fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-70, -4.5}, {0, 4.5}})}), Documentation(info = "<html>
 <p>This icon indicates a package which contains sources.</p>
 </html>"));
    end SourcesPackage;

    partial package SensorsPackage "Icon for packages containing sensors"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(origin = {0.0, -30.0}, fillColor = {255, 255, 255}, extent = {{-90.0, -90.0}, {90.0, 90.0}}, startAngle = 20.0, endAngle = 160.0), Ellipse(origin = {0.0, -30.0}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-20.0, -20.0}, {20.0, 20.0}}), Line(origin = {0.0, -30.0}, points = {{0.0, 60.0}, {0.0, 90.0}}), Ellipse(origin = {-0.0, -30.0}, fillColor = {64, 64, 64}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-10.0, -10.0}, {10.0, 10.0}}), Polygon(origin = {-0.0, -30.0}, rotation = -35.0, fillColor = {64, 64, 64}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-7.0, 0.0}, {-3.0, 85.0}, {0.0, 90.0}, {3.0, 85.0}, {7.0, 0.0}})}), Documentation(info = "<html>
 <p>This icon indicates a package containing sensors.</p>
 </html>"));
    end SensorsPackage;

    partial package TypesPackage "Icon for packages containing type definitions"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {-12.167, -23}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{12.167, 65}, {14.167, 93}, {36.167, 89}, {24.167, 20}, {4.167, -30}, {14.167, -30}, {24.167, -30}, {24.167, -40}, {-5.833, -50}, {-15.833, -30}, {4.167, 20}, {12.167, 65}}, smooth = Smooth.Bezier, lineColor = {0, 0, 0}), Polygon(origin = {2.7403, 1.6673}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{49.2597, 22.3327}, {31.2597, 24.3327}, {7.2597, 18.3327}, {-26.7403, 10.3327}, {-46.7403, 14.3327}, {-48.7403, 6.3327}, {-32.7403, 0.3327}, {-6.7403, 4.3327}, {33.2597, 14.3327}, {49.2597, 14.3327}, {49.2597, 22.3327}}, smooth = Smooth.Bezier)}));
    end TypesPackage;

    partial package IconsPackage "Icon for packages containing icons"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {-8.167, -17}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier, lineColor = {0, 0, 0}), Ellipse(origin = {-0.5, 56.5}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}}, lineColor = {0, 0, 0})}));
    end IconsPackage;

    partial package InternalPackage "Icon for an internal package (indicating that the package should not be directly utilized by user)"
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {215, 215, 215}, fillColor = {255, 255, 255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25), Rectangle(lineColor = {215, 215, 215}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25), Ellipse(extent = {{-80, 80}, {80, -80}}, lineColor = {215, 215, 215}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-55, 55}, {55, -55}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-60, 14}, {60, -14}}, lineColor = {215, 215, 215}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, origin = {0, 0}, rotation = 45)}), Documentation(info = "<html>
 
 <p>
 This icon shall be used for a package that contains internal classes not to be
 directly utilized by a user.
 </p>
 </html>"));
    end InternalPackage;

    partial class RotationalSensor "Icon representing a round measurement device"
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid, extent = {{-70.0, -70.0}, {70.0, 70.0}}), Line(points = {{0.0, 70.0}, {0.0, 40.0}}), Line(points = {{22.9, 32.8}, {40.2, 57.3}}), Line(points = {{-22.9, 32.8}, {-40.2, 57.3}}), Line(points = {{37.6, 13.7}, {65.8, 23.9}}), Line(points = {{-37.6, 13.7}, {-65.8, 23.9}}), Ellipse(lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, extent = {{-12.0, -12.0}, {12.0, 12.0}}), Polygon(origin = {0, 0}, rotation = -17.5, fillColor = {64, 64, 64}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-5.0, 0.0}, {-2.0, 60.0}, {0.0, 65.0}, {2.0, 60.0}, {5.0, 0.0}}), Ellipse(fillColor = {64, 64, 64}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-7.0, -7.0}, {7.0, 7.0}})}), Documentation(info = "<html>
 <p>
 This icon is designed for a <b>rotational sensor</b> model.
 </p>
 </html>"));
    end RotationalSensor;

    partial class TranslationalSensor "Icon representing a linear measurement device"
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid, extent = {{-70.0, -60.0}, {70.0, 20.0}}), Polygon(pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{0.0, -40.0}, {-10.0, -16.0}, {10.0, -16.0}, {0.0, -40.0}}), Line(points = {{0.0, 0.0}, {0.0, -16.0}}), Line(points = {{-70.0, 0.0}, {0.0, 0.0}}), Line(points = {{-50.0, -40.0}, {-50.0, -60.0}}), Line(points = {{-30.0, -40.0}, {-30.0, -60.0}}), Line(points = {{-10.0, -40.0}, {-10.0, -60.0}}), Line(points = {{10.0, -40.0}, {10.0, -60.0}}), Line(points = {{30.0, -40.0}, {30.0, -60.0}}), Line(points = {{50.0, -40.0}, {50.0, -60.0}})}), Documentation(info = "<html>
 <p>
 This icon is designed for a <b>translational sensor</b> model.
 </p></html>"));
    end TranslationalSensor;

    partial function Function "Icon for functions"
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(lineColor = {0, 0, 255}, extent = {{-150, 105}, {150, 145}}, textString = "%name"), Ellipse(lineColor = {108, 88, 49}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(lineColor = {108, 88, 49}, extent = {{-90.0, -90.0}, {90.0, 90.0}}, textString = "f")}), Documentation(info = "<html>
 <p>This icon indicates Modelica functions.</p>
 </html>"));
    end Function;

    partial record Record "Icon for records"
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(lineColor = {0, 0, 255}, extent = {{-150, 60}, {150, 100}}, textString = "%name"), Rectangle(origin = {0.0, -25.0}, lineColor = {64, 64, 64}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-100.0, -75.0}, {100.0, 75.0}}, radius = 25.0), Line(points = {{-100.0, 0.0}, {100.0, 0.0}}, color = {64, 64, 64}), Line(origin = {0.0, -50.0}, points = {{-100.0, 0.0}, {100.0, 0.0}}, color = {64, 64, 64}), Line(origin = {0.0, -25.0}, points = {{0.0, 75.0}, {0.0, -75.0}}, color = {64, 64, 64})}), Documentation(info = "<html>
 <p>
 This icon is indicates a record.
 </p>
 </html>"));
    end Record;

    type TypeReal "Icon for Real types"
      extends Real;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Text(lineColor = {255, 255, 255}, extent = {{-90.0, -50.0}, {90.0, 50.0}}, textString = "R")}), Documentation(info = "<html>
 <p>
 This icon is designed for a <b>Real</b> type.
 </p>
 </html>"));
    end TypeReal;

    type TypeInteger "Icon for Integer types"
      extends Integer;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Text(lineColor = {255, 255, 255}, extent = {{-90.0, -50.0}, {90.0, 50.0}}, textString = "I")}), Documentation(info = "<html>
 <p>
 This icon is designed for an <b>Integer</b> type.
 </p>
 </html>"));
    end TypeInteger;

    type TypeString "Icon for String types"
      extends String;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Text(lineColor = {255, 255, 255}, extent = {{-90.0, -50.0}, {90.0, 50.0}}, textString = "S")}), Documentation(info = "<html>
 <p>
 This icon is designed for a <b>String</b> type.
 </p>
 </html>"));
    end TypeString;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {-8.167, -17}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier, lineColor = {0, 0, 0}), Ellipse(origin = {-0.5, 56.5}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}}, lineColor = {0, 0, 0})}), Documentation(info = "<html>
 <p>This package contains definitions for the graphical layout of components which may be used in different libraries. The icons can be utilized by inheriting them in the desired class using &quot;extends&quot; or by directly copying the &quot;icon&quot; layer. </p>
 
 <h4>Main Authors:</h4>
 
 <dl>
 <dt><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a></dt>
     <dd>Deutsches Zentrum fuer Luft und Raumfahrt e.V. (DLR)</dd>
     <dd>Oberpfaffenhofen</dd>
     <dd>Postfach 1116</dd>
     <dd>D-82230 Wessling</dd>
     <dd>email: <a href=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</a></dd>
 <dt>Christian Kral</dt>
     <dd><a href=\"http://www.ait.ac.at/\">Austrian Institute of Technology, AIT</a></dd>
     <dd>Mobility Department</dd><dd>Giefinggasse 2</dd>
     <dd>1210 Vienna, Austria</dd>
     <dd>email: <a href=\"mailto:dr.christian.kral@gmail.com\">dr.christian.kral@gmail.com</a></dd>
 <dt>Johan Andreasson</dt>
     <dd><a href=\"http://www.modelon.se/\">Modelon AB</a></dd>
     <dd>Ideon Science Park</dd>
     <dd>22370 Lund, Sweden</dd>
     <dd>email: <a href=\"mailto:johan.andreasson@modelon.se\">johan.andreasson@modelon.se</a></dd>
 </dl>
 
 <p>Copyright &copy; 1998-2013, Modelica Association, DLR, AIT, and Modelon AB. </p>
 <p><i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified under the terms of the <b>Modelica license</b>, see the license conditions and the accompanying <b>disclaimer</b> in <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a>.</i> </p>
 </html>"));
  end Icons;

  package SIunits "Library of type and unit definitions based on SI units according to ISO 31-1992"
    extends Modelica.Icons.Package;

    package Icons "Icons for SIunits"
      extends Modelica.Icons.IconsPackage;

      partial function Conversion "Base icon for conversion functions"
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {191, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-90, 0}, {30, 0}}, color = {191, 0, 0}), Polygon(points = {{90, 0}, {30, 20}, {30, -20}, {90, 0}}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-115, 155}, {115, 105}}, textString = "%name", lineColor = {0, 0, 255})}));
      end Conversion;
    end Icons;

    package Conversions "Conversion functions to/from non SI units and type definitions of non SI units"
      extends Modelica.Icons.Package;

      package NonSIunits "Type definitions of non SI units"
        extends Modelica.Icons.Package;
        type Temperature_degC = Real(final quantity = "ThermodynamicTemperature", final unit = "degC") "Absolute temperature in degree Celsius (for relative temperature use SIunits.TemperatureDifference)" annotation(absoluteValue = true);
        type Angle_deg = Real(final quantity = "Angle", final unit = "deg") "Angle in degree";
        annotation(Documentation(info = "<HTML>
 <p>
 This package provides predefined types, such as <b>Angle_deg</b> (angle in
 degree), <b>AngularVelocity_rpm</b> (angular velocity in revolutions per
 minute) or <b>Temperature_degF</b> (temperature in degree Fahrenheit),
 which are in common use but are not part of the international standard on
 units according to ISO 31-1992 \"General principles concerning quantities,
 units and symbols\" and ISO 1000-1992 \"SI units and recommendations for
 the use of their multiples and of certain other units\".</p>
 <p>If possible, the types in this package should not be used. Use instead
 types of package Modelica.SIunits. For more information on units, see also
 the book of Francois Cardarelli <b>Scientific Unit Conversion - A
 Practical Guide to Metrication</b> (Springer 1997).</p>
 <p>Some units, such as <b>Temperature_degC/Temp_C</b> are both defined in
 Modelica.SIunits and in Modelica.Conversions.NonSIunits. The reason is that these
 definitions have been placed erroneously in Modelica.SIunits although they
 are not SIunits. For backward compatibility, these type definitions are
 still kept in Modelica.SIunits.</p>
 </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Text(origin = {15.0, 51.8518}, extent = {{-105.0, -86.8518}, {75.0, -16.8518}}, lineColor = {0, 0, 0}, textString = "[km/h]")}));
      end NonSIunits;

      function to_unit1 "Change the unit of a Real number to unit=\"1\""
        extends Modelica.SIunits.Icons.Conversion;
        input Real r "Real number";
        output Real result(unit = "1") "Real number r with unit=\"1\"";
      algorithm
        result := r;
        annotation(Inline = true, Documentation(info = "<HTML>
 <h4>Syntax</h4>
 <blockquote><pre>
 SIunits.Conversions.<b>to_unit1</b>(r);
 </pre></blockquote>
 <h4>Description</h4>
 <p>
 The function call \"<code>Conversions.<b>to_unit1</b>(r)</code>\" returns r with unit=\"1\".
 
 <h4>Example</h4>
 <blockquote><pre>
   Modelica.SIunits.Velocity v = {3,2,1};
   Real direction[3](unit=\"1\") = to_unit1(v);   // Automatically vectorized call of to_unit1
 </pre></blockquote>
 </HTML>"), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-90, 86}, {32, 50}}, lineColor = {0, 0, 0}, textString = "any", horizontalAlignment = TextAlignment.Left), Text(extent = {{-36, -52}, {86, -88}}, lineColor = {0, 0, 0}, horizontalAlignment = TextAlignment.Right, textString = "1")}));
      end to_unit1;

      function from_deg "Convert from degree to radian"
        extends Modelica.SIunits.Icons.Conversion;
        input NonSIunits.Angle_deg degree "degree value";
        output Angle radian "radian value";
      algorithm
        radian := Modelica.Constants.pi / 180.0 * degree;
        annotation(Inline = true, Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{4, 100}, {-102, 46}}, lineColor = {0, 0, 0}, textString = "deg"), Text(extent = {{100, -32}, {-18, -100}}, lineColor = {0, 0, 0}, textString = "rad")}));
      end from_deg;
      annotation(Documentation(info = "<HTML>
 <p>This package provides conversion functions from the non SI Units
 defined in package Modelica.SIunits.Conversions.NonSIunits to the
 corresponding SI Units defined in package Modelica.SIunits and vice
 versa. It is recommended to use these functions in the following
 way (note, that all functions have one Real input and one Real output
 argument):</p>
 <pre>
   <b>import</b> SI = Modelica.SIunits;
   <b>import</b> Modelica.SIunits.Conversions.*;
      ...
   <b>parameter</b> SI.Temperature     T   = from_degC(25);   // convert 25 degree Celsius to Kelvin
   <b>parameter</b> SI.Angle           phi = from_deg(180);   // convert 180 degree to radian
   <b>parameter</b> SI.AngularVelocity w   = from_rpm(3600);  // convert 3600 revolutions per minutes
                                                       // to radian per seconds
 </pre>
 
 </html>"));
    end Conversions;

    // Space and Time (chapter 1 of ISO 31-1992)
    type Angle = Real(final quantity = "Angle", final unit = "rad", displayUnit = "deg");
    type Length = Real(final quantity = "Length", final unit = "m");
    type Position = Length;
    type Distance = Length(min = 0);
    type Diameter = Length(min = 0);
    type Area = Real(final quantity = "Area", final unit = "m2");
    type Time = Real(final quantity = "Time", final unit = "s");
    type AngularVelocity = Real(final quantity = "AngularVelocity", final unit = "rad/s");
    type AngularAcceleration = Real(final quantity = "AngularAcceleration", final unit = "rad/s2");
    type Velocity = Real(final quantity = "Velocity", final unit = "m/s");
    type Acceleration = Real(final quantity = "Acceleration", final unit = "m/s2");
    // Periodic and related phenomens (chapter 2 of ISO 31-1992)
    type Frequency = Real(final quantity = "Frequency", final unit = "Hz");
    type AngularFrequency = Real(final quantity = "AngularFrequency", final unit = "rad/s");
    // For compatibility reasons only
    // added to ISO-chapter
    // Mechanics (chapter 3 of ISO 31-1992)
    type Mass = Real(quantity = "Mass", final unit = "kg", min = 0);
    type Density = Real(final quantity = "Density", final unit = "kg/m3", displayUnit = "g/cm3", min = 0.0);
    type MomentOfInertia = Real(final quantity = "MomentOfInertia", final unit = "kg.m2");
    type Inertia = MomentOfInertia;
    type Force = Real(final quantity = "Force", final unit = "N");
    type TranslationalSpringConstant = Real(final quantity = "TranslationalSpringConstant", final unit = "N/m");
    type TranslationalDampingConstant = Real(final quantity = "TranslationalDampingConstant", final unit = "N.s/m");
    type Torque = Real(final quantity = "Torque", final unit = "N.m");
    type RotationalSpringConstant = Real(final quantity = "RotationalSpringConstant", final unit = "N.m/rad");
    type RotationalDampingConstant = Real(final quantity = "RotationalDampingConstant", final unit = "N.m.s/rad");
    type Power = Real(final quantity = "Power", final unit = "W");
    // added to ISO-chapter 3
    // Heat (chapter 4 of ISO 31-1992)
    type ThermodynamicTemperature = Real(final quantity = "ThermodynamicTemperature", final unit = "K", min = 0.0, start = 288.15, nominal = 300, displayUnit = "degC") "Absolute temperature (use type TemperatureDifference for relative temperatures)" annotation(absoluteValue = true);
    type Temperature = ThermodynamicTemperature;
    type HeatFlowRate = Real(final quantity = "Power", final unit = "W");
    // added to ISO-chapter 4
    // Electricity and Magnetism (chapter 5 of ISO 31-1992)
    // added to ISO-chapter 5
    // Light and Related Electromagnetic Radiations (chapter 6 of ISO 31-1992)"
    // Acoustics (chapter 7 of ISO 31-1992)
    // Physical chemistry and molecular physics (chapter 8 of ISO 31-1992)
    type FaradayConstant = Real(final quantity = "FaradayConstant", final unit = "C/mol");
    // Atomic and Nuclear Physics (chapter 9 of ISO 31-1992)
    // Nuclear Reactions and Ionizing Radiations (chapter 10 of ISO 31-1992)
    // chapter 11 is not defined in ISO 31-1992
    // Characteristic Numbers (chapter 12 of ISO 31-1992)
    // The Biot number (Bi) is used when
    // the Nusselt number is reserved
    // for convective transport of heat.
    // Solid State Physics (chapter 13 of ISO 31-1992)
    // Other types not defined in ISO 31-1992
    // Complex types for electrical systems (not defined in ISO 31-1992)
    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-66, 78}, {-66, -40}}, color = {64, 64, 64}, smooth = Smooth.None), Ellipse(extent = {{12, 36}, {68, -38}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-74, 78}, {-66, -40}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Polygon(points = {{-66, -4}, {-66, 6}, {-16, 56}, {-16, 46}, {-66, -4}}, lineColor = {64, 64, 64}, smooth = Smooth.None, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Polygon(points = {{-46, 16}, {-40, 22}, {-2, -40}, {-10, -40}, {-46, 16}}, lineColor = {64, 64, 64}, smooth = Smooth.None, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Ellipse(extent = {{22, 26}, {58, -28}}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{68, 2}, {68, -46}, {64, -60}, {58, -68}, {48, -72}, {18, -72}, {18, -64}, {46, -64}, {54, -60}, {58, -54}, {60, -46}, {60, -26}, {64, -20}, {68, -6}, {68, 2}}, lineColor = {64, 64, 64}, smooth = Smooth.Bezier, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>This package provides predefined types, such as <i>Mass</i>,
 <i>Angle</i>, <i>Time</i>, based on the international standard
 on units, e.g.,
 </p>
 
 <pre>   <b>type</b> Angle = Real(<b>final</b> quantity = \"Angle\",
                      <b>final</b> unit     = \"rad\",
                      displayUnit    = \"deg\");
 </pre>
 
 <p>
 as well as conversion functions from non SI-units to SI-units
 and vice versa in subpackage
 <a href=\"modelica://Modelica.SIunits.Conversions\">Conversions</a>.
 </p>
 
 <p>
 For an introduction how units are used in the Modelica standard library
 with package SIunits, have a look at:
 <a href=\"modelica://Modelica.SIunits.UsersGuide.HowToUseSIunits\">How to use SIunits</a>.
 </p>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>May 25, 2011</i> by Stefan Wischhusen:<br/>Added molar units for energy and enthalpy.</li>
 <li><i>Jan. 27, 2010</i> by Christian Kral:<br/>Added complex units.</li>
 <li><i>Dec. 14, 2005</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Add User&#39;;s Guide and removed &quot;min&quot; values for Resistance and Conductance.</li>
 <li><i>October 21, 2002</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br/>Added new package <b>Conversions</b>. Corrected typo <i>Wavelenght</i>.</li>
 <li><i>June 6, 2000</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Introduced the following new types<br/>type Temperature = ThermodynamicTemperature;<br/>types DerDensityByEnthalpy, DerDensityByPressure, DerDensityByTemperature, DerEnthalpyByPressure, DerEnergyByDensity, DerEnergyByPressure<br/>Attribute &quot;final&quot; removed from min and max values in order that these values can still be changed to narrow the allowed range of values.<br/>Quantity=&quot;Stress&quot; removed from type &quot;Stress&quot;, in order that a type &quot;Stress&quot; can be connected to a type &quot;Pressure&quot;.</li>
 <li><i>Oct. 27, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>New types due to electrical library: Transconductance, InversePotential, Damping.</li>
 <li><i>Sept. 18, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Renamed from SIunit to SIunits. Subpackages expanded, i.e., the SIunits package, does no longer contain subpackages.</li>
 <li><i>Aug 12, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Type &quot;Pressure&quot; renamed to &quot;AbsolutePressure&quot; and introduced a new type &quot;Pressure&quot; which does not contain a minimum of zero in order to allow convenient handling of relative pressure. Redefined BulkModulus as an alias to AbsolutePressure instead of Stress, since needed in hydraulics.</li>
 <li><i>June 29, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Bug-fix: Double definition of &quot;Compressibility&quot; removed and appropriate &quot;extends Heat&quot; clause introduced in package SolidStatePhysics to incorporate ThermodynamicTemperature.</li>
 <li><i>April 8, 1998</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Astrid Jaschinski:<br/>Complete ISO 31 chapters realized.</li>
 <li><i>Nov. 15, 1997</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and <a href=\"http://www.control.lth.se/~hubertus/\">Hubertus Tummescheit</a>:<br/>Some chapters realized.</li>
 </ul>
 </html>"));
  end SIunits;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{143bd91c-ca8b-4f9e-9fc3-b20333a710c6}"), preferredView = "info", version = "3.2.1", versionBuild = 2, versionDate = "2013-08-14", dateModified = "2013-08-14 08:44:41Z", revisionId = "$Id:: package.mo 6931 2013-08-14 11:38:51Z #$", uses(Complex(version = "3.2.1"), ModelicaServices(version = "3.2.1")), conversion(noneFromVersion = "3.2", noneFromVersion = "3.1", noneFromVersion = "3.0.1", noneFromVersion = "3.0", from(version = "2.1", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"), from(version = "2.2", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"), from(version = "2.2.1", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"), from(version = "2.2.2", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos")), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Polygon(origin = {-6.9888, 20.048}, fillColor = {0, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-93.0112, 10.3188}, {-93.0112, 10.3188}, {-73.011, 24.6}, {-63.011, 31.221}, {-51.219, 36.777}, {-39.842, 38.629}, {-31.376, 36.248}, {-25.819, 29.369}, {-24.232, 22.49}, {-23.703, 17.463}, {-15.501, 25.135}, {-6.24, 32.015}, {3.02, 36.777}, {15.191, 39.423}, {27.097, 37.306}, {32.653, 29.633}, {35.035, 20.108}, {43.501, 28.046}, {54.085, 35.19}, {65.991, 39.952}, {77.89700000000001, 39.688}, {87.422, 33.338}, {91.126, 21.696}, {90.068, 9.525}, {86.099, -1.058}, {79.749, -10.054}, {71.283, -21.431}, {62.816, -33.337}, {60.964, -32.808}, {70.489, -16.14}, {77.36799999999999, -2.381}, {81.072, 10.054}, {79.749, 19.05}, {72.605, 24.342}, {61.758, 23.019}, {49.587, 14.817}, {39.003, 4.763}, {29.214, -6.085}, {21.012, -16.669}, {13.339, -26.458}, {5.401, -36.777}, {-1.213, -46.037}, {-6.24, -53.446}, {-8.092000000000001, -52.387}, {-0.6840000000000001, -40.746}, {5.401, -30.692}, {12.81, -17.198}, {19.424, -3.969}, {23.658, 7.938}, {22.335, 18.785}, {16.514, 23.283}, {8.047000000000001, 23.019}, {-1.478, 19.05}, {-11.267, 11.113}, {-19.734, 2.381}, {-29.259, -8.202}, {-38.519, -19.579}, {-48.044, -31.221}, {-56.511, -43.392}, {-64.449, -55.298}, {-72.386, -66.93899999999999}, {-77.678, -74.61199999999999}, {-79.53, -74.083}, {-71.857, -61.383}, {-62.861, -46.037}, {-52.278, -28.046}, {-44.869, -15.346}, {-38.784, -2.117}, {-35.344, 8.731}, {-36.403, 19.844}, {-42.488, 23.813}, {-52.013, 22.49}, {-60.744, 16.933}, {-68.947, 10.054}, {-76.884, 2.646}, {-93.0112, -12.1707}, {-93.0112, -12.1707}}, smooth = Smooth.Bezier), Ellipse(origin = {40.8208, -37.7602}, fillColor = {161, 0, 4}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-17.8562, -17.8563}, {17.8563, 17.8562}})}), Documentation(info = "<HTML>
 <p>
 Package <b>Modelica&reg;</b> is a <b>standardized</b> and <b>free</b> package
 that is developed together with the Modelica&reg; language from the
 Modelica Association, see
 <a href=\"https://www.Modelica.org\">https://www.Modelica.org</a>.
 It is also called <b>Modelica Standard Library</b>.
 It provides model components in many domains that are based on
 standardized interface definitions. Some typical examples are shown
 in the next figure:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/UsersGuide/ModelicaLibraries.png\">
 </p>
 
 <p>
 For an introduction, have especially a look at:
 </p>
 <ul>
 <li> <a href=\"modelica://Modelica.UsersGuide.Overview\">Overview</a>
   provides an overview of the Modelica Standard Library
   inside the <a href=\"modelica://Modelica.UsersGuide\">User's Guide</a>.</li>
 <li><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes\">Release Notes</a>
  summarizes the changes of new versions of this package.</li>
 <li> <a href=\"modelica://Modelica.UsersGuide.Contact\">Contact</a>
   lists the contributors of the Modelica Standard Library.</li>
 <li> The <b>Examples</b> packages in the various libraries, demonstrate
   how to use the components of the corresponding sublibrary.</li>
 </ul>
 
 <p>
 This version of the Modelica Standard Library consists of
 </p>
 <ul>
 <li><b>1360</b> models and blocks, and</li>
 <li><b>1280</b> functions</li>
 </ul>
 <p>
 that are directly usable (= number of public, non-partial classes). It is fully compliant
 to <a href=\"https://www.modelica.org/documents/ModelicaSpec32Revision2.pdf\">Modelica Specification Version 3.2 Revision 2</a>
 and it has been tested with Modelica tools from different vendors.
 </p>
 
 <p>
 <b>Licensed by the Modelica Association under the Modelica License 2</b><br>
 Copyright &copy; 1998-2013, ABB, AIT, T.&nbsp;B&ouml;drich, DLR, Dassault Syst&egrave;mes AB, Fraunhofer, A.Haumer, ITI, Modelon,
 TU Hamburg-Harburg, Politecnico di Milano, XRG Simulation.
 </p>
 
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 
 <p>
 <b>Modelica&reg;</b> is a registered trademark of the Modelica Association.
 </p>
 </html>"));
end Modelica;

package ModelicaServices "ModelicaServices (Default implementation) - Models and functions used in the Modelica Standard Library requiring a tool specific implementation"
  extends Modelica.Icons.Package;
  constant String target = "Default" "Target of this ModelicaServices implementation";

  package Animation "Models and functions for 3-dim. animation"
    extends Modelica.Icons.Package;

    model Shape "Different visual shapes with variable size; all data have to be set as modifiers (see info layer)"
      extends Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape;
      import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types;
    protected
      Real abs_n_x(final unit = "1") = Modelica.Math.Vectors.length(lengthDirection) annotation(HideResult = true);
      Real e_x[3](each final unit = "1") = noEvent(if abs_n_x < 1e-10 then {1, 0, 0} else lengthDirection / abs_n_x) annotation(HideResult = true);
      Real n_z_aux[3](each final unit = "1") = cross(e_x, widthDirection) annotation(HideResult = true);
      Real e_y[3](each final unit = "1") = noEvent(cross(Modelica.Math.Vectors.normalize(cross(e_x, if n_z_aux * n_z_aux > 1e-06 then widthDirection else if abs(e_x[1]) > 1e-06 then {0, 1, 0} else {1, 0, 0})), e_x)) annotation(HideResult = true);
      output Real Form annotation(HideResult = false);
    public
      output Real rxvisobj[3](each final unit = "1") "x-axis unit vector of shape, resolved in world frame" annotation(HideResult = false);
      output Real ryvisobj[3](each final unit = "1") "y-axis unit vector of shape, resolved in world frame" annotation(HideResult = false);
      output SI.Position rvisobj[3] "position vector from world frame to shape frame, resolved in world frame" annotation(HideResult = false);
    protected
      output SI.Length size[3] "{length,width,height} of shape" annotation(HideResult = false);
      output Real Material annotation(HideResult = false);
      output Real Extra annotation(HideResult = false);
    equation
      Form = (987000 + PackShape(shapeType)) * 1e+20;
      rxvisobj = transpose(R.T) * e_x;
      ryvisobj = transpose(R.T) * e_y;
      rvisobj = r + T.resolve1(R.T, r_shape);
      size = {length, width, height};
      Material = PackMaterial(color[1] / 255.0, color[2] / 255.0, color[3] / 255.0, specularCoefficient);
      Extra = extra;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-150, -110}, {150, -140}}, lineColor = {0, 0, 0}, textString = "default")}), Documentation(info = "<html>
 <p>
 The interface of this model is documented at
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape\">Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape</a>.
 </p>
 
 </html>"));
    end Shape;
  end Animation;

  package Machine
    // Machine dependent constants
    extends Modelica.Icons.Package;
    final constant Real eps = 1e-15 "Biggest number such that 1.0 + eps = 1.0";
    final constant Real small = 1e-60 "Smallest number such that small and -small are representable on the machine";
    final constant Real inf = 9.999999999999999e+59 "Biggest Real number such that inf and -inf are representable on the machine";
    final constant Integer Integer_inf = 1073741823 "Biggest Integer number such that Integer_inf and -Integer_inf are representable on the machine";
    annotation(Documentation(info = "<html>
 <p>
 Package in which processor specific constants are defined that are needed
 by numerical algorithms. Typically these constants are not directly used,
 but indirectly via the alias definition in
 <a href=\"modelica://Modelica.Constants\">Modelica.Constants</a>.
 </p>
 </html>"));
  end Machine;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{143bd91c-ca8b-4f9e-9fc3-b20333a710c6}"), Protection(access = Access.hide), preferredView = "info", version = "3.2.1", versionBuild = 2, versionDate = "2013-08-14", dateModified = "2013-08-14 08:44:41Z", revisionId = "$Id:: package.mo 6931 2013-08-14 11:38:51Z #$", uses(Modelica(version = "3.2.1")), conversion(noneFromVersion = "1.0", noneFromVersion = "1.1", noneFromVersion = "1.2"), Documentation(info = "<html>
 <p>
 This package contains a set of functions and models to be used in the
 Modelica Standard Library that requires a tool specific implementation.
 These are:
 </p>
 
 <ul>
 <li> <a href=\"modelica://ModelicaServices.Animation.Shape\">Shape</a>
      provides a 3-dim. visualization of elementary
      mechanical objects. It is used in
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape\">Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape</a>
      via inheritance.</li>
 
 <li> <a href=\"modelica://ModelicaServices.Animation.Surface\">Surface</a>
      provides a 3-dim. visualization of
      moveable parameterized surface. It is used in
 <a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface\">Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface</a>
      via inheritance.</li>
 
 <li> <a href=\"modelica://ModelicaServices.ExternalReferences.loadResource\">loadResource</a>
      provides a function to return the absolute path name of an URI or a local file name. It is used in
 <a href=\"modelica://Modelica.Utilities.Files.loadResource\">Modelica.Utilities.Files.loadResource</a>
      via inheritance.</li>
 
 <li> <a href=\"modelica://ModelicaServices.Machine\">ModelicaServices.Machine</a>
      provides a package of machine constants. It is used in
 <a href=\"modelica://Modelica.Constants\">Modelica.Constants</a>.</li>
 
 <li> <a href=\"modelica://ModelicaServices.Types.SolverMethod\">Types.SolverMethod</a>
      provides a string defining the integration method to solve differential equations in
      a clocked discretized continuous-time partition (see Modelica 3.3 language specification).
      It is not yet used in the Modelica Standard Library, but in the Modelica_Synchronous library
      that provides convenience blocks for the clock operators of Modelica version &ge; 3.3.</li>
 </ul>
 
 <p>
 This is the default implementation, if no tool-specific implementation is available.
 This ModelicaServices package provides only \"dummy\" models that do nothing.
 </p>
 
 <p>
 <b>Licensed by DLR and Dassault Syst&egrave;mes AB under the Modelica License 2</b><br>
 Copyright &copy; 2009-2013, DLR and Dassault Syst&egrave;mes AB.
 </p>
 
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 
 </html>"));
end ModelicaServices;

function PackMaterial
  input Real r;
  input Real g;
  input Real b;
  input Real spec;
  output Real packedMaterial;
protected
  Integer i1;
  Integer i2;
  Integer i3;
  Integer i4;
algorithm
  i1 := integer(floor(r * 99));
  if i1 < 0 then
    i1 := 0;
  end if;
  if i1 > 99 then
    i1 := 99;
  end if;
  i2 := integer(floor(g * 99));
  if i2 < 0 then
    i2 := 0;
  end if;
  if i2 > 99 then
    i2 := 99;
  end if;
  i3 := integer(floor(b * 99));
  if i3 < 0 then
    i3 := 0;
  end if;
  if i3 > 99 then
    i3 := 99;
  end if;
  i4 := integer(floor(spec * 9));
  if i4 < 0 then
    i4 := 0;
  end if;
  if i4 > 99 then
    i4 := 9;
  end if;
  packedMaterial := ((i1 * 100 + i2) * 100 + i3) * 10 + i4;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{143bd91c-ca8b-4f9e-9fc3-b20333a710c6}"));
end PackMaterial;

function PackShape
  input String shape;
  output Real packedShape;

  function atoi
    input String str;
    output Integer i;
  
    external "C" ;
  end atoi;
algorithm
  if shape == "box" then
    packedShape := 101.0;
  elseif shape == "sphere" then
    packedShape := 102.0;
  elseif shape == "cylinder" then
    packedShape := 103.0;
  elseif shape == "cone" then
    packedShape := 104.0;
  elseif shape == "pipe" then
    packedShape := 105.0;
  elseif shape == "beam" then
    packedShape := 106.0;
  elseif shape == "wirebox" then
    packedShape := 107.0;
  elseif shape == "gearwheel" then
    packedShape := 108.0;
  elseif shape == "pipecylinder" then
    packedShape := 110.0;
  elseif shape == "spring" then
    packedShape := 111.0;
  else
    packedShape := 200 + atoi(shape);
  end if;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{143bd91c-ca8b-4f9e-9fc3-b20333a710c6}"));
end PackShape;

package PowerGrab
  package FullModels
    package FingerTrials
      model MultiFingerContactTrial
        PowerGrab.Components.FingerContactArray middleMostFinger(fDistalClosed = false, mDistalClosed = false, cDistalSideClosed = false, cDistalRegularClosed = false, threshold = threshold, fingerLength = {mFinger * 0.343137255, mFinger * 0.31372549, mFinger * 0.196078431, mFinger * 0.147058824}, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-46.326, 57.203}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
        PowerGrab.Components.FingerContactArray opposable(mDistalClosed = false, cDistalRegularClosed = false, fDistalClosed = false, cDistalSideClosed = false, threshold = threshold, fingerLength = {tFinger * 0.137931034, tFinger * 0.344827586, tFinger * 0.275862069, tFinger * 0.24137931}, mu = mu, delta = delta) if second annotation(Placement(visible = true, transformation(origin = {-21.326, -77.797}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
        inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-162.128, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 90, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, 14.703}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = object_x) annotation(Placement(visible = true, transformation(origin = {-130, -46.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant one(k = 1) annotation(Placement(visible = true, transformation(origin = {-167.617, 93.361}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Constant zero(k = 0) annotation(Placement(visible = true, transformation(origin = {-160, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = 75, n = {0, 0, -1}) if second annotation(Placement(visible = true, transformation(origin = {-97.996, -98.20699999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = -150, n = {0, 1, 0}) if second annotation(Placement(visible = true, transformation(origin = {-66.32599999999999, -70.297}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {0, 0, -0.25}) if third annotation(Placement(visible = true, transformation(origin = {35.347, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation3(n = {0, 0, 1}, angle = 90) if third annotation(Placement(visible = true, transformation(origin = {62.532, 15.357}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, 0, -0.4}) if fourth annotation(Placement(visible = true, transformation(origin = {35.347, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation4(n = {0, 0, 1}, angle = 90) if fourth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -9.643000000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0, 0, 0.25}) if fifth annotation(Placement(visible = true, transformation(origin = {35.347, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation5(n = {0, 0, 1}, angle = 90) if fifth annotation(Placement(visible = true, transformation(origin = {65.34699999999999, -49.643}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        PowerGrab.Components.FingerContactArray middleLeftFinger(fDistalClosed = false, mDistalClosed = false, cDistalRegularClosed = false, cDistalSideClosed = false, fingerLength = {rFinger * 0.319148936, rFinger * 0.319148936, rFinger * 0.212765957, rFinger * 0.14893617}, mu = mu, delta = delta, threshold = threshold) if third annotation(Placement(visible = true, transformation(origin = {98.56100000000001, 25.357}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
        PowerGrab.Components.FingerContactArray leftMostFinger(fDistalClosed = false, mDistalClosed = false, cDistalRegularClosed = false, cDistalSideClosed = false, fingerLength = {lFinger * 0.337837838, lFinger * 0.324324324, lFinger * 0.168918919, lFinger * 0.168918919}, mu = mu, delta = delta, threshold = threshold) if fourth annotation(Placement(visible = true, transformation(origin = {97.998, -14.643}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
        PowerGrab.Components.FingerContactArray middleRight(fDistalClosed = false, mDistalClosed = false, cDistalRegularClosed = false, cDistalSideClosed = false, fingerLength = {iFinger * 0.342857143, iFinger * 0.342857143, iFinger * 0.171428571, iFinger * 0.142857143}, mu = mu, delta = delta, threshold = threshold) if fifth annotation(Placement(visible = true, transformation(origin = {97.998, -56.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
        parameter Boolean second = false;
        parameter Boolean third = false;
        parameter Boolean fourth = false;
        parameter Boolean fifth = false;
        Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel(c = 100, d = 10000, s_unstretched = 0) annotation(Placement(visible = true, transformation(origin = {-101.594, -46.755}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0.01, 0, 0}, r_CM = {0, 0, 0}, m = 0.01, r_0.fixed = true, r_0.start = object_x) annotation(Placement(visible = true, transformation(origin = {-60, -46.755}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation6(n = {0, 1, 0}, angle = -15) annotation(Placement(visible = true, transformation(origin = {-85, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation7(angle = 15, n = {0, 1, 0}) if fourth annotation(Placement(visible = true, transformation(origin = {67.408, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Ramp ramp(duration = 0.01, startTime = 10) annotation(Placement(visible = true, transformation(origin = {-208.139, 72.672}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Ramp ramp1(duration = 0.01, startTime = 5) annotation(Placement(visible = true, transformation(origin = {-207.786, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.Ramp ramp2(duration = 0.01) annotation(Placement(visible = true, transformation(origin = {-210, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation8(angle = 30, n = {1, 0, 0}) if second annotation(Placement(visible = true, transformation(origin = {-65, -95}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Modelica.SIunits.Length mFinger = 2.04;
        parameter Modelica.SIunits.Length iFinger = 1.75;
        parameter Modelica.SIunits.Length rFinger = 1.88;
        parameter Modelica.SIunits.Length lFinger = 1.48;
        parameter Modelica.SIunits.Length tFinger = 1.45;
        parameter Modelica.SIunits.Length threshold = 0.375;
        parameter Real mu = 0.001;
        parameter Modelica.SIunits.Length delta = 0.01;
        parameter Modelica.SIunits.Position object_x[3] = {-0.8, 0, 0};
      equation
        connect(bodyShape.frame_b, middleRight.frame_a4) annotation(Line(visible = true, origin = {7.306, -61.302}, points = {{-57.306, 14.547}, {-54.194, 14.547}, {-54.194, -10.698}, {82.84699999999999, -10.698}, {82.84699999999999, -7.698}}));
        connect(bodyShape.frame_b, opposable.frame_a4) annotation(Line(visible = true, origin = {-40.423, -74.08}, points = {{-9.577, 27.325}, {-6.464, 27.325}, {-6.464, -19.217}, {11.253, -19.217}, {11.253, -16.217}}));
        connect(bodyShape.frame_b, leftMostFinger.frame_a4) annotation(Line(visible = true, origin = {43.436, -40.218}, points = {{-93.43600000000001, -6.537}, {46.718, -6.537}, {46.718, 13.075}}));
        connect(bodyShape.frame_b, middleLeftFinger.frame_a4) annotation(Line(visible = true, origin = {43.811, -26.884}, points = {{-93.81100000000001, -19.871}, {46.906, -19.871}, {46.906, 39.741}}));
        connect(bodyShape.frame_b, middleMostFinger.frame_a4) annotation(Line(visible = true, origin = {-50.423, 6.92}, points = {{0.423, -53.675}, {3.536, -53.675}, {3.536, 34.783}, {-3.747, 34.783}, {-3.747, 37.783}}));
        connect(fixedRotation8.frame_b, opposable.frame_a) annotation(Line(visible = true, origin = {-33.993, -92.994}, points = {{-21.007, -2.006}, {10.503, -2.006}, {10.503, 4.012}}));
        connect(fixedRotation2.frame_b, fixedRotation8.frame_a) annotation(Line(visible = true, origin = {-79.755, -96.60299999999999}, points = {{-8.241, -1.603}, {1.743, -1.603}, {1.743, 1.603}, {4.755, 1.603}}));
        connect(ramp2.y, leftMostFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {15.541, -2.723}, points = {{-214.541, 7.723}, {66.95699999999999, 7.723}, {66.95699999999999, -7.723}, {80.627, -7.723}}, color = {0, 0, 127}));
        connect(ramp1.y, leftMostFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {16.094, 14.777}, points = {{-212.88, 25.223}, {66.404, 25.223}, {66.404, -25.223}, {80.07299999999999, -25.223}}, color = {0, 0, 127}));
        connect(ramp.y, leftMostFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {16.006, 31.113}, points = {{-213.145, 41.559}, {66.492, 41.559}, {66.492, -41.559}, {80.16200000000001, -41.559}}, color = {0, 0, 127}));
        connect(ramp2.y, middleLeftFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {15.963, 17.277}, points = {{-214.963, -12.277}, {67.098, -12.277}, {67.098, 12.277}, {80.768, 12.277}}, color = {0, 0, 127}));
        connect(ramp1.y, middleLeftFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {16.517, 34.777}, points = {{-213.303, 5.223}, {66.544, 5.223}, {66.544, -5.223}, {80.214, -5.223}}, color = {0, 0, 127}));
        connect(ramp.y, middleLeftFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {16.428, 51.113}, points = {{-213.567, 21.559}, {66.633, 21.559}, {66.633, -21.559}, {80.30200000000001, -21.559}}, color = {0, 0, 127}));
        connect(ramp2.y, opposable.anteriorInput[3]) annotation(Line(visible = true, origin = {-73.952, -34.3}, points = {{-125.048, 39.3}, {37.126, 39.3}, {37.126, -39.3}, {50.796, -39.3}}, color = {0, 0, 127}));
        connect(ramp1.y, opposable.anteriorInput[2]) annotation(Line(visible = true, origin = {-73.399, -16.8}, points = {{-123.387, 56.8}, {36.573, 56.8}, {36.573, -56.8}, {50.242, -56.8}}, color = {0, 0, 127}));
        connect(ramp.y, opposable.anteriorInput[1]) annotation(Line(visible = true, origin = {-73.48699999999999, -0.464}, points = {{-123.652, 73.136}, {36.661, 73.136}, {36.661, -73.136}, {50.331, -73.136}}, color = {0, 0, 127}));
        connect(zero.y, opposable.posteriorInput[3]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points = {{-87.571, 61.538}, {24.603, 61.538}, {24.603, -61.538}, {38.365, -61.538}}, color = {0, 0, 127}));
        connect(zero.y, opposable.posteriorInput[2]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points = {{-87.571, 61.538}, {24.603, 61.538}, {24.603, -61.538}, {38.365, -61.538}}, color = {0, 0, 127}));
        connect(zero.y, opposable.posteriorInput[1]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points = {{-87.571, 61.538}, {24.603, 61.538}, {24.603, -61.538}, {38.365, -61.538}}, color = {0, 0, 127}));
        connect(ramp2.y, middleMostFinger.anteriorInput[3]) annotation(Line(visible = true, origin = {-92.702, 33.2}, points = {{-106.298, -28.2}, {30.876, -28.2}, {30.876, 28.2}, {44.546, 28.201}}, color = {0, 0, 127}));
        connect(ramp1.y, middleMostFinger.anteriorInput[2]) annotation(Line(visible = true, origin = {-92.149, 50.7}, points = {{-104.637, -10.7}, {30.323, -10.7}, {30.323, 10.7}, {43.992, 10.7}}, color = {0, 0, 127}));
        connect(ramp.y, middleMostFinger.anteriorInput[1]) annotation(Line(visible = true, origin = {-92.23699999999999, 67.036}, points = {{-104.902, 5.636}, {30.411, 5.636}, {30.411, -5.636}, {44.081, -5.636}}, color = {0, 0, 127}));
        connect(zero.y, middleMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points = {{-68.821, -5.962}, {18.353, -5.962}, {18.353, 5.962}, {32.115, 5.962}}, color = {0, 0, 127}));
        connect(zero.y, middleMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points = {{-68.821, -5.962}, {18.353, -5.962}, {18.353, 5.962}, {32.115, 5.962}}, color = {0, 0, 127}));
        connect(zero.y, middleMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {-80.179, 45.962}, points = {{-68.821, -5.962}, {18.353, -5.962}, {18.353, 5.962}, {32.115, 5.962}}, color = {0, 0, 127}));
        connect(zero.y, opposable.posteriorInput[4]) annotation(Line(visible = true, origin = {-61.429, -21.538}, points = {{-87.571, 61.538}, {24.603, 61.538}, {24.603, -61.538}, {38.365, -61.538}}, color = {0, 0, 127}));
        connect(one.y, opposable.anteriorInput[4]) annotation(Line(visible = true, origin = {-67.643, 37.708}, points = {{-88.974, 55.653}, {44.487, 55.653}, {44.487, -111.307}}, color = {0, 0, 127}));
        connect(one.y, middleMostFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {-82.083, 72.642}, points = {{-74.53400000000001, 20.719}, {20.257, 20.719}, {20.257, -20.719}, {34.02, -20.719}}, color = {0, 0, 127}));
        connect(one.y, middleMostFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {-82.10599999999999, 77.381}, points = {{-74.511, 15.98}, {20.28, 15.98}, {20.28, -15.98}, {33.95, -15.98}}, color = {0, 0, 127}));
        connect(fixedRotation7.frame_b, leftMostFinger.frame_a) annotation(Line(visible = true, origin = {89.69199999999999, -31.943}, points = {{-12.284, -3.057}, {6.142, -3.057}, {6.142, 6.115}}));
        connect(fixedRotation4.frame_b, fixedRotation7.frame_a) annotation(Line(visible = true, origin = {67.91500000000001, -21.762}, points = {{7.432, 12.119}, {13.057, 12.119}, {13.057, 1.119}, {-11.52, 1.119}, {-11.52, -13.238}, {-10.507, -13.238}}));
        connect(fixedRotation3.frame_b, middleLeftFinger.frame_a) annotation(Line(visible = true, origin = {85.128, 12.92}, points = {{-12.596, 2.437}, {-4.971, 2.437}, {-4.971, -3.063}, {11.269, -3.063}, {11.269, 1.252}}));
        connect(fixedRotation6.frame_b, middleMostFinger.frame_a) annotation(Line(visible = true, origin = {-61.346, 45.885}, points = {{-13.654, 4.115}, {-6.029, 4.115}, {-6.029, -4.182}, {12.856, -4.182}, {12.856, 0.133}}));
        connect(fixedRotation.frame_b, fixedRotation6.frame_a) annotation(Line(visible = true, origin = {-74.126, 30.802}, points = {{17.8, -16.099}, {25.425, -16.099}, {25.425, -3.099}, {-23.887, -3.099}, {-23.887, 19.198}, {-20.874, 19.198}}));
        connect(fixedTranslation.frame_b, springDamperParallel.frame_a) annotation(Line(visible = true, origin = {-115.702, -46.752}, points = {{-4.298, 0.002}, {0.095, 0.002}, {0.095, -0.003}, {4.108, -0.003}}));
        connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-144.532, -33.375}, points = {{-7.596, 13.375}, {1.532, 13.375}, {1.532, -13.375}, {4.532, -13.375}}));
        connect(bodyShape.frame_b, middleRight.frame_a1) annotation(Line(visible = true, origin = {50.124, -56.178}, points = {{-100.124, 9.422000000000001}, {32.374, 9.422000000000001}, {32.374, -9.422000000000001}, {35.374, -9.422000000000001}}));
        connect(bodyShape.frame_b, middleRight.frame_a2) annotation(Line(visible = true, origin = {50.124, -51.627}, points = {{-100.124, 4.872}, {32.374, 4.872}, {32.374, -4.873}, {35.374, -4.873}}));
        connect(bodyShape.frame_b, middleRight.frame_a3) annotation(Line(visible = true, origin = {50.163, -47.078}, points = {{-100.163, 0.322}, {32.335, 0.322}, {32.335, -0.322}, {35.494, -0.322}}));
        connect(bodyShape.frame_b, leftMostFinger.frame_a1) annotation(Line(visible = true, origin = {50.124, -35.249}, points = {{-100.124, -11.506}, {32.374, -11.506}, {32.374, 11.506}, {35.374, 11.506}}));
        connect(bodyShape.frame_b, leftMostFinger.frame_a2) annotation(Line(visible = true, origin = {50.124, -30.699}, points = {{-100.124, -16.056}, {32.374, -16.056}, {32.374, 16.056}, {35.374, 16.056}}));
        connect(bodyShape.frame_b, leftMostFinger.frame_a3) annotation(Line(visible = true, origin = {50.163, -26.149}, points = {{-100.163, -20.606}, {32.335, -20.606}, {32.335, 20.606}, {35.494, 20.606}}));
        connect(bodyShape.frame_b, middleLeftFinger.frame_a1) annotation(Line(visible = true, origin = {50.546, -15.249}, points = {{-100.546, -31.506}, {32.515, -31.506}, {32.515, 31.506}, {35.515, 31.506}}));
        connect(bodyShape.frame_b, middleLeftFinger.frame_a2) annotation(Line(visible = true, origin = {50.546, -10.699}, points = {{-100.546, -36.056}, {32.515, -36.056}, {32.515, 36.056}, {35.515, 36.056}}));
        connect(bodyShape.frame_b, middleLeftFinger.frame_a3) annotation(Line(visible = true, origin = {50.586, -6.149}, points = {{-100.586, -40.606}, {32.475, -40.606}, {32.475, 40.606}, {35.635, 40.606}}));
        connect(bodyShape.frame_b, opposable.frame_a1) annotation(Line(visible = true, origin = {-39.369, -66.82599999999999}, points = {{-10.631, 20.071}, {2.543, 20.071}, {2.543, -20.071}, {5.543, -20.071}}));
        connect(bodyShape.frame_b, opposable.frame_a2) annotation(Line(visible = true, origin = {-39.369, -62.276}, points = {{-10.631, 15.521}, {2.543, 15.521}, {2.543, -15.521}, {5.543, -15.521}}));
        connect(bodyShape.frame_b, opposable.frame_a3) annotation(Line(visible = true, origin = {-39.33, -57.726}, points = {{-10.67, 10.971}, {2.504, 10.971}, {2.504, -10.971}, {5.663, -10.971}}));
        connect(bodyShape.frame_b, middleMostFinger.frame_a1) annotation(Line(visible = true, origin = {-54.376, -10.802}, points = {{4.376, -35.953}, {7.488, -35.953}, {7.488, -22.953}, {-7.45, -22.953}, {-7.45, 58.905}, {-4.45, 58.905}}));
        connect(bodyShape.frame_b, middleMostFinger.frame_a2) annotation(Line(visible = true, origin = {-54.376, -7.769}, points = {{4.376, -38.986}, {7.488, -38.986}, {7.488, -25.986}, {-7.45, -25.986}, {-7.45, 64.97199999999999}, {-4.45, 64.97199999999999}}));
        connect(bodyShape.frame_b, middleMostFinger.frame_a3) annotation(Line(visible = true, origin = {-54.349, -4.736}, points = {{4.349, -42.019}, {7.461, -42.019}, {7.461, -29.019}, {-7.477, -29.019}, {-7.477, 71.039}, {-4.318, 71.039}}));
        connect(springDamperParallel.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-80.797, -46.755}, points = {{-10.797, 0}, {10.797, 0}}));
        connect(world.frame_b, fixedTranslation3.frame_a) annotation(Line(visible = true, origin = {-20.522, -34.822}, points = {{-131.606, 14.822}, {42.869, 14.822}, {42.869, -14.822}, {45.869, -14.822}}));
        connect(world.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-20.522, -14.822}, points = {{-131.606, -5.178}, {42.869, -5.178}, {42.869, 5.178}, {45.869, 5.178}}));
        connect(world.frame_b, fixedTranslation1.frame_a) annotation(Line(visible = true, origin = {-20.522, -2.322}, points = {{-131.606, -17.678}, {42.869, -17.678}, {42.869, 17.678}, {45.869, 17.678}}));
        connect(world.frame_b, fixedRotation1.frame_a) annotation(Line(visible = true, origin = {-96.783, -45.148}, points = {{-55.345, 25.148}, {17.444, 25.148}, {17.444, -25.148}, {20.457, -25.148}}));
        connect(world.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {-96.783, -2.649}, points = {{-55.345, -17.352}, {17.444, -17.352}, {17.444, 17.352}, {20.457, 17.352}}));
        connect(fixedRotation5.frame_b, middleRight.frame_a) annotation(Line(visible = true, origin = {85.792, -61.394}, points = {{-10.445, 11.751}, {-4.82, 11.751}, {-4.82, -8.606}, {10.043, -8.606}, {10.043, -6.291}}));
        connect(one.y, middleRight.anteriorInput[3]) annotation(Line(visible = true, origin = {26.137, 20.529}, points = {{-182.754, 72.83199999999999}, {56.361, 72.83199999999999}, {56.361, -72.83199999999999}, {70.03100000000001, -72.83199999999999}}, color = {0, 0, 127}));
        connect(one.y, middleRight.posteriorInput[4]) annotation(Line(visible = true, origin = {26.16, 15.791}, points = {{-182.777, 77.56999999999999}, {56.338, 77.56999999999999}, {56.338, -77.56999999999999}, {70.101, -77.56999999999999}}, color = {0, 0, 127}));
        connect(zero.y, middleRight.posteriorInput[3]) annotation(Line(visible = true, origin = {28.064, -10.89}, points = {{-177.064, 50.89}, {54.434, 50.89}, {54.434, -50.89}, {68.196, -50.89}}, color = {0, 0, 127}));
        connect(zero.y, middleRight.posteriorInput[2]) annotation(Line(visible = true, origin = {28.064, -10.89}, points = {{-177.064, 50.89}, {54.434, 50.89}, {54.434, -50.89}, {68.196, -50.89}}, color = {0, 0, 127}));
        connect(zero.y, middleRight.posteriorInput[1]) annotation(Line(visible = true, origin = {28.064, -10.89}, points = {{-177.064, 50.89}, {54.434, 50.89}, {54.434, -50.89}, {68.196, -50.89}}, color = {0, 0, 127}));
        connect(one.y, middleRight.anteriorInput[4]) annotation(Line(visible = true, origin = {26.137, 20.529}, points = {{-182.754, 72.83199999999999}, {56.361, 72.83199999999999}, {56.361, -72.83199999999999}, {70.03100000000001, -72.83199999999999}}, color = {0, 0, 127}));
        connect(zero.y, middleRight.anteriorInput[2]) annotation(Line(visible = true, origin = {28.041, -6.151}, points = {{-177.041, 46.151}, {54.457, 46.151}, {54.457, -46.151}, {68.127, -46.151}}, color = {0, 0, 127}));
        connect(zero.y, middleRight.anteriorInput[1]) annotation(Line(visible = true, origin = {28.041, -6.151}, points = {{-177.041, 46.151}, {54.457, 46.151}, {54.457, -46.151}, {68.127, -46.151}}, color = {0, 0, 127}));
        connect(one.y, leftMostFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {26.16, 36.719}, points = {{-182.777, 56.642}, {56.338, 56.642}, {56.338, -56.642}, {70.101, -56.642}}, color = {0, 0, 127}));
        connect(zero.y, leftMostFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {28.064, 10.039}, points = {{-177.064, 29.961}, {54.434, 29.961}, {54.434, -29.961}, {68.196, -29.961}}, color = {0, 0, 127}));
        connect(zero.y, leftMostFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {28.064, 10.039}, points = {{-177.064, 29.961}, {54.434, 29.961}, {54.434, -29.961}, {68.196, -29.961}}, color = {0, 0, 127}));
        connect(zero.y, leftMostFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {28.064, 10.039}, points = {{-177.064, 29.961}, {54.434, 29.961}, {54.434, -29.961}, {68.196, -29.961}}, color = {0, 0, 127}));
        connect(zero.y, middleLeftFinger.posteriorInput[3]) annotation(Line(visible = true, origin = {28.486, 30.039}, points = {{-177.486, 9.961}, {54.575, 9.961}, {54.575, -9.961}, {68.337, -9.961}}, color = {0, 0, 127}));
        connect(one.y, leftMostFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {26.137, 41.458}, points = {{-182.754, 51.903}, {56.361, 51.903}, {56.361, -51.903}, {70.03100000000001, -51.903}}, color = {0, 0, 127}));
        connect(one.y, middleLeftFinger.posteriorInput[4]) annotation(Line(visible = true, origin = {26.582, 56.719}, points = {{-183.199, 36.642}, {56.479, 36.642}, {56.479, -36.642}, {70.241, -36.642}}, color = {0, 0, 127}));
        connect(zero.y, middleLeftFinger.posteriorInput[2]) annotation(Line(visible = true, origin = {28.486, 30.039}, points = {{-177.486, 9.961}, {54.575, 9.961}, {54.575, -9.961}, {68.337, -9.961}}, color = {0, 0, 127}));
        connect(zero.y, middleLeftFinger.posteriorInput[1]) annotation(Line(visible = true, origin = {28.486, 30.039}, points = {{-177.486, 9.961}, {54.575, 9.961}, {54.575, -9.961}, {68.337, -9.961}}, color = {0, 0, 127}));
        connect(one.y, middleLeftFinger.anteriorInput[4]) annotation(Line(visible = true, origin = {26.559, 61.458}, points = {{-183.176, 31.903}, {56.502, 31.903}, {56.502, -31.903}, {70.172, -31.903}}, color = {0, 0, 127}));
        connect(fixedRotation5.frame_a, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {50.347, -49.643}, points = {{5, 0}, {-5, 0}}));
        connect(fixedRotation4.frame_a, fixedTranslation2.frame_b) annotation(Line(visible = true, origin = {50.347, -9.643000000000001}, points = {{5, 0}, {-5, 0}}));
        connect(fixedTranslation1.frame_b, fixedRotation3.frame_a) annotation(Line(visible = true, origin = {48.939, 15.357}, points = {{-3.592, 0}, {3.593, 0}}));
        connect(fixedRotation1.frame_b, fixedRotation2.frame_a) annotation(Line(visible = true, origin = {-80.623, -83.934}, points = {{24.297, 13.637}, {31.922, 13.637}, {31.922, 0.637}, {-30.385, 0.637}, {-30.385, -14.273}, {-27.373, -14.273}}));
        annotation(experiment(StopTime = 15.0, Interval = 0.1, Algorithm = "cvodes"), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
      end MultiFingerContactTrial;
      annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end FingerTrials;
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end FullModels;

  package Components
    model RevoluteRestrained
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true, phi.start = phi_0_restrained, n = axisRotation, phi.fixed = stateSelect) annotation(Placement(visible = true, transformation(origin = {37.108, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.ElastoBacklash elastoBacklash(d = d, c = c, b = totalBacklashAngle, phi_rel0 = 0) annotation(Placement(visible = true, transformation(origin = {24.323, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Disc disc(deltaPhi = brakePlacementAngle) annotation(Placement(visible = true, transformation(origin = {-14.096, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Boolean useAxisFlange = false "if = true, then axis flange is enabled (connects to the internal revolute joint's axis flange)";
      parameter Modelica.SIunits.Angle totalBacklashAngle = theta_2 - theta_1;
      parameter Modelica.SIunits.RotationalSpringConstant c = 1000 "Stiffness of the brakes applied on the revolute joint";
      parameter Modelica.SIunits.RotationalDampingConstant d = 1000 "Damping - energy loss - present in the brakes applied on the revolute joint";
      parameter Modelica.SIunits.Angle phi_0_restrained "Initial angle of the revolute joint - must stay within the limits specficied in theta_1 and theta_2";
      parameter Modelica.SIunits.Angle theta_1 "Lower limit for rotation of revolute joint";
      parameter Modelica.SIunits.Angle theta_2 "Upper limit for rotation of revolute joint";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a if useAxisFlange annotation(Placement(visible = true, transformation(origin = {30, 67.069}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {24.971, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b if useAxisFlange annotation(Placement(visible = true, transformation(origin = {-15, 67.02800000000001}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-22.552, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Real axisRotation[3] = {0, 0, 1};
      parameter Boolean stateSelect = true;
      parameter Modelica.SIunits.Angle brakePlacementAngle = (theta_2 + theta_1) / 2;
    equation
      connect(elastoBacklash.flange_b, revolute.axis) annotation(Line(visible = true, origin = {36.18, 20}, points = {{-1.857, 5}, {0.928, 5}, {0.928, -10}}));
      connect(disc.flange_a, revolute.support) annotation(Line(visible = true, origin = {-2.613, 15.779}, points = {{-21.483, 9.221}, {-24.496, 9.221}, {-24.496, -3.779}, {1.517, -3.779}, {1.517, -2.554}, {33.721, -2.554}, {33.721, -5.779}}));
      connect(flange_a, revolute.axis) annotation(Line(visible = true, origin = {33.554, 55.88}, points = {{-3.554, 11.189}, {-3.554, -12.655}, {3.554, -12.655}, {3.554, -45.88}}));
      connect(flange_b, revolute.support) annotation(Line(visible = true, origin = {8.054, 50.869}, points = {{-23.054, 16.159}, {-23.054, -12.644}, {23.054, -12.644}, {23.054, -40.869}}));
      connect(revolute.frame_b, frame_b) annotation(Line(visible = true, origin = {79.604, 0}, points = {{-32.496, 0}, {32.496, 0}}));
      connect(frame_a, revolute.frame_a) annotation(Line(visible = true, origin = {-42.844, 0}, points = {{-69.952, 0}, {69.952, 0}}));
      connect(disc.flange_b, elastoBacklash.flange_a) annotation(Line(visible = true, origin = {5.114, 25}, points = {{-9.209, 0}, {9.209, 0}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, origin = {0, 0.756}, fillColor = {0, 0, 128}, fillPattern = FillPattern.Solid, extent = {{-94.494, -92.982}, {94.494, 92.982}}), Polygon(visible = true, origin = {-0.324, -2.833}, fillColor = {255, 0, 128}, fillPattern = FillPattern.Solid, points = {{-49.676, 24.756}, {-1.188, 60.286}, {47.949, 29.292}, {46.437, -57.167}, {-43.521, -57.167}}), Ellipse(visible = true, origin = {1.339, -2.268}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-21.339, -19.655}, {21.339, 19.655}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end RevoluteRestrained;

    package OldComponents
      model NonLinearSpringDamper
        import Modelica.Mechanics.MultiBody.Types;
        parameter Boolean animation = true "= true, if animation shall be enabled";
        input Modelica.SIunits.Distance width = world.defaultForceWidth "Width of spring" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
        input Modelica.SIunits.Distance coilWidth = width / 10 "Width of spring coil" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
        parameter Integer numberOfWindings = 5 "Number of spring windings" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
        input Types.Color color = Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor "Color of spring" annotation(Dialog(colorSelector = true, tab = "Animation", group = "if animation = true", enable = animation));
        input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient "Reflection of ambient light (= 0: light is completely absorbed)" annotation(Dialog(tab = "Animation", group = "if animation = true", enable = animation));
        extends Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
        extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort(final T = 293.15);
        Modelica.Blocks.Interfaces.RealInput k "Non-linear stiffness of the spring" annotation(Placement(visible = true, transformation(origin = {-100, -70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, -57.521}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
        Modelica.Blocks.Interfaces.RealInput d annotation(Placement(visible = true, transformation(origin = {-100, 74.52500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-80, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -360)));
        parameter Modelica.SIunits.Length s_unstretched = 0 "Unstretched spring length";
        Modelica.Blocks.Interfaces.RealOutput y if fMagDesired annotation(Placement(visible = true, transformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102.141, 57.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Boolean fMagDesired = false;
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
                    </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, extent = {{-52, -100}, {38, -40}}), Text(visible = true, textColor = {0, 0, 255}, extent = {{-150, -150}, {150, -110}}, textString = "%name"), Line(visible = true, points = {{-80, 40}, {-60, 40}, {-45, 10}, {-15, 70}, {15, 10}, {45, 70}, {60, 40}, {80, 40}}), Line(visible = true, points = {{-80, 40}, {-80, -70}}), Line(visible = true, points = {{-80, -70}, {-52, -70}}), Line(visible = true, points = {{-52, -40}, {68, -40}}), Line(visible = true, points = {{-52, -100}, {68, -100}}), Line(visible = true, points = {{38, -70}, {80, -70}}), Line(visible = true, points = {{80, 40}, {80, -70}}), Line(visible = true, points = {{-100, 0}, {-80, 0}}), Line(visible = true, points = {{80, 0}, {100, 0}}), Line(visible = useHeatPort, points = {{-100, -101}, {-100, -80}, {-6, -80}}, color = {191, 0, 0}, pattern = LinePattern.Dot), Text(visible = true, origin = {-70, 65.92100000000001}, extent = {{-8.948, -11.511}, {8.948, 11.511}}, textString = "d"), Text(visible = true, origin = {-110, -60}, extent = {{-13.378, -9.118}, {13.378, 9.118}}, textString = "k")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 32}, {-58, 32}, {-43, 2}, {-13, 62}, {17, 2}, {47, 62}, {62, 32}, {80, 32}}, color = {0, 0, 0}, thickness = 0.5), Line(points = {{-68, 32}, {-68, 97}}, color = {128, 128, 128}), Line(points = {{72, 32}, {72, 97}}, color = {128, 128, 128}), Line(points = {{-68, 92}, {72, 92}}, color = {128, 128, 128}), Polygon(points = {{62, 95}, {72, 92}, {62, 89}, {62, 95}}, lineColor = {128, 128, 128}, fillColor = {128, 128, 128}, fillPattern = FillPattern.Solid), Text(extent = {{-20, 72}, {20, 97}}, lineColor = {0, 0, 255}, textString = "s"), Rectangle(extent = {{-52, -20}, {38, -80}}, lineColor = {0, 0, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-52, -80}, {68, -80}}, color = {0, 0, 0}), Line(points = {{-52, -20}, {68, -20}}, color = {0, 0, 0}), Line(points = {{38, -50}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-80, -50}, {-52, -50}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-80, -50}}, color = {0, 0, 0}), Line(points = {{80, 32}, {80, -50}}, color = {0, 0, 0}), Line(points = {{-100, 0}, {-80, 0}}, color = {0, 0, 0}), Line(points = {{100, 0}, {80, 0}}, color = {0, 0, 0})}));
      end NonLinearSpringDamper;
      annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end OldComponents;

    model FingerMuscleLineArray
      PowerGrab.Components.LineMuscle FDistalLine1(muscleColor = muscleColorF) annotation(Placement(visible = true, transformation(origin = {-56.506, 81.581}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      Modelica.Blocks.Interfaces.RealInput perFDistal annotation(Placement(visible = true, transformation(origin = {-140, 56.637}, extent = {{-11.637, -11.637}, {11.637, 11.637}}, rotation = 0), iconTransformation(origin = {-97.643, 73.91500000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput perMDistal annotation(Placement(visible = true, transformation(origin = {-142.648, 27.648}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -4.762}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput perCDistal annotation(Placement(visible = true, transformation(origin = {-144.38, -25.62}, extent = {{-10.62, -10.62}, {10.62, 10.62}}, rotation = 0), iconTransformation(origin = {-100, -77.172}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      PowerGrab.Components.MagnitudeMuscle FDistalMuscle(f_max = maxFDistal) annotation(Placement(visible = true, transformation(origin = {-105, 56.764}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.MagnitudeMuscle MDistalMuscle(f_max = maxMDistal) annotation(Placement(visible = true, transformation(origin = {-107.95, 28.222}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.MagnitudeMuscle CDistalMuscle(f_max = maxCDistal) annotation(Placement(visible = true, transformation(origin = {-112.183, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1 annotation(Placement(visible = true, transformation(origin = {149, 86}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 97}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2 annotation(Placement(visible = true, transformation(origin = {149, 61}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 63}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3 annotation(Placement(visible = true, transformation(origin = {149, 36}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 30}, extent = {{-13.164, -13.164}, {13.164, 13.164}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4 annotation(Placement(visible = true, transformation(origin = {149, 11}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -2.875}, extent = {{-12.875, -12.875}, {12.875, 12.875}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5 annotation(Placement(visible = true, transformation(origin = {149, -14}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -35.089}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6 annotation(Placement(visible = true, transformation(origin = {149, -39}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -67.505}, extent = {{-12.495, -12.495}, {12.495, 12.495}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7 annotation(Placement(visible = true, transformation(origin = {149, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-13.082, -13.082}, {13.082, 13.082}}, rotation = 0)));
      PowerGrab.Components.LineMuscle FDistalLine2(muscleColor = muscleColorF) annotation(Placement(visible = true, transformation(origin = {-56.967, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle FDistalLine4(muscleColor = muscleColorF) annotation(Placement(visible = true, transformation(origin = {-57.258, -25}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle FDistalLine3(muscleColor = muscleColorF) annotation(Placement(visible = true, transformation(origin = {-57.344, 17.178}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle MDistalLine2(muscleColor = muscleColorM) annotation(Placement(visible = true, transformation(origin = {-18.167, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle MDistalLine1(muscleColor = muscleColorM) annotation(Placement(visible = true, transformation(origin = {-20, 65}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle MDistalLine3(muscleColor = muscleColorM) annotation(Placement(visible = true, transformation(origin = {-20, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle CDistalLine2(muscleColor = muscleColorC) annotation(Placement(visible = true, transformation(origin = {20, -16.636}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      PowerGrab.Components.LineMuscle CDistalLine1(muscleColor = muscleColorC) annotation(Placement(visible = true, transformation(origin = {20, 35}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
      parameter Modelica.SIunits.Force maxFDistal;
      parameter Modelica.SIunits.Force maxMDistal;
      parameter Modelica.SIunits.Force maxCDistal;
      parameter Integer muscleColorF[3] = {255, 0, 0};
      parameter Integer muscleColorM[3] = {155, 0, 0};
      parameter Integer muscleColorC[3] = {75, 0, 0};
    equation
      connect(CDistalLine2.frame_a, frame_7) annotation(Line(visible = true, origin = {63.267, -51.545}, points = {{-42.867, 24.909}, {-42.867, -12.455}, {85.733, -12.455}}));
      connect(CDistalLine2.frame_b, frame_6) annotation(Line(visible = true, origin = {89.95999999999999, -18.292}, points = {{-69.56, 11.656}, {-69.56, 14.881}, {40.04, 14.881}, {40.04, -20.708}, {59.04, -20.708}}));
      connect(CDistalLine1.frame_a, frame_6) annotation(Line(visible = true, origin = {63.267, -17.667}, points = {{-42.867, 42.667}, {-42.867, -21.333}, {85.733, -21.333}}));
      connect(CDistalLine1.frame_b, frame_5) annotation(Line(visible = true, origin = {89.95999999999999, 22.69}, points = {{-69.56, 22.31}, {-69.56, 25.535}, {40.04, 25.535}, {40.04, -36.69}, {59.04, -36.69}}));
      connect(MDistalLine3.frame_a, frame_7) annotation(Line(visible = true, origin = {36.6, -49.333}, points = {{-56.2, 29.333}, {-56.2, -14.667}, {112.4, -14.667}}));
      connect(MDistalLine3.frame_b, frame_6) annotation(Line(visible = true, origin = {73.95999999999999, -14.31}, points = {{-93.56, 14.31}, {-93.56, 17.535}, {56.04, 17.535}, {56.04, -24.69}, {75.04000000000001, -24.69}}, color = {95, 95, 95}));
      connect(MDistalLine2.frame_a, frame_6) annotation(Line(visible = true, origin = {37.822, -19.333}, points = {{-55.589, 39.333}, {-55.589, -19.667}, {111.178, -19.667}}));
      connect(MDistalLine2.frame_b, frame_4) annotation(Line(visible = true, origin = {74.693, 29.69}, points = {{-92.45999999999999, 10.31}, {-92.45999999999999, 13.535}, {55.307, 13.535}, {55.307, -18.69}, {74.307, -18.69}}));
      connect(MDistalLine1.frame_a, frame_4) annotation(Line(visible = true, origin = {36.6, 25.667}, points = {{-56.2, 29.333}, {-56.2, -14.667}, {112.4, -14.667}}));
      connect(MDistalLine1.frame_b, frame_3) annotation(Line(visible = true, origin = {73.95999999999999, 60.69}, points = {{-93.56, 14.31}, {-93.56, 17.535}, {56.04, 17.535}, {56.04, -24.69}, {75.04000000000001, -24.69}}));
      connect(FDistalLine4.frame_a, frame_7) annotation(Line(visible = true, origin = {11.761, -54.333}, points = {{-68.619, 19.333}, {-68.619, -9.667}, {137.239, -9.667}}));
      connect(FDistalLine4.frame_b, frame_6) annotation(Line(visible = true, origin = {59.057, -23.31}, points = {{-115.915, 8.31}, {-115.915, 11.535}, {70.943, 11.535}, {70.943, -15.69}, {89.943, -15.69}}));
      connect(FDistalLine3.frame_a, frame_6) annotation(Line(visible = true, origin = {11.704, -23.607}, points = {{-68.648, 30.785}, {-68.648, -15.393}, {137.296, -15.393}}));
      connect(FDistalLine3.frame_b, frame_4) annotation(Line(visible = true, origin = {59.022, 21.997}, points = {{-115.966, 5.181}, {-115.967, 8.406000000000001}, {70.97799999999999, 8.406000000000001}, {70.97799999999999, -10.997}, {89.97799999999999, -10.997}}));
      connect(FDistalLine2.frame_a, frame_4) annotation(Line(visible = true, origin = {11.956, 20.667}, points = {{-68.523, 19.333}, {-68.52200000000001, -9.667}, {137.044, -9.667}}));
      connect(FDistalLine2.frame_b, frame_2) annotation(Line(visible = true, origin = {59.173, 61.69}, points = {{-115.74, -1.69}, {-115.74, 1.535}, {70.827, 1.535}, {70.827, -0.6899999999999999}, {89.827, -0.6899999999999999}}));
      connect(FDistalLine1.frame_a, frame_2) annotation(Line(visible = true, origin = {12.263, 64.527}, points = {{-68.369, 7.054}, {-68.369, -3.527}, {136.737, -3.527}}));
      connect(FDistalLine1.frame_b, frame_1) annotation(Line(visible = true, origin = {59.358, 90.63800000000001}, points = {{-115.464, 0.9429999999999999}, {-115.463, 4.167}, {70.642, 4.167}, {70.642, -4.638}, {89.642, -4.638}}));
      connect(CDistalMuscle.fMagnitude, CDistalLine1.muscleMagnitude) annotation(Line(visible = true, origin = {-19.274, 4.705}, points = {{-82.224, -30.295}, {26.274, -30.295}, {26.274, 30.295}, {29.676, 30.295}}, color = {0, 0, 127}));
      connect(CDistalMuscle.fMagnitude, CDistalLine2.muscleMagnitude) annotation(Line(visible = true, origin = {-19.274, -21.113}, points = {{-82.224, -4.477}, {26.274, -4.477}, {26.274, 4.477}, {29.676, 4.477}}, color = {0, 0, 127}));
      connect(MDistalMuscle.fMagnitude, MDistalLine3.muscleMagnitude) annotation(Line(visible = true, origin = {-48.216, 8.816000000000001}, points = {{-49.049, 18.816}, {15.216, 18.816}, {15.216, -18.816}, {18.617, -18.816}}, color = {0, 0, 127}));
      connect(MDistalMuscle.fMagnitude, MDistalLine2.muscleMagnitude) annotation(Line(visible = true, origin = {-46.841, 28.816}, points = {{-50.424, -1.184}, {15.674, -1.184}, {15.674, 1.184}, {19.076, 1.184}}, color = {0, 0, 127}));
      connect(MDistalMuscle.fMagnitude, MDistalLine1.muscleMagnitude) annotation(Line(visible = true, origin = {-48.216, 46.316}, points = {{-49.049, -18.684}, {15.216, -18.684}, {15.216, 18.684}, {18.617, 18.684}}, color = {0, 0, 127}));
      connect(FDistalMuscle.fMagnitude, FDistalLine4.muscleMagnitude) annotation(Line(visible = true, origin = {-75.422, 15.587}, points = {{-18.893, 40.587}, {5.164, 40.587}, {5.164, -40.587}, {8.565, -40.587}}, color = {0, 0, 127}));
      connect(FDistalMuscle.fMagnitude, FDistalLine3.muscleMagnitude) annotation(Line(visible = true, origin = {-75.48699999999999, 36.675}, points = {{-18.828, 19.498}, {5.142, 19.498}, {5.142, -19.498}, {8.544, -19.498}}, color = {0, 0, 127}));
      connect(FDistalMuscle.fMagnitude, FDistalLine2.muscleMagnitude) annotation(Line(visible = true, origin = {-75.203, 53.087}, points = {{-19.112, 3.087}, {5.237, 3.087}, {5.237, -3.087}, {8.638, -3.087}}, color = {0, 0, 127}));
      connect(FDistalMuscle.fMagnitude, FDistalLine1.muscleMagnitude) annotation(Line(visible = true, origin = {-74.858, 68.877}, points = {{-19.457, -12.704}, {5.352, -12.704}, {5.352, 12.704}, {8.753, 12.704}}, color = {0, 0, 127}));
      connect(perMDistal, MDistalMuscle.forcePValue) annotation(Line(visible = true, origin = {-125.407, 27.651}, points = {{-17.241, -0.003}, {4.232, -0.003}, {4.232, 0.003}, {8.776, 0.002}}, color = {0, 0, 127}));
      connect(perCDistal, CDistalMuscle.forcePValue) annotation(Line(visible = true, origin = {-129.015, -25.594}, points = {{-15.365, -0.026}, {3.607, -0.026}, {3.607, 0.026}, {8.151, 0.025}}, color = {0, 0, 127}));
      connect(perFDistal, FDistalMuscle.forcePValue) annotation(Line(visible = true, origin = {-122.533, 56.416}, points = {{-17.467, 0.221}, {4.308, 0.221}, {4.308, -0.221}, {8.852, -0.221}}, color = {0, 0, 127}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {85.672, 96.699}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "1"), Text(visible = true, origin = {85.483, 58.976}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "2"), Text(visible = true, origin = {84.663, 30}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "3"), Text(visible = true, origin = {85.73399999999999, -34.066}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "5"), Text(visible = true, origin = {85.544, -67.265}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "6"), Text(visible = true, origin = {85.355, -96.684}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "7"), Text(visible = true, origin = {85.544, -4.899}, extent = {{-8.821999999999999, -11.024}, {8.821999999999999, 11.024}}, textString = "4"), Polygon(visible = true, origin = {-26.359, -65.02200000000001}, fillColor = {230, 230, 230}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-23.641, -11.833}, {-0.729, -24.978}, {23.839, 13.366}, {0.531, 23.445}}), Polygon(visible = true, origin = {-8.209, -22.521}, fillColor = {230, 230, 230}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-17.619, -19.056}, {6.319, -29.766}, {18.209, 24.411}, {-6.91, 24.411}}), Polygon(visible = true, origin = {-2.56, 28.978}, fillColor = {230, 230, 230}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-12.56, -26.458}, {12.56, -26.458}, {12.56, 26.458}, {-12.56, 26.458}}), Polygon(visible = true, origin = {-9.390000000000001, 73.033}, fillColor = {230, 230, 230}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-6.359, -16.967}, {21.359, -16.967}, {5.61, 16.967}, {-20.61, 16.967}}), Rectangle(visible = true, origin = {4.41, 74.018}, fillColor = {255, 102, 102}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-17.564, -75.982}, fillColor = {128, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}}), Rectangle(visible = true, origin = {-10, -4.018}, fillColor = {255, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-87.56399999999999, -5.982}, {87.56399999999999, 5.982}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end FingerMuscleLineArray;

    model FingerLoad
      Modelica.Blocks.Interfaces.RealInput force annotation(Placement(visible = true, transformation(origin = {-135, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 66.667}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput theta1 annotation(Placement(visible = true, transformation(origin = {-135, 7.056}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 6.72}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput theta2 annotation(Placement(visible = true, transformation(origin = {-136.995, -62.324}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-92.253, -59.356}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput tau1 annotation(Placement(visible = true, transformation(origin = {125, 82.616}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.31399999999999, 48.132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput tau2 annotation(Placement(visible = true, transformation(origin = {125, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86.91200000000001, 13.127}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput tau3 annotation(Placement(visible = true, transformation(origin = {125, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88.438, -22.119}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Length r1 "Length of the moment arm about the furthest phalange joint";
      parameter Modelica.SIunits.Length r2 "Length of the moment arm about the middle phalange joint";
      parameter Modelica.SIunits.Length r3 "Length of the moment arm about the closest phalange joint";
    equation
      tau1 = force * r1;
      tau2 = force * r2 * Modelica.Math.cos(theta1);
      tau3 = force * r3 * Modelica.Math.cos(theta1 + theta2);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, origin = {-0.315, 1.218}, fillColor = {128, 0, 128}, fillPattern = FillPattern.Solid, extent = {{-86.62, -88.782}, {86.62, 88.782}}), Text(visible = true, origin = {-94.494, 97.32899999999999}, extent = {{-29.608, -10.394}, {29.608, 10.394}}, textString = "force"), Text(visible = true, origin = {-96.104, 36.853}, extent = {{-33.896, -9.763999999999999}, {33.896, 9.763999999999999}}, textString = "theta1"), Text(visible = true, origin = {-95.828, -30}, extent = {{-24.172, -10}, {24.172, 10}}, textString = "theta2"), Text(visible = true, origin = {81.813, 64.608}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau1"), Text(visible = true, origin = {81.813, 30}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau2"), Text(visible = true, origin = {81.813, -2.718}, extent = {{-18.187, -7.282}, {18.187, 7.282}}, textString = "tau3")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end FingerLoad;

    model BoneJointComponent
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true, r_0.fixed = false) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone, r_0.start = {0, 0.08, 0}, r_0.fixed = false, color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true, phi.fixed = false, phi.start = 1.5) annotation(Placement(visible = true, transformation(origin = {-25, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = phi_0_restrained, theta_1 = 0, theta_2 = 1.6, useAxisFlange = true, stateSelect = stateSelect) annotation(Placement(visible = true, transformation(origin = {-10, -12.083}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(animation = false, n = {0, 0, 1}, phi.start = 1.5, useAxisFlange = true, phi.fixed = false) annotation(Placement(visible = true, transformation(origin = {-32.475, -30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], -diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, -46.567}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-25, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper1(d = 200, phi_rel.fixed = false) annotation(Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position1(useSupport = false) annotation(Placement(visible = true, transformation(origin = {92.78100000000001, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add(k1 = 0.5, k2 = -1) annotation(Placement(visible = true, transformation(origin = {85, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const1(k = 4.71) annotation(Placement(visible = true, transformation(origin = {47.978, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
      parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
      parameter Modelica.SIunits.Angle phi_0_restrained;
      Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -27.854}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {0, -50}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      parameter Boolean torD = true "True if direct torque on joint is desired";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.01, 85.714}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -74}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.01, 4.762}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position2 if closedLoop annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput thetaControl if closedLoop annotation(Placement(visible = true, transformation(origin = {155, 35}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-0, 30}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor1 annotation(Placement(visible = true, transformation(origin = {-77.78700000000001, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {-138.112, -33.337}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      parameter Boolean stateSelect = true;
      parameter Boolean closedLoop = true;
    equation
      connect(relAngleSensor1.phi_rel, y) annotation(Line(visible = true, origin = {-108.782, -36.135}, points = {{30.995, 0.135}, {30.995, -2.865}, {-16.33, -2.865}, {-16.33, 2.797}, {-29.33, 2.797}}, color = {0, 0, 127}));
      connect(relAngleSensor1.flange_b, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {-42.474, -10.05}, points = {{-25.314, -14.95}, {-22.314, -14.95}, {-22.314, 10.967}, {34.971, 10.967}, {34.971, 7.967}}));
      connect(relAngleSensor1.flange_a, revoluteRestrained.flange_b) annotation(Line(visible = true, origin = {-58.775, -10.05}, points = {{-29.013, -14.95}, {-32.013, -14.95}, {-32.013, 10.967}, {46.519, 10.967}, {46.519, 7.967}}));
      connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
      connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
      connect(thetaControl, position2.phi_ref) annotation(Line(visible = true, origin = {148.02, 21.667}, points = {{6.98, 13.333}, {6.98, -6.667}, {-13.96, -6.667}}, color = {0, 0, 127}));
      connect(position2.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {32.351, 9.305999999999999}, points = {{79.709, 5.694}, {-39.854, 5.694}, {-39.854, -11.389}}));
      connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-10.096, 61.667}, points = {{2.452, 43.333}, {2.452, -21.667}, {-4.904, -21.667}}, color = {95, 95, 95}));
      connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.485, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.485, 27.5}}));
      connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
      connect(frame_resolve1, fixedTranslation4.frame_b) annotation(Line(visible = true, origin = {1.245, -74.027}, points = {{-1.245, -30.973}, {-1.245, -11.973}, {1.868, -11.973}, {1.868, 27.46}, {-1.245, 27.46}}, color = {95, 95, 95}));
      connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -23.927}, points = {{22.094, -3.927}, {-6.364, -3.927}, {-6.364, 3.927}, {-9.364000000000001, 3.927}}, color = {0, 0, 127}));
      connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {55.799, -8.050000000000001}, points = {{44.201, -11.95}, {41.201, -11.95}, {41.201, 8.967000000000001}, {-63.302, 8.967000000000001}, {-63.302, 5.967}}));
      connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {13.616, 30}, points = {{39.037, 5}, {-0.21, 5}, {-0.21, -5}, {-38.616, -5}}));
      connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
      connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
      connect(add.y, position1.phi_ref) annotation(Line(visible = true, origin = {104.085, -65}, points = {{-8.085000000000001, 25}, {3.695, 25}, {3.695, -25}, {0.695, -25}}, color = {0, 0, 127}));
      connect(const1.y, add.u2) annotation(Line(visible = true, origin = {67.994, -55.5}, points = {{-9.016999999999999, -9.5}, {2.006, -9.5}, {2.006, 9.5}, {5.006, 9.5}}, color = {0, 0, 127}));
      connect(add.u1, relAngleSensor.phi_rel) annotation(Line(visible = true, origin = {78.59999999999999, -15.4}, points = {{-5.6, -18.6}, {-8.6, -18.6}, {-8.6, 11.4}, {11.4, 11.4}, {11.4, 14.4}}, color = {0, 0, 127}));
      connect(position1.flange, revolute2.axis) annotation(Line(visible = true, origin = {5.944, -73.333}, points = {{76.837, -16.667}, {-38.419, -16.667}, {-38.419, 33.333}}));
      connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {42.428, 1.9}, points = {{-49.931, -3.983}, {-49.931, -0.983}, {-39.428, -0.983}, {-39.428, -5.125}, {60.572, -5.125}, {60.572, 8.1}, {57.572, 8.1}}));
      connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {18.497, 5.972}, points = {{-30.752, -8.055}, {-30.752, 4.028}, {61.503, 4.028}}));
      connect(damper1.flange_a, revolute2.support) annotation(Line(visible = true, origin = {-46.158, -43.333}, points = {{-3.842, -6.667}, {-3.842, 3.333}, {7.683, 3.333}}));
      connect(damper1.flange_b, revolute2.axis) annotation(Line(visible = true, origin = {-30.825, -43.333}, points = {{0.825, -6.667}, {0.825, 3.333}, {-1.65, 3.333}}));
      connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-30, 31.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-46.064, 27.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-24.996, 27.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(revolute2.frame_b, fixedTranslation4.frame_a) annotation(Line(visible = true, origin = {-21.119, -38.284}, points = {{-1.356, 8.284000000000001}, {0.119, 8.284000000000001}, {0.119, -8.282999999999999}, {1.119, -8.282999999999999}}));
      connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
      connect(IFingerBone.frame_b, revolute2.frame_a) annotation(Line(visible = true, origin = {-43.738, -14.333}, points = {{-1.262, 14.333}, {1.75, 14.333}, {1.75, 1.333}, {-1.75, 1.333}, {-1.75, -15.667}, {1.263, -15.667}}));
      connect(revoluteRestrained.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-36.643, -6.042}, points = {{19.047, -6.042}, {-5.345, -6.042}, {-5.345, 6.042}, {-8.356999999999999, 6.042}}));
      connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {5.887, -6.042}, points = {{14.113, 6.042}, {-2.887, 6.042}, {-2.887, -6.042}, {-8.337999999999999, -6.042}}));
      connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
      connect(IFingerBone.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-39.006, 7.5}, points = {{-5.994, -7.5}, {0.994, -7.5}, {0.994, 7.5}, {4.006, 7.5}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end BoneJointComponent;

    model MagnitudeMuscle
      Modelica.Blocks.Interfaces.RealInput forcePValue "Percent value of total force" annotation(Placement(visible = true, transformation(origin = {-141.972, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-86.807, -5.685}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      parameter Modelica.SIunits.Force f_max "Maximum value for anterior muscle force";
      Modelica.Blocks.Interfaces.RealOutput fMagnitude annotation(Placement(visible = true, transformation(origin = {31.75, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106.85, -5.908}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    equation
      fMagnitude = forcePValue * f_max;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {0, -2.139}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end MagnitudeMuscle;

    model LineMuscle
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 57.434}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {141.972, 56.789}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -4}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.LineForceWithMass LineMuscle(lineShapeColor = muscleColor) annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.Translational.Sources.Force forceMagnitude(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-80, -17.356}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.Damper damper(animation = false, d = 2000) annotation(Placement(visible = true, transformation(origin = {0, 61.626}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput muscleMagnitude "Percent value of total anterior force" annotation(Placement(visible = true, transformation(origin = {-145, -17.63}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 95.98699999999999}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
      parameter Integer muscleColor[3] = {155, 0, 0};
    equation
      connect(forceMagnitude.flange, LineMuscle.flange_a) annotation(Line(visible = true, origin = {-27.333, -4.904}, points = {{-42.667, -12.452}, {21.333, -12.452}, {21.333, 24.904}}, color = {0, 127, 0}));
      connect(muscleMagnitude, forceMagnitude.f) annotation(Line(visible = true, origin = {-106.75, -17.493}, points = {{-38.25, -0.137}, {11.75, -0.137}, {11.75, 0.137}, {14.75, 0.137}}, color = {0, 0, 127}));
      connect(LineMuscle.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 43.395}, points = {{-89.479, -13.395}, {23.493, -13.395}, {23.493, 13.395}, {42.493, 13.395}}));
      connect(damper.frame_a, frame_a) annotation(Line(visible = true, origin = {-94.25, 59.53}, points = {{84.25, 2.096}, {-21.75, 2.096}, {-21.75, -2.096}, {-40.75, -2.096}}));
      connect(damper.frame_b, frame_b) annotation(Line(visible = true, origin = {99.479, 59.208}, points = {{-89.479, 2.418}, {23.493, 2.419}, {23.493, -2.419}, {42.493, -2.419}}));
      connect(frame_a, LineMuscle.frame_a) annotation(Line(visible = true, origin = {-44.256, 43.717}, points = {{-90.744, 13.717}, {28.244, 13.717}, {28.244, -13.717}, {34.256, -13.717}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {0, -2.139}, fillColor = {128, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 69.303}, {0, 32.139}, {100, 72.139}, {100, -67.861}, {0, -37.861}, {-100, -67.861}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end LineMuscle;

    model FingerMultipleRevoluteArray
      PowerGrab.Components.BoneJointComponent boneMDistal(r_IFingerBone = r_IboneMDistal, r_shape_IFingerBone = r_shape_IboneMDistal, diameterIFingerBone = diameterIboneMDistal, diameterOFingerBone = diameterOboneMDistal, r_OFingerBone = r_OboneMDistal, r_shape_OFingerBone = r_shape_OboneMDistal, phi_0_restrained = phi_0_boneMDistal, stateSelect = true, closedLoop = mDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {5.256, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.BoneJointComponent boneFDistal(r_IFingerBone = r_IboneFDistal, r_shape_IFingerBone = r_shape_IboneFDistal, diameterIFingerBone = diameterIboneFDistal, diameterOFingerBone = diameterOboneFDistal, r_OFingerBone = r_OboneFDistal, r_shape_OFingerBone = r_shape_OboneFDistal, phi_0_restrained = phi_0_boneFDistal, closedLoop = fDistalClosed, torD = dirTorque) annotation(Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_1P annotation(Placement(visible = true, transformation(origin = {120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.205, 120.205}, extent = {{-10.205, -10.205}, {10.205, 10.205}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_1A annotation(Placement(visible = true, transformation(origin = {120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.709, 119.709}, extent = {{-10.291, -10.291}, {10.291, 10.291}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_2A annotation(Placement(visible = true, transformation(origin = {80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_3A annotation(Placement(visible = true, transformation(origin = {40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.764, 39.764}, extent = {{-10.236, -10.236}, {10.236, 10.236}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_4A annotation(Placement(visible = true, transformation(origin = {0, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-120.006, -0.006}, extent = {{-10.006, -10.006}, {10.006, 10.006}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_5A annotation(Placement(visible = true, transformation(origin = {-40, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.976, -39.976}, extent = {{-9.976000000000001, -9.976000000000001}, {9.976000000000001, 9.976000000000001}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_6A annotation(Placement(visible = true, transformation(origin = {-80, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.725, -79.72499999999999}, extent = {{-9.725, -9.725}, {9.725, 9.725}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_7A annotation(Placement(visible = true, transformation(origin = {-120, 104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {-119.575, -119.575}, extent = {{-9.574999999999999, -9.574999999999999}, {9.574999999999999, 9.574999999999999}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_2P annotation(Placement(visible = true, transformation(origin = {80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120.223, 80}, extent = {{-9.776999999999999, -9.776999999999999}, {9.776999999999999, 9.776999999999999}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_3P annotation(Placement(visible = true, transformation(origin = {40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.819, 39.819}, extent = {{-10.181, -10.181}, {10.181, 10.181}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_4P annotation(Placement(visible = true, transformation(origin = {0, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.401, -0.599}, extent = {{-10.599, -10.599}, {10.599, 10.599}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_5P annotation(Placement(visible = true, transformation(origin = {-40, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.869, -40.131}, extent = {{-9.869, -9.869}, {9.869, 9.869}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_6P annotation(Placement(visible = true, transformation(origin = {-80, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {120, -80.37}, extent = {{-10.37, -10.37}, {10.37, 10.37}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_7P annotation(Placement(visible = true, transformation(origin = {-120, -104}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {119.582, -120}, extent = {{-10.418, -10.418}, {10.418, 10.418}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation anteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.882, 41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation posteriorBase(r = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-127.948, -41.75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput thetaCDistal if cDistalRegularClosed annotation(Placement(visible = true, transformation(origin = {-63.718, 26.436}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-66.84999999999999, 125.992}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput thetaMDistal if mDistalClosed annotation(Placement(visible = true, transformation(origin = {25.215, 26.054}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {-10, 126.471}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput thetaFDistal if fDistalClosed annotation(Placement(visible = true, transformation(origin = {99.599, 26.473}, extent = {{10.401, -10.401}, {-10.401, 10.401}}, rotation = 0), iconTransformation(origin = {50, 126.321}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-147.926, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-20, -110}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      parameter Modelica.SIunits.Position r_IboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IboneFDistal[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIboneFDistal = 0.02;
      parameter Modelica.SIunits.Position r_OboneFDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OboneFDistal[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOboneFDistal = 0.02;
      parameter Modelica.SIunits.Angle phi_0_boneFDistal;
      parameter Modelica.SIunits.Position r_IboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IboneMDistal[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIboneMDistal = 0.02;
      parameter Modelica.SIunits.Position r_OboneMDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OboneMDistal[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOboneMDistal = 0.02;
      parameter Modelica.SIunits.Angle phi_0_boneMDistal;
      parameter Modelica.SIunits.Position r_IboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IboneCDistal[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIboneCDistal = 0.02;
      parameter Modelica.SIunits.Position r_OboneCDistal[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OboneCDistal[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOboneCDistal = 0.02;
      parameter Modelica.SIunits.Angle phi_0_boneCDistal;
      parameter Modelica.SIunits.Position baseAnterior[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position basePosterior[3] = {0, 0, 0};
      parameter Modelica.SIunits.Angle phi_0_doubleJoint;
      parameter Boolean fDistalClosed = true "If true, the far distal phalange will be in a constrained mode";
      parameter Boolean mDistalClosed = true "If true, the middle distal phalange will be in a constrained mode";
      parameter Boolean cDistalRegularClosed = true "If true, the close distal phalange's regular joint will be in a constrained mode";
      parameter Boolean cDistalSideClosed = true "If true, the close distal phalange's side joint will be in a constrained mode";
      Modelica.Blocks.Interfaces.RealInput loadForce if dirTorque annotation(Placement(visible = true, transformation(origin = {-101.6, 64.464}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {27.454, -121.759}, extent = {{-20, -20}, {20, 20}}, rotation = -270)));
      PowerGrab.Components.FingerLoad fingerLoad(r2 = r_OboneMDistal[1], r3 = r_OboneCDistal[1], r1 = r_OboneFDistal[1] / 2) if dirTorque annotation(Placement(visible = true, transformation(origin = {-52.096, 71.024}, extent = {{-13.29, -13.29}, {13.29, 13.29}}, rotation = 0)));
      parameter Boolean dirTorque = true "True if direct torque upon joint is desired";
      Modelica.Blocks.Interfaces.RealInput sideTheta if cDistalSideClosed "secondary revolute joint - sideways swaying" annotation(Placement(visible = true, transformation(origin = {-20, -32.963}, extent = {{-12.963, -12.963}, {12.963, 12.963}}, rotation = 0), iconTransformation(origin = {-27.35, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      PowerGrab.Components.BoneDoubleJointComponent boneCDistal(phi_0_doubleJoint = phi_0_doubleJoint, closedDoubleJoint = cDistalSideClosed, closedRegularJoint = cDistalRegularClosed, torD = dirTorque, r_IFingerBone = r_IboneCDistal, r_shape_IFingerBone = r_shape_IboneCDistal, diameterIFingerBone = diameterIboneCDistal, r_OFingerBone = r_OboneCDistal, r_shape_OFingerBone = r_shape_OboneCDistal, diameterOFingerBone = diameterOboneCDistal, phi_0_regularJoint = phi_0_boneCDistal) annotation(Placement(visible = true, transformation(origin = {-86.959, -2.646}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput sideAnterior annotation(Placement(visible = true, transformation(origin = {-123.296, 21.696}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.454, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput sidePosterior annotation(Placement(visible = true, transformation(origin = {-123.175, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-24.209, -47.974}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    equation
      connect(sideTheta, boneCDistal.doubleJointControl) annotation(Line(visible = true, origin = {-53.457, -5.883}, points = {{33.457, -27.08}, {17.494, -27.08}, {17.494, 20.462}, {-34.223, 20.462}, {-34.223, 13.237}}, color = {0, 0, 127}));
      connect(sidePosterior, boneCDistal.posteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.437, -1.291}, points = {{-25.738, -18.709}, {-4.288, -18.709}, {-4.288, 13.87}, {17.157, 13.87}, {17.157, 9.678000000000001}}, color = {0, 0, 127}));
      connect(sideAnterior, boneCDistal.anteriorDoubleJointMuscle) annotation(Line(visible = true, origin = {-97.197, 17.302}, points = {{-26.098, 4.394}, {13.049, 4.394}, {13.049, -8.788}}, color = {0, 0, 127}));
      connect(boneMDistal.frame_a, boneCDistal.frame_b2) annotation(Line(visible = true, origin = {-56.449, -1.323}, points = {{51.705, 1.323}, {-15.717, 1.323}, {-15.717, -1.323}, {-20.271, -1.323}}));
      connect(boneCDistal.frame_b1, frame_5P) annotation(Line(visible = true, origin = {-52.186, -42.431}, points = {{-24.373, 30.785}, {12.186, 30.785}, {12.186, -61.569}}));
      connect(boneCDistal.frame_b, frame_5A) annotation(Line(visible = true, origin = {-52.26, 38.903}, points = {{-24.519, -32.549}, {12.26, -32.549}, {12.26, 65.09699999999999}}));
      connect(fingerLoad.tau3, boneCDistal.LoadTorque) annotation(Line(visible = true, origin = {-58.959, 34.732}, points = {{18.616, 33.352}, {23.153, 33.352}, {23.153, -20.153}, {-32.461, -20.153}, {-32.461, -26.398}}, color = {0, 0, 127}));
      connect(thetaCDistal, boneCDistal.thetaControl) annotation(Line(visible = true, origin = {-84.545, 20.409}, points = {{20.827, 6.027}, {-10.414, 6.027}, {-10.414, -12.055}}, color = {0, 0, 127}));
      connect(boneCDistal.frame_resolve1, frame_6P) annotation(Line(visible = true, origin = {-91.992, -59.458}, points = {{-4.967, 47.812}, {-9.507999999999999, 47.812}, {-9.507999999999999, -25.542}, {11.992, -25.542}, {11.992, -44.542}}));
      connect(boneCDistal.frame_resolve, frame_6A) annotation(Line(visible = true, origin = {-91.992, 57.342}, points = {{-4.967, -50.987}, {-9.507999999999999, -50.987}, {-9.507999999999999, 27.658}, {11.992, 27.658}, {11.992, 46.658}}, color = {95, 95, 95}));
      connect(posteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.477, -22.198}, points = {{-13.471, -19.552}, {2.977, -19.552}, {2.977, 19.552}, {7.518, 19.552}}));
      connect(anteriorBase.frame_b, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-104.46, 19.552}, points = {{-13.422, 22.198}, {2.96, 22.198}, {2.96, -22.198}, {7.501, -22.198}}));
      connect(frame_a, boneCDistal.frame_a) annotation(Line(visible = true, origin = {-111.971, -1.323}, points = {{-35.955, 1.323}, {10.471, 1.323}, {10.471, -1.323}, {15.012, -1.323}}));
      connect(fingerLoad.tau2, boneMDistal.LoadTorque) annotation(Line(visible = true, origin = {-10.011, 46.846}, points = {{-30.534, 25.923}, {15.267, 25.923}, {15.267, -51.846}}, color = {0, 0, 127}));
      connect(fingerLoad.tau1, boneFDistal.LoadTorque) annotation(Line(visible = true, origin = {35.073, 36.21}, points = {{-75.69799999999999, 41.21}, {20.386, 41.21}, {20.386, -41.21}, {34.927, -41.21}}, color = {0, 0, 127}));
      connect(boneMDistal.y, fingerLoad.theta2) annotation(Line(visible = true, origin = {-51.343, 28.568}, points = {{47.099, -34.568}, {-17.043, -34.568}, {-17.043, 34.568}, {-13.013, 34.568}}, color = {0, 0, 127}));
      connect(boneFDistal.y, fingerLoad.theta1) annotation(Line(visible = true, origin = {-35.112, 32.959}, points = {{95.61199999999999, -38.959}, {-33.274, -38.959}, {-33.274, 38.959}, {-29.065, 38.959}}, color = {0, 0, 127}));
      connect(loadForce, fingerLoad.force) annotation(Line(visible = true, origin = {-75.637, 72.17400000000001}, points = {{-25.963, -7.71}, {7.251, -7.71}, {7.251, 7.71}, {11.46, 7.71}}, color = {0, 0, 127}));
      connect(anteriorBase.frame_a, frame_7A) annotation(Line(visible = true, origin = {-131.929, 71.5}, points = {{-5.953, -29.75}, {-8.952999999999999, -29.75}, {-8.952999999999999, 13.5}, {11.929, 13.5}, {11.929, 32.5}}));
      connect(boneMDistal.frame_resolve, frame_4A) annotation(Line(visible = true, origin = {2.628, 71}, points = {{2.628, -61}, {2.628, 14}, {-2.628, 14}, {-2.628, 33}}));
      connect(boneMDistal.frame_b, frame_3A) annotation(Line(visible = true, origin = {31.786, 40.381}, points = {{-16.429, -31.81}, {8.214, -31.81}, {8.214, 63.619}}));
      connect(boneFDistal.frame_resolve, frame_2A) annotation(Line(visible = true, origin = {75, 71}, points = {{-5, -61}, {-5, 14}, {5, 14}, {5, 33}}, color = {95, 95, 95}));
      connect(boneFDistal.frame_b, frame_1A) annotation(Line(visible = true, origin = {106.7, 40.381}, points = {{-26.599, -31.81}, {13.3, -31.81}, {13.3, 63.619}}));
      connect(posteriorBase.frame_a, frame_7P) annotation(Line(visible = true, origin = {-131.969, -71.5}, points = {{-5.979, 29.75}, {-8.978999999999999, 29.75}, {-8.978999999999999, -13.5}, {11.969, -13.5}, {11.969, -32.5}}, color = {95, 95, 95}));
      connect(boneMDistal.frame_resolve1, frame_4P) annotation(Line(visible = true, origin = {2.628, -71}, points = {{2.628, 61}, {2.628, -14}, {-2.628, -14}, {-2.628, -33}}, color = {95, 95, 95}));
      connect(boneMDistal.frame_b1, frame_3P) annotation(Line(visible = true, origin = {31.752, -39.6}, points = {{-16.496, 32.2}, {8.247999999999999, 32.2}, {8.247999999999999, -64.40000000000001}}));
      connect(boneFDistal.frame_resolve1, frame_2P) annotation(Line(visible = true, origin = {75, -71}, points = {{-5, 61}, {-5, -14}, {5, -14}, {5, -33}}, color = {95, 95, 95}));
      connect(boneFDistal.frame_b1, frame_1P) annotation(Line(visible = true, origin = {106.667, -39.6}, points = {{-26.667, 32.2}, {13.333, 32.2}, {13.333, -64.40000000000001}}));
      connect(thetaFDistal, boneFDistal.thetaControl) annotation(Line(visible = true, origin = {84.79600000000001, 14.736}, points = {{14.803, 11.736}, {-0.003, 11.736}, {-0.003, -11.736}, {-14.796, -11.736}}, color = {0, 0, 127}));
      connect(thetaMDistal, boneMDistal.thetaControl) annotation(Line(visible = true, origin = {15.236, 13.27}, points = {{9.978999999999999, 12.784}, {9.978999999999999, -1.257}, {-9.978999999999999, -1.257}, {-9.978999999999999, -10.27}}, color = {0, 0, 127}));
      connect(boneMDistal.frame_b2, boneFDistal.frame_a) annotation(Line(visible = true, origin = {46.569, 0.238}, points = {{-31.212, 0.238}, {8.890000000000001, 0.238}, {8.890000000000001, -0.238}, {13.431, -0.238}}));
      annotation(Icon(coordinateSystem(extent = {{-120, -120}, {120, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}}), Line(visible = true, origin = {-68.98099999999999, 102.837}, points = {{-46.302, 17.163}, {46.302, -17.163}}), Line(visible = true, origin = {-63.271, 70}, points = {{-53.271, 10}, {53.271, -10}}), Line(visible = true, origin = {-63.586, 40}, points = {{-53.586, 0}, {53.586, 0}}), Line(visible = true, origin = {-63.271, 0}, points = {{-53.271, 0}, {53.271, 0}}), Line(visible = true, origin = {-66.461, -35}, points = {{-50.712, -5}, {50.712, 5}}), Line(visible = true, origin = {-68.271, -70}, points = {{-48.271, -10}, {48.271, 10}}), Line(visible = true, origin = {-76.54000000000001, -101.892}, points = {{-41.262, -18.108}, {41.262, 18.108}}), Line(visible = true, origin = {67.09099999999999, 104.097}, points = {{49.452, 15.903}, {-49.452, -15.903}}), Line(visible = true, origin = {74.02, 40}, points = {{41.892, 0}, {-41.892, 0}}), Line(visible = true, origin = {72.956, 0}, points = {{42.956, 0}, {-42.956, 0}}), Line(visible = true, origin = {71.5, -35}, points = {{44.412, -5}, {-44.412, 5}}), Line(visible = true, origin = {69.926, -70}, points = {{47.247, -10}, {-47.247, 10}}), Line(visible = true, origin = {64.886, -102.522}, points = {{51.657, -17.478}, {-51.657, 17.478}}), Line(visible = true, origin = {73.586, 70}, points = {{43.586, 10}, {-43.586, -10}}), Text(visible = true, origin = {-140, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1A"), Text(visible = true, origin = {137.253, 120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "1P"), Text(visible = true, origin = {-140, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2A"), Text(visible = true, origin = {-140, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3A"), Text(visible = true, origin = {-140, 1.808}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4A"), Text(visible = true, origin = {-140, -40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5A"), Text(visible = true, origin = {-140, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6A"), Text(visible = true, origin = {-140, -118.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7A"), Text(visible = true, origin = {137.253, 80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "2P"), Text(visible = true, origin = {137.253, 40}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "3P"), Text(visible = true, origin = {137.253, 0}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "4P"), Text(visible = true, origin = {137.253, -38.192}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "5P"), Text(visible = true, origin = {137.253, -80}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "6P"), Text(visible = true, origin = {137.253, -120}, extent = {{-12.747, -11.808}, {12.747, 11.808}}, textString = "7P"), Text(visible = true, origin = {28.74, -151.115}, extent = {{-31.26, -11.115}, {31.26, 11.115}}, textString = "loadForce"), Text(visible = true, origin = {-66.892, 151.505}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaC"), Text(visible = true, origin = {-10, 151.985}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaM"), Text(visible = true, origin = {50, 151.834}, extent = {{-16.892, -5.355}, {16.892, 5.355}}, textString = "thetaF")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.01, grid = {10, 10})));
    end FingerMultipleRevoluteArray;

    model BoneDoubleJointComponent
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder IFingerBone(r = r_IFingerBone, r_shape = r_shape_IFingerBone, color = {155, 0, 0}, diameter = diameterIFingerBone, animation = true, r_0.fixed = false) "The palm bone that is connected via a joint to the finger extension" annotation(Placement(visible = true, transformation(origin = {-55, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder OFingerExtension(r = r_OFingerBone, r_shape = r_shape_OFingerBone, r_0.fixed = false, color = {255, 255, 0}, diameter = diameterOFingerBone, animation = true, specularCoefficient = 1) "Part of the finger that extends from the palm" annotation(Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-r_OFingerBone[1] * 0.5, -diameterOFingerBone * 0.25, 0}) annotation(Placement(visible = true, transformation(origin = {42.218, 23.331}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 0, 1}, useAxisFlange = true, phi.fixed = false, phi.start = 1.5) annotation(Placement(visible = true, transformation(origin = {-10, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.RevoluteRestrained revoluteRestrained(phi_0_restrained = phi_0_regularJoint, theta_1 = -0.1, theta_2 = 1.6, useAxisFlange = true, stateSelect = true, c = 10000, d = 10000) annotation(Placement(visible = true, transformation(origin = {3.053, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {-0.5 * r_OFingerBone[1], diameterOFingerBone * 0.5, 0}) annotation(Placement(visible = true, transformation(origin = {50, -25}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Damper damper(useHeatPort = false, d = 200) annotation(Placement(visible = true, transformation(origin = {-35, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {62.653, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add1(k2 = 0.5) annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const2(k = 1.57) annotation(Placement(visible = true, transformation(origin = {135, 65}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Position r_IFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_IFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterIFingerBone = 0.02;
      parameter Modelica.SIunits.Position r_OFingerBone[3](start = {0.1, 0, 0}) = {0.5, 0, 0};
      parameter Modelica.SIunits.Position r_shape_OFingerBone[3] = {0, 0, 0};
      parameter Modelica.SIunits.Position diameterOFingerBone = 0.02;
      parameter Modelica.SIunits.Angle phi_0_regularJoint = 0;
      parameter Modelica.SIunits.Angle phi_0_doubleJoint = 0;
      parameter Boolean closedDoubleJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
      parameter Boolean closedRegularJoint = true "Results in an open loop run when false" annotation(Dialog(tab = "Advanced", group = "Parameters"));
      Modelica.Mechanics.Rotational.Sources.Torque torque if torD annotation(Placement(visible = true, transformation(origin = {110, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-145, -1}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput LoadTorque if torD "Value for the torque the load exerts on the joint" annotation(Placement(visible = true, transformation(origin = {153.458, -25}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-44.609, 109.799}, extent = {{15.391, -15.391}, {-15.391, 15.391}}, rotation = -270)));
      parameter Boolean torD = true "True if direct torque on joint is desired" annotation(Dialog(tab = "Advanced", group = "Parameters"));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve annotation(Placement(visible = true, transformation(origin = {-7.644, 105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve1 annotation(Placement(visible = true, transformation(origin = {0, -105}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {150, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {101.804, 90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(visible = true, transformation(origin = {148.167, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {104, -90}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(visible = true, transformation(origin = {150, 5}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {102.392, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position regularAngleControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {122.06, 15}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput thetaControl if closedRegularJoint annotation(Placement(visible = true, transformation(origin = {155, 42.881}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-80, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
      Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {157.74, -46.967}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {6.023, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -450)));
      PowerGrab.Components.RevoluteRestrained doubleJointRevolute(useAxisFlange = true, theta_1 = -0.87, theta_2 = 0.87, phi_0_restrained = phi_0_doubleJoint, axisRotation = {0, 1, 0}, c = 10000, d = 10000) annotation(Placement(visible = true, transformation(origin = {-25, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.1}) annotation(Placement(visible = true, transformation(origin = {-85, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-r_IFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {-65, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation6(r = {-r_OFingerBone[1] * 0.5, 0, -diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {50, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation7(r = {-r_OFingerBone[1] * 0.5, 0, diameterOFingerBone * 0.5}) annotation(Placement(visible = true, transformation(origin = {35, -96.736}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      PowerGrab.Components.LineMuscle lineMuscle annotation(Placement(visible = true, transformation(origin = {-43.039, 75}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.LineMuscle lineMuscle1 annotation(Placement(visible = true, transformation(origin = {25, 75}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      PowerGrab.Components.LineMuscle lineMuscle2 annotation(Placement(visible = true, transformation(origin = {-35, -85}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      PowerGrab.Components.LineMuscle lineMuscle3 annotation(Placement(visible = true, transformation(origin = {25, -70}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      PowerGrab.Components.MagnitudeMuscle magnitudeMuscle(f_max = 200) annotation(Placement(visible = true, transformation(origin = {-110, -87.842}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.MagnitudeMuscle magnitudeMuscle1(f_max = 200) annotation(Placement(visible = true, transformation(origin = {-115, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput anteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.467, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {28.108, 111.603}, extent = {{-14.789, -14.789}, {14.789, 14.789}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput posteriorDoubleJointMuscle annotation(Placement(visible = true, transformation(origin = {-148.053, -88.256}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {66.792, 110.334}, extent = {{-14.988, -14.988}, {14.988, 14.988}}, rotation = -90)));
      Modelica.Mechanics.Rotational.Components.Damper damper2(d = 200, useHeatPort = false) annotation(Placement(visible = true, transformation(origin = {-23.775, 155}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation8(r = {diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {1.225, 160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(animation = false, n = {0, 1, 0}, phi.fixed = false, phi.start = 1.5, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {1.225, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relAngleSensor2 annotation(Placement(visible = true, transformation(origin = {-130, 175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position position4(useSupport = false) annotation(Placement(visible = true, transformation(origin = {-105, 126.351}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.Constant const4(k = 1.57) annotation(Placement(visible = true, transformation(origin = {-135, 136.117}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add3(k1 = 0.5, k2 = 1) annotation(Placement(visible = true, transformation(origin = {-107.443, 153.649}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation9(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation10(r = {-diameterOFingerBone * 0.6, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-32.821, -31.96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput doubleJointControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-148.342, 45}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-7.405, 110}, extent = {{15, -15}, {-15, 15}}, rotation = -270)));
      Modelica.Mechanics.Rotational.Sources.Position doubleJointAngleControl if closedDoubleJoint annotation(Placement(visible = true, transformation(origin = {-117.677, 8.558999999999999}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(doubleJointAngleControl.flange, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-72.40300000000001, 10.624}, points = {{-35.275, -2.064}, {-32.262, -2.064}, {-32.262, 2.376}, {49.9, 2.376}, {49.9, -0.624}}));
      connect(doubleJointControl, doubleJointAngleControl.phi_ref) annotation(Line(visible = true, origin = {-142.121, 20.706}, points = {{-6.221, 24.294}, {-6.222, -12.147}, {12.444, -12.147}}, color = {0, 0, 127}));
      connect(fixedTranslation9.frame_a, revolute3.frame_b) annotation(Line(visible = true, origin = {8.117000000000001, 26}, points = {{-3.117, -61}, {-6.117, -61}, {-6.117, -48}, {6.121, -48}, {6.121, 109}, {3.108, 109}}));
      connect(regularAngleControl.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {41.053, 13.333}, points = {{71.00700000000001, 1.667}, {-35.503, 1.667}, {-35.503, -3.333}}));
      connect(thetaControl, regularAngleControl.phi_ref) annotation(Line(visible = true, origin = {148.02, 24.294}, points = {{6.98, 18.587}, {6.98, -9.294}, {-13.96, -9.294}}, color = {0, 0, 127}));
      connect(lineMuscle.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {1.715, 117.3}, points = {{-34.754, -42.7}, {12.622, -42.7}, {12.622, 42.7}, {9.51, 42.7}}));
      connect(lineMuscle.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-67.95399999999999, 74.8}, points = {{14.915, -0.2}, {-3.934, -0.2}, {-3.934, 0.2}, {-7.046, 0.2}}));
      connect(lineMuscle1.frame_a, fixedTranslation6.frame_b) annotation(Line(visible = true, origin = {38.194, 72.3}, points = {{-3.194, 2.3}, {0.694, 2.3}, {0.694, -2.3}, {1.806, -2.3}}));
      connect(lineMuscle1.frame_b, fixedTranslation8.frame_b) annotation(Line(visible = true, origin = {13.075, 107.533}, points = {{1.925, -32.933}, {-1.3, -32.933}, {-1.3, -19.533}, {1.263, -19.533}, {1.263, 52.467}, {-1.85, 52.467}}));
      connect(fixedTranslation10.frame_b, frame_resolve1) annotation(Line(visible = true, origin = {-7.607, -56.307}, points = {{-15.214, 24.347}, {7.607, 24.347}, {7.607, -48.693}}));
      connect(revolute1.frame_b, fixedTranslation10.frame_a) annotation(Line(visible = true, origin = {-21.406, 8.347}, points = {{21.406, 26.653}, {24.419, 26.653}, {24.419, 13.653}, {-24.415, 13.653}, {-24.415, -40.307}, {-21.415, -40.307}}));
      connect(revolute1.frame_a, doubleJointRevolute.frame_b) annotation(Line(visible = true, origin = {-17.913, 19}, points = {{-2.087, 16}, {-5.1, 16}, {-5.1, 3}, {5.913, 3}, {5.913, -19}, {0.461, -19}}));
      connect(lineMuscle3.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {34.112, -52.3}, points = {{0.888, -17.3}, {4.113, -17.3}, {4.113, 17.3}, {-9.112, 17.3}}));
      connect(lineMuscle2.frame_b, fixedTranslation9.frame_b) annotation(Line(visible = true, origin = {14.056, -59.8}, points = {{-39.056, -24.8}, {14.056, -24.8}, {14.056, 24.8}, {10.944, 24.8}}));
      connect(lineMuscle3.frame_a, fixedTranslation7.frame_b) annotation(Line(visible = true, origin = {15.887, -83.16800000000001}, points = {{-0.887, 13.568}, {-4.113, 13.568}, {-4.113, -13.568}, {9.113, -13.568}}));
      connect(fixedTranslation7.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {45.25, -48.368}, points = {{-0.25, -48.368}, {2.75, -48.368}, {2.75, 48.368}, {-5.25, 48.368}}));
      connect(fixedTranslation6.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {56.5, 35}, points = {{3.5, 35}, {6.5, 35}, {6.5, -35}, {-16.5, -35}}, color = {95, 95, 95}));
      connect(IFingerBone.frame_b, fixedTranslation2.frame_a) annotation(Line(visible = true, origin = {-59.996, -31}, points = {{14.996, 31}, {18.008, 31}, {18.008, 18}, {-18.004, 18}, {-18.004, -49}, {-15.004, -49}}));
      connect(IFingerBone.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-69.996, 29.333}, points = {{24.996, -29.333}, {28.008, -29.333}, {28.008, -16.333}, {-28.004, -16.333}, {-28.004, 45.667}, {-25.004, 45.667}}));
      connect(position4.flange, revolute3.axis) annotation(Line(visible = true, origin = {-55.305, 138.83}, points = {{-39.695, -12.479}, {-36.683, -12.479}, {-36.683, 9.395}, {56.53, 9.395}, {56.53, 6.17}}));
      connect(relAngleSensor2.phi_rel, add3.u1) annotation(Line(visible = true, origin = {-126.481, 161.099}, points = {{-3.519, 2.901}, {-3.519, -1.45}, {7.038, -1.45}}, color = {0, 0, 127}));
      connect(add3.y, position4.phi_ref) annotation(Line(visible = true, origin = {-106.721, 140.212}, points = {{10.278, 13.437}, {13.278, 13.437}, {13.278, 0.424}, {-13.279, 0.424}, {-13.279, -13.861}, {-10.279, -13.861}}, color = {0, 0, 127}));
      connect(const4.y, add3.u2) annotation(Line(visible = true, origin = {-121.082, 141.883}, points = {{-2.918, -5.766}, {0.639, -5.766}, {0.639, 5.766}, {1.639, 5.766}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel, y) annotation(Line(visible = true, origin = {112.58, -31.645}, points = {{-22.58, 30.645}, {-22.58, -15.322}, {45.16, -15.322}}, color = {0, 0, 127}));
      connect(relAngleSensor2.flange_b, doubleJointRevolute.flange_a) annotation(Line(visible = true, origin = {-55.002, 120}, points = {{-64.998, 55}, {32.499, 55}, {32.499, -110}}));
      connect(relAngleSensor2.flange_a, doubleJointRevolute.flange_b) annotation(Line(visible = true, origin = {-96.102, 77.2}, points = {{-43.898, 97.8}, {-46.898, 97.8}, {-46.898, -64.2}, {68.84699999999999, -64.2}, {68.84699999999999, -67.2}}));
      connect(revolute3.frame_a, IFingerBone.frame_b) annotation(Line(visible = true, origin = {-34.438, 67.5}, points = {{25.663, 67.5}, {-7.55, 67.5}, {-7.55, -67.5}, {-10.562, -67.5}}));
      connect(damper2.flange_b, revolute3.axis) annotation(Line(visible = true, origin = {-3.775, 151.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper2.flange_a, revolute3.support) annotation(Line(visible = true, origin = {-19.839, 147.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute3.frame_b, fixedTranslation8.frame_a) annotation(Line(visible = true, origin = {1.229, 147.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(posteriorDoubleJointMuscle, magnitudeMuscle.forcePValue) annotation(Line(visible = true, origin = {-128.296, -88.333}, points = {{-19.757, 0.077}, {5.071, 0.077}, {5.071, -0.077}, {9.615, -0.077}}, color = {0, 0, 127}));
      connect(anteriorDoubleJointMuscle, magnitudeMuscle1.forcePValue) annotation(Line(visible = true, origin = {-131.149, 79.71599999999999}, points = {{-17.318, 0.284}, {4.924, 0.284}, {4.924, -0.284}, {7.469, -0.284}}, color = {0, 0, 127}));
      connect(magnitudeMuscle1.fMagnitude, lineMuscle1.muscleMagnitude) annotation(Line(visible = true, origin = {-51.389, 83.883}, points = {{-52.926, -4.474}, {-49.926, -4.474}, {-49.926, 4.117}, {76.389, 4.117}, {76.389, 0.715}}, color = {0, 0, 127}));
      connect(magnitudeMuscle1.fMagnitude, lineMuscle.muscleMagnitude) annotation(Line(visible = true, origin = {-78.605, 83.883}, points = {{-25.71, -4.474}, {-22.71, -4.474}, {-22.71, 4.117}, {35.566, 4.117}, {35.566, 0.715}}, color = {0, 0, 127}));
      connect(magnitudeMuscle.fMagnitude, lineMuscle3.muscleMagnitude) annotation(Line(visible = true, origin = {-16.438, -85.488}, points = {{-82.877, -2.945}, {41.438, -2.945}, {41.438, 5.889}}, color = {0, 0, 127}));
      connect(magnitudeMuscle.fMagnitude, lineMuscle2.muscleMagnitude) annotation(Line(visible = true, origin = {-72.389, -93.49299999999999}, points = {{-26.926, 5.06}, {-23.926, 5.06}, {-23.926, -4.507}, {37.389, -4.507}, {37.389, -1.106}}, color = {0, 0, 127}));
      connect(fixedTranslation2.frame_b, lineMuscle2.frame_a) annotation(Line(visible = true, origin = {-49.112, -82.3}, points = {{-5.888, 2.3}, {0.887, 2.3}, {0.887, -2.3}, {4.112, -2.3}}));
      connect(doubleJointRevolute.frame_b, revoluteRestrained.frame_a) annotation(Line(visible = true, origin = {-10.997, 0}, points = {{-6.454, 0}, {6.454, 0}}));
      connect(IFingerBone.frame_b, doubleJointRevolute.frame_a) annotation(Line(visible = true, origin = {-38.798, 0}, points = {{-6.202, 0}, {6.202, 0}}));
      connect(frame_a, IFingerBone.frame_a) annotation(Line(visible = true, origin = {-86.506, -0.5}, points = {{-58.494, -0.5}, {18.494, -0.5}, {18.494, 0.5}, {21.506, 0.5}}));
      connect(OFingerExtension.frame_b, frame_b2) annotation(Line(visible = true, origin = {113, 2.5}, points = {{-73, -2.5}, {18, -2.5}, {18, 2.5}, {37, 2.5}}));
      connect(frame_resolve, fixedTranslation5.frame_b) annotation(Line(visible = true, origin = {-1.813, 79.40000000000001}, points = {{-5.831, 25.6}, {-5.831, 6.6}, {4.925, 6.6}, {4.925, -19.4}, {1.813, -19.4}}, color = {95, 95, 95}));
      connect(frame_b1, fixedTranslation3.frame_b) annotation(Line(visible = true, origin = {65.486, -52.5}, points = {{82.681, -27.5}, {-28.598, -27.5}, {-28.598, 27.5}, {-25.486, 27.5}}));
      connect(frame_b, fixedTranslation1.frame_b) annotation(Line(visible = true, origin = {60.107, 56.665}, points = {{89.893, 33.335}, {-31.002, 33.335}, {-31.002, -33.334}, {-27.889, -33.334}}));
      connect(LoadTorque, torque.tau) annotation(Line(visible = true, origin = {131.364, -22.5}, points = {{22.094, -2.5}, {-6.364, -2.5}, {-6.364, 2.5}, {-9.364000000000001, 2.5}}, color = {0, 0, 127}));
      connect(torque.flange, revoluteRestrained.flange_a) annotation(Line(visible = true, origin = {61.02, -0.8}, points = {{38.98, -19.2}, {35.98, -19.2}, {35.98, 13.8}, {-55.47, 13.8}, {-55.47, 10.8}}));
      connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {26.387, 42.29}, points = {{26.266, -7.29}, {23.254, -7.29}, {23.254, 5.935}, {-36.387, 5.935}, {-36.387, 2.71}}));
      connect(const2.y, add1.u1) annotation(Line(visible = true, origin = {116.5, 55.5}, points = {{7.5, 9.5}, {-1.5, 9.5}, {-1.5, -9.5}, {-4.5, -9.5}}, color = {0, 0, 127}));
      connect(add1.y, position.phi_ref) annotation(Line(visible = true, origin = {79.73999999999999, 37.5}, points = {{9.26, 2.5}, {-2.087, 2.5}, {-2.087, -2.5}, {-5.087, -2.5}}, color = {0, 0, 127}));
      connect(relAngleSensor.phi_rel, add1.u2) annotation(Line(visible = true, origin = {104.4, 11.8}, points = {{-14.4, -12.8}, {-14.4, -15.8}, {10.6, -15.8}, {10.6, 22.2}, {7.6, 22.2}}, color = {0, 0, 127}));
      connect(revoluteRestrained.flange_a, relAngleSensor.flange_b) annotation(Line(visible = true, origin = {63.42, 15.2}, points = {{-57.87, -5.2}, {-57.87, 7.8}, {39.58, 7.8}, {39.58, -5.2}, {36.58, -5.2}}));
      connect(revoluteRestrained.flange_b, relAngleSensor.flange_a) annotation(Line(visible = true, origin = {47.119, 11.2}, points = {{-46.321, -1.2}, {-46.321, 1.8}, {29.881, 1.8}, {29.881, -1.2}, {32.881, -1.2}}));
      connect(damper.flange_b, revolute1.axis) annotation(Line(visible = true, origin = {-15, 51.667}, points = {{-10, 3.333}, {5, 3.333}, {5, -6.667}}));
      connect(damper.flange_a, revolute1.support) annotation(Line(visible = true, origin = {-31.064, 47.857}, points = {{-13.936, 7.143}, {-15.161, 7.143}, {-15.161, -4.082}, {7.064, -4.082}, {7.064, -1.632}, {15.064, -1.632}, {15.064, -2.857}}));
      connect(revolute1.frame_b, fixedTranslation5.frame_a) annotation(Line(visible = true, origin = {-9.996, 47.075}, points = {{9.996, -12.075}, {11.008, -12.075}, {11.008, -0.85}, {-11.004, -0.85}, {-11.004, 12.925}, {-10.004, 12.925}}));
      connect(fixedTranslation3.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {55.5, -12.5}, points = {{4.5, -12.5}, {5.5, -12.5}, {5.5, 12.5}, {-15.5, 12.5}}));
      connect(OFingerExtension.frame_a, revoluteRestrained.frame_b) annotation(Line(visible = true, origin = {15.301, 0}, points = {{4.699, 0}, {-4.699, 0}}));
      connect(fixedTranslation1.frame_a, OFingerExtension.frame_b) annotation(Line(visible = true, origin = {49.663, 11.665}, points = {{2.555, 11.665}, {3.555, 11.665}, {3.555, -11.665}, {-9.663, -11.665}}));
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {16.416, 7.879}, extent = {{-30.831, -12.121}, {30.831, 12.121}}, textString = "RevoluteJointTheta"), Text(visible = true, origin = {10, -71.652}, extent = {{-22.832, -14.19}, {22.832, 14.19}}, textString = "LoadTorque"), Rectangle(visible = true, origin = {1.26, 0}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-116.543, -110}, {116.543, 110}}), Text(visible = true, origin = {-105, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "thetaControl"), Text(visible = true, origin = {-50, 134.588}, extent = {{-25, -5.412}, {25, 5.412}}, textString = "LoadControl"), Text(visible = true, origin = {26.387, 132.697}, extent = {{-21.43, -4.615}, {21.43, 4.615}}, textString = "anteriorSide"), Text(visible = true, origin = {76.337, 133.102}, extent = {{-24.16, -5.203}, {24.16, 5.203}}, textString = "posteriorSide"), Text(visible = true, origin = {-5.816, 146.068}, extent = {{-34.184, -6.068}, {34.184, 6.068}}, textString = "doubleJointControl"), Line(visible = true, origin = {-7.817, 134.041}, points = {{0, -5.959}, {0, 5.959}})}), experiment(StopTime = 12.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end BoneDoubleJointComponent;

    model PrismDampingOC
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-112.796, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-75.95699999999999, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {112.1, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {75.488, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      parameter Modelica.SIunits.Length boneLength;
      parameter Modelica.SIunits.Distance threshold;
      parameter Modelica.SIunits.TranslationalSpringConstant k = 5000;
      Boolean contact;
      parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
      Modelica.Mechanics.Translational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {12.261, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.Distance lMag(animation = false) annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.OldComponents.NonLinearSpringDamper spring(s_unstretched = threshold, fMagDesired = true, width = 0.005) annotation(Placement(visible = true, transformation(origin = {0, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(height = 2 * threshold, length = 2 * threshold, r_shape = {-threshold, 0, 0}, shapeType = "sphere", width = 2 * threshold) annotation(Placement(visible = true, transformation(origin = {0, 86.994}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b) annotation(Placement(visible = true, transformation(origin = {-46.768, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s.fixed = false, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {61.951, -1.936}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.RelativePosition lVec(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {5, -12.7}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.SIunits.Length lHat[3];
      Modelica.SIunits.Velocity v2[3];
      Modelica.SIunits.Velocity v2Hat[3];
      Modelica.Mechanics.MultiBody.Forces.WorldForce fPrism(diameter = 0.005) annotation(Placement(visible = true, transformation(origin = {-65, 38.1}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce fSphere(diameter = 0.005) annotation(Placement(visible = true, transformation(origin = {-117.719, 38.229}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real mu0;
      parameter Real mu;
      Modelica.Mechanics.MultiBody.Sensors.RelativeVelocity rV(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.world) annotation(Placement(visible = true, transformation(origin = {-45, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Boolean fContact;
      parameter Modelica.SIunits.Length delta;
    equation
      connect(rV.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {28.601, -13.468}, points = {{-63.601, -11.532}, {20.125, -11.532}, {20.125, 11.532}, {23.35, 11.532}}));
      connect(rV.frame_a, frame_a) annotation(Line(visible = true, origin = {-88.84699999999999, -12.5}, points = {{33.847, -12.5}, {-4.949, -12.5}, {-4.949, 12.5}, {-23.949, 12.5}}));
      connect(fSphere.frame_b, frame_a) annotation(Line(visible = true, origin = {-108.55, 22.892}, points = {{0.831, 15.338}, {3.831, 15.338}, {3.831, -3.892}, {-4.246, -3.892}, {-4.246, -22.892}}));
      connect(fPrism.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {23.601, 18.082}, points = {{-78.601, 20.018}, {25.125, 20.018}, {25.125, -20.018}, {28.35, -20.018}}));
      connect(lVec.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {41.101, -7.318}, points = {{-26.101, -5.382}, {7.625, -5.382}, {7.625, 5.382}, {10.85, 5.382}}));
      connect(lVec.frame_a, frame_a) annotation(Line(visible = true, origin = {-76.34699999999999, -6.35}, points = {{71.34699999999999, -6.35}, {-17.449, -6.35}, {-17.449, 6.35}, {-36.449, 6.35}}));
      connect(position.flange, prismatic.axis) annotation(Line(visible = true, origin = {43.416, -15.468}, points = {{-21.155, -19.532}, {5.31, -19.532}, {5.31, 19.532}, {10.535, 19.532}}, color = {0, 127, 0}));
      connect(relativePosition.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {19.596, 3.043}, points = {{-56.364, -3.043}, {-53.364, -3.043}, {-53.364, 8.021000000000001}, {55.368, 8.021000000000001}, {55.368, -4.979}, {52.355, -4.979}}));
      connect(spring.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 26.532}, points = {{-29.851, 28.468}, {8.875, 28.468}, {8.875, -28.468}, {12.1, -28.468}}));
      connect(lMag.frame_b, prismatic.frame_b) annotation(Line(visible = true, origin = {39.851, 14.032}, points = {{-29.851, 15.968}, {8.875, 15.968}, {8.875, -15.968}, {12.1, -15.968}}));
      connect(prismatic.frame_a, frame_b) annotation(Line(visible = true, origin = {92.563, -0.968}, points = {{-20.612, -0.968}, {0.537, -0.968}, {0.537, 0.968}, {19.537, 0.968}}));
      connect(relativePosition.frame_a, frame_a) annotation(Line(visible = true, origin = {-84.782, 0}, points = {{28.014, 0}, {-28.014, 0}}));
      connect(lMag.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 15}, points = {{67.59699999999999, 15}, {-16.199, 15}, {-16.199, -15}, {-35.199, -15}}));
      connect(spring.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 27.5}, points = {{67.59699999999999, 27.5}, {-16.199, 27.5}, {-16.199, -27.5}, {-35.199, -27.5}}));
      connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-77.59699999999999, 43.497}, points = {{67.59699999999999, 43.497}, {-16.199, 43.497}, {-16.199, -43.497}, {-35.199, -43.497}}));
      contact = lMag.distance <= threshold;
      fContact = abs(lMag.distance - threshold) <= delta;
      spring.k = smooth(1, noEvent(if contact then k else 0));
      spring.d = smooth(0, noEvent(if contact then dampingCoefficient else 0));
      position.s_ref = max(min(boneLength, -relativePosition.r_rel[1]), 0);
      lHat = lVec.r_rel / lMag.distance;
      v2 = rV.v_rel - rV.v_rel * lHat * lHat;
      v2Hat = v2 / sqrt(v2[1] ^ 2 + v2[2] ^ 2 + v2[3] ^ 2);
      mu0 = smooth(0, noEvent(if fContact then mu else 0));
      fPrism.force = -mu0 * min(spring.y, 50) * v2Hat;
      fSphere.force = mu0 * min(spring.y, 50) * v2Hat;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, fillPattern = FillPattern.Solid, extent = {{-65.545, -65}, {65.545, 65}}), Rectangle(visible = true, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, -6.615}, {70, 6.615}}), Text(visible = true, origin = {-0.339, 0}, extent = {{-66.146, -7.55}, {66.146, 7.55}}, textString = "PRISM DAMP")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end PrismDampingOC;

    model FingerContactArray
      PowerGrab.Components.FingerMuscleLineArray anteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {-120, 15}, extent = {{-51.322, -51.322}, {51.322, 51.322}}, rotation = 0)));
      PowerGrab.Components.FingerMultipleRevoluteArray fingerArray(phi_0_boneFDistal = 0.1, phi_0_boneMDistal = 0.1, phi_0_boneCDistal = 0.1, fDistalClosed = fDistalClosed, mDistalClosed = mDistalClosed, cDistalRegularClosed = cDistalRegularClosed, cDistalSideClosed = cDistalSideClosed, dirTorque = false, phi_0_doubleJoint = 0, diameterIboneFDistal = 0.2, diameterIboneMDistal = 0.2, diameterIboneCDistal = 0.2, diameterOboneCDistal = 0.2, diameterOboneFDistal = 0.2, diameterOboneMDistal = 0.2, r_IboneFDistal = {fingerLength[4], 0, 0}, r_OboneFDistal = {fingerLength[3] / 2, 0, 0}, r_IboneMDistal = {fingerLength[3] / 2, 0, 0}, r_OboneMDistal = {fingerLength[2] / 2, 0, 0}, r_IboneCDistal = {fingerLength[2] / 2, 0, 0}, r_OboneCDistal = {fingerLength[1], 0, 0}) annotation(Placement(visible = true, transformation(origin = {17.255, 15}, extent = {{-47.745, -47.745}, {47.745, 47.745}}, rotation = 0)));
      PowerGrab.Components.FingerMuscleLineArray posteriorMuscleArray(maxFDistal = 500, maxMDistal = 500, maxCDistal = 500) annotation(Placement(visible = true, transformation(origin = {137.5, 15}, extent = {{52.5, -52.5}, {-52.5, 52.5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-149, -80}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-21.635, -111.85}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-fingerLength[2] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-165, 90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a1 annotation(Placement(visible = true, transformation(origin = {-251, 89}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, -91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      parameter Boolean fDistalClosed = true;
      parameter Boolean mDistalClosed = true;
      parameter Boolean cDistalRegularClosed = true;
      parameter Boolean cDistalSideClosed = true;
      parameter Modelica.SIunits.Length fingerLength[4] = {0.5, 0.5, 0.5, 0.5} "Length of bone from Palm, Proximal, Middle, and Distal";
      Modelica.Blocks.Interfaces.RealInput anteriorInput[4] "Anterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {-275, 12.948}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-18.302, 41.976}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput posteriorInput[4] "Posterior Activation Input in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {250, 11.866}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {-17.374, -52.794}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput jointControl[4] if not (not fDistalClosed and not mDistalClosed and not cDistalRegularClosed and not cDistalSideClosed) "Joint control signal in order of F, M, CReg, CSide" annotation(Placement(visible = true, transformation(origin = {13.183, 162.518}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-15.106, -5}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(visible = true, transformation(origin = {-254, 116}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-125, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {-fingerLength[3] / 4, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-92.404, 115}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {-fingerLength[4] / 2, 0.15, 0}) annotation(Placement(visible = true, transformation(origin = {-85, 138.311}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(visible = true, transformation(origin = {-255, 140}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-123.407, 91}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      PowerGrab.Components.PrismDampingOC objectPrismDampConnection(threshold = threshold, k = k, dampingCoefficient = dampingCoefficient, boneLength = 1, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-190, 135}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.PrismDampingOC objectPrismDampConnection1(k = k, dampingCoefficient = dampingCoefficient, threshold = threshold, boneLength = 1, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-190, 115}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      PowerGrab.Components.PrismDampingOC objectPrismDampConnection2(k = k, dampingCoefficient = dampingCoefficient, threshold = threshold, boneLength = 1, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-200, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Modelica.SIunits.Distance threshold = 0.75 "radius of contact sphere";
      parameter Modelica.SIunits.TranslationalSpringConstant k = 5000 "Stiffness of contact spring";
      parameter Modelica.SIunits.TranslationalDampingConstant dampingCoefficient(final min = 0) = 5000 "Damping constant";
      PowerGrab.Components.PrismDampingOC objectPrismDampConnection3(boneLength = 1, dampingCoefficient = dampingCoefficient, k = k, threshold = threshold, mu = mu, delta = delta) annotation(Placement(visible = true, transformation(origin = {-125, -45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(visible = true, transformation(origin = {-267, -49}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-78.444, -125}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      parameter Real mu;
      parameter Modelica.SIunits.Length delta;
    equation
      connect(objectPrismDampConnection3.frame_b, anteriorMuscleArray.frame_7) annotation(Line(visible = true, origin = {-101.193, -39.215}, points = {{-16.258, -5.785}, {-16.258, 2.893}, {32.515, 2.893}}));
      connect(frame_a4, objectPrismDampConnection3.frame_a) annotation(Line(visible = true, origin = {-168.899, -47}, points = {{-98.101, -2}, {30.899, -2}, {30.899, 2}, {36.303, 2}}));
      connect(fixedTranslation.frame_a, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-63.125, 44.547}, points = {{-91.875, 45.453}, {29.615, 45.453}, {29.615, -45.453}, {32.645, -45.453}}));
      connect(fixedTranslation1.frame_a, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-44.955, 72.911}, points = {{-37.449, 42.089}, {11.445, 42.089}, {11.445, -42.089}, {14.559, -42.089}}));
      connect(fixedTranslation2.frame_a, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-43.099, 100.47}, points = {{-31.901, 37.841}, {9.587999999999999, 37.841}, {9.587999999999999, -37.841}, {12.725, -37.841}}));
      connect(fixedTranslation.frame_b, objectPrismDampConnection2.frame_b) annotation(Line(visible = true, origin = {-183.726, 90}, points = {{8.726000000000001, 0}, {-8.726000000000001, 0}}));
      connect(fixedTranslation1.frame_b, objectPrismDampConnection1.frame_b) annotation(Line(visible = true, origin = {-142.428, 115}, points = {{40.024, 0}, {-40.024, 0}}));
      connect(fixedTranslation2.frame_b, objectPrismDampConnection.frame_b) annotation(Line(visible = true, origin = {-157.863, 136.656}, points = {{62.863, 1.655}, {-19.137, 1.655}, {-19.137, -1.656}, {-24.588, -1.656}}));
      connect(frame_a1, objectPrismDampConnection2.frame_a) annotation(Line(visible = true, origin = {-221.149, 89.5}, points = {{-29.851, -0.5}, {8.148999999999999, -0.5}, {8.148999999999999, 0.5}, {13.553, 0.5}}));
      connect(frame_a2, objectPrismDampConnection1.frame_a) annotation(Line(visible = true, origin = {-214.399, 115.5}, points = {{-39.601, 0.5}, {11.399, 0.5}, {11.399, -0.5}, {16.803, -0.5}}));
      connect(frame_a3, objectPrismDampConnection.frame_a) annotation(Line(visible = true, origin = {-214.649, 137.5}, points = {{-40.351, 2.5}, {11.649, 2.5}, {11.649, -2.5}, {17.053, -2.5}}));
      connect(jointControl[4], fingerArray.sideTheta) annotation(Line(visible = true, origin = {-6.857, 94.131}, points = {{20.039, 68.387}, {20.039, 44.937}, {-26.654, 44.937}, {-26.654, -79.131}, {13.23, -79.131}}, color = {0, 0, 127}));
      connect(jointControl[3], fingerArray.thetaCDistal) annotation(Line(visible = true, origin = {1.92, 90.976}, points = {{11.263, 71.541}, {11.263, -22.847}, {-11.263, -22.847}, {-11.263, -25.847}}, color = {0, 0, 127}));
      connect(jointControl[2], fingerArray.thetaMDistal) annotation(Line(visible = true, origin = {13.23, 91.119}, points = {{-0.047, 71.399}, {-0.047, -22.8}, {0.047, -22.8}, {0.047, -25.8}}, color = {0, 0, 127}));
      connect(jointControl[1], fingerArray.thetaFDistal) annotation(Line(visible = true, origin = {25.166, 91.074}, points = {{-11.983, 71.443}, {-11.983, -22.814}, {11.983, -22.814}, {11.983, -25.814}}, color = {0, 0, 127}));
      connect(posteriorInput[4], fingerArray.sidePosterior) annotation(Line(visible = true, origin = {143.669, -10.727}, points = {{106.331, 22.593}, {82.881, 22.593}, {82.881, -25.913}, {-136.046, -25.913}, {-136.046, 6.639}}, color = {0, 0, 127}));
      connect(anteriorInput[4], fingerArray.sideAnterior) annotation(Line(visible = true, origin = {-152.61, 38.814}, points = {{-122.39, -25.866}, {-98.94, -25.866}, {-98.94, 27.826}, {160.135, 27.826}, {160.135, -3.92}}, color = {0, 0, 127}));
      connect(anteriorMuscleArray.frame_4, fingerArray.frame_4A) annotation(Line(visible = true, origin = {-41.548, 14.261}, points = {{-27.13, -0.737}, {8.037000000000001, -0.737}, {8.037000000000001, 0.737}, {11.056, 0.737}}));
      connect(posteriorInput[3], posteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {207.879, -6.825}, points = {{42.121, 18.691}, {-12.121, 18.691}, {-12.121, -18.691}, {-17.879, -18.691}}, color = {0, 0, 127}));
      connect(posteriorInput[1], posteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {207.57, 32.836}, points = {{42.43, -20.97}, {-11.812, -20.97}, {-11.812, 20.97}, {-18.807, 20.97}}, color = {0, 0, 127}));
      connect(posteriorInput[2], posteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {207.879, 12.183}, points = {{42.121, -0.317}, {-12.121, -0.317}, {-12.121, 0.317}, {-17.879, 0.317}}, color = {0, 0, 127}));
      connect(anteriorInput[3], anteriorMuscleArray.perCDistal) annotation(Line(visible = true, origin = {-200.089, -5.829}, points = {{-74.911, 18.777}, {23.072, 18.777}, {23.072, -18.777}, {28.767, -18.777}}, color = {0, 0, 127}));
      connect(anteriorInput[2], anteriorMuscleArray.perMDistal) annotation(Line(visible = true, origin = {-200.089, 12.752}, points = {{-74.911, 0.196}, {23.072, 0.196}, {23.072, -0.196}, {28.767, -0.196}}, color = {0, 0, 127}));
      connect(anteriorInput[1], anteriorMuscleArray.perFDistal) annotation(Line(visible = true, origin = {-199.787, 32.941}, points = {{-75.21299999999999, -19.993}, {22.769, -19.993}, {22.769, 19.993}, {29.675, 19.993}}, color = {0, 0, 127}));
      connect(fingerArray.frame_a, frame_a) annotation(Line(visible = true, origin = {-43.468, -62.922}, points = {{52.766, 34.156}, {52.766, -17.078}, {-105.532, -17.078}}));
      connect(posteriorMuscleArray.frame_7, fingerArray.frame_7P) annotation(Line(visible = true, origin = {74.917, -37.811}, points = {{10.083, 0.311}, {10.083, -2.689}, {-10.083, -2.689}, {-10.083, 5.066}}));
      connect(posteriorMuscleArray.frame_6, fingerArray.frame_6P) annotation(Line(visible = true, origin = {71.5, -18.709}, points = {{13.5, -1.731}, {-3.5, -1.731}, {-3.5, 1.731}, {-6.5, 1.731}}));
      connect(posteriorMuscleArray.frame_5, fingerArray.frame_5P) annotation(Line(visible = true, origin = {71.48699999999999, -2.194}, points = {{13.513, -1.227}, {-3.487, -1.227}, {-3.487, 1.227}, {-6.539, 1.227}}));
      connect(anteriorMuscleArray.frame_7, fingerArray.frame_7A) annotation(Line(visible = true, origin = {-49.499, -36.885}, points = {{-19.179, 0.5629999999999999}, {-19.179, -2.437}, {19.179, -2.437}, {19.179, 4.31}}, color = {95, 95, 95}));
      connect(anteriorMuscleArray.frame_6, fingerArray.frame_6A) annotation(Line(visible = true, origin = {-41.52, -18.183}, points = {{-27.158, -1.462}, {8.009, -1.462}, {8.009, 1.462}, {11.139, 1.462}}));
      connect(anteriorMuscleArray.frame_5, fingerArray.frame_5A) annotation(Line(visible = true, origin = {-41.545, -1.957}, points = {{-27.133, -1.051}, {8.034000000000001, -1.051}, {8.034000000000001, 1.051}, {11.065, 1.051}}, color = {95, 95, 95}));
      connect(posteriorMuscleArray.frame_4, fingerArray.frame_4P) annotation(Line(visible = true, origin = {71.44, 14.126}, points = {{13.56, -0.636}, {-3.44, -0.636}, {-3.44, 0.636}, {-6.679, 0.636}}, color = {95, 95, 95}));
      connect(posteriorMuscleArray.frame_3, fingerArray.frame_3P) annotation(Line(visible = true, origin = {71.482, 30.796}, points = {{13.518, -0.046}, {-3.482, -0.046}, {-3.482, 0.046}, {-6.554, 0.046}}));
      connect(posteriorMuscleArray.frame_2, fingerArray.frame_2P) annotation(Line(visible = true, origin = {71.56699999999999, 47.453}, points = {{13.433, 0.623}, {-3.478, 0.623}, {-3.478, -0.623}, {-6.478, -0.623}}));
      connect(posteriorMuscleArray.frame_1, fingerArray.frame_1P) annotation(Line(visible = true, origin = {71.56100000000001, 64.376}, points = {{13.439, 1.549}, {-3.48, 1.549}, {-3.48, -1.549}, {-6.48, -1.549}}, color = {95, 95, 95}));
      connect(anteriorMuscleArray.frame_3, fingerArray.frame_3A) annotation(Line(visible = true, origin = {-41.524, 30.609}, points = {{-27.154, -0.212}, {8.013, -0.212}, {8.013, 0.212}, {11.128, 0.212}}));
      connect(anteriorMuscleArray.frame_2, fingerArray.frame_2A) annotation(Line(visible = true, origin = {-41.547, 47.081}, points = {{-27.131, 0.251}, {8.037000000000001, 0.251}, {8.037000000000001, -0.251}, {11.057, -0.251}}));
      connect(anteriorMuscleArray.frame_1, fingerArray.frame_1A) annotation(Line(visible = true, origin = {-52.156, 65.095}, points = {{-16.522, -0.313}, {-13.522, -0.313}, {-13.522, 1.545}, {21.782, 1.545}, {21.782, -2.466}}));
      annotation(Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, preserveAspectRatio = true, initialScale = 0.1, grid = {25, 25}), graphics = {Polygon(visible = true, origin = {-11.122, -85.083}, fillColor = {0, 0, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-38.878, -26.42}, {13.483, -26.42}, {34.272, 25.083}, {-8.878, 27.757}}), Polygon(visible = true, origin = {11.791, -38.344}, fillColor = {0, 128, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-31.791, -21.656}, {11.359, -21.656}, {20.178, 38.344}, {-21.791, 38.344}}), Polygon(visible = true, origin = {11.3, 30}, fillColor = {102, 204, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-21.3, -30}, {21.3, -30}, {21.3, 30}, {-21.3, 30}}), Polygon(visible = true, origin = {-4.193, 90}, fillColor = {0, 255, 255}, fillPattern = FillPattern.VerticalCylinder, points = {{-5.807, -30}, {37.422, -30}, {4.193, 30}, {-35.807, 30}})}), experiment(StopTime = 60.0), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end FingerContactArray;
    annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end Components;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{143bd91c-ca8b-4f9e-9fc3-b20333a710c6}"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Bitmap(visible = true, origin = {-0, 0.323}, fileName = "modelica://PowerGrab/../PowerGrab Data Files/exoHand.jpg", imageSource = "", extent = {{-100, -99.67700000000001}, {100, 99.67700000000001}}), Rectangle(visible = true, origin = {0, 85.82899999999999}, fillColor = {179, 179, 179}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -14.171}, {100, 14.171}}), Rectangle(visible = true, origin = {0, -85.82899999999999}, fillColor = {179, 179, 179}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -14.171}, {100, 14.171}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end PowerGrab;

model PowerGrab_FullModels_FingerTrials_MultiFingerContactTrial
  extends PowerGrab.FullModels.FingerTrials.MultiFingerContactTrial;
  annotation(__Wolfram(totalModelMain = true, totalModelId = "{143bd91c-ca8b-4f9e-9fc3-b20333a710c6}"));
end PowerGrab_FullModels_FingerTrials_MultiFingerContactTrial;