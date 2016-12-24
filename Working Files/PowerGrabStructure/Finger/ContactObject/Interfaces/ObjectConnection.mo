within PowerGrabStructure.Finger.ContactObject.Interfaces;
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
