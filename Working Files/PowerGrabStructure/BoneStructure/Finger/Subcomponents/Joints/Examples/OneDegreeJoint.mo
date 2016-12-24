within PowerGrabStructure.BoneStructure.Finger.Subcomponents.Joints.Examples;
model OneDegreeJoint "Joint with one degree of freedom"
  extends Templates.OneDegreeJoint(redeclare
      Subcomponents.Examples.RevoluteRestrained restrainedRevolute(
        useAxisFlange=useAxisFlange));
end OneDegreeJoint;
