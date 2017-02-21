# PowerGrab
_This is a project to create a package of musculoskeletal models about the hand, and subsystems in the hand, in the language Modelica. The objective of the main hand model is to have it successfully grasp a object in a variety of ways._

## Musculoskeletal models

The underlying musculoskeletal architecture in the models is based off literature on the anatomy and physiology of the hand - there are multiple assumptions made to simplify the muscle and bone geometry. The purpose of the musculoskeletal aspect is to develop a structure that can respond in a feasible manner to muscle actuation.

## Contact object

The contact object is a sphere, that can detect, and apply force at, the points of contact between the fingers and the object. The model was developed ad-hoc, and is intended to be replaced by a more commonly used contact model in the future.

## Package structure

The library is split based upon the components in the hand - as the highest level component is the finger, the structure consists of hand model templates, examples, and subdirectories and models for the finger component. Within the finger component, it is further divided depending upon if the model is for the bone structure, muscle geometry, or a method of determining contact. Following this pattern, the components within the hand, and thus the finger, are layered into the overall PowerGrab library.
