
import pylab as p1

from pymodelica import compile_fmu
from pyfmi import load_fmu

cname = 'PowerGrabStructure.Examples.Finger.TestFingerContactModel'
fname = 'Documents/GitHub/Working Files/PowerGrabStructure'
fmu_name = compile_fmu(cname, fname)
testF = load_fmu(fmu_name)

tF = testF.simulate(final_time=30)
