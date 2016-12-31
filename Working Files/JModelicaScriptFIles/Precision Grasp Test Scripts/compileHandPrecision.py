
import pylab as p1
from pyjmi.common.plotting import plot_gui

from pymodelica import compile_fmu
from pyfmi import load_fmu

cname = 'PowerGrabStructure.Examples.HandWithObject.RealHandContactTrialPrecision'
fname = 'Documents/GitHub/Working Files/PowerGrabStructure'
fmu_name = compile_fmu(cname, fname, jvm_args='-Xmx3g')