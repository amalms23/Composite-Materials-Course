# -*- coding: mbcs -*-
#
# Abaqus/Viewer Release 6.14-5 replay file
# Internal Version: 2015_08_18-20.07.49 135153
# Run by user on Sun Aug 06 15:35:33 2023
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
#: Abaqus Error: 
#: This error may have occurred due to a change to the Abaqus Scripting
#: Interface. Please see the Abaqus Scripting Manual for the details of
#: these changes. Also see the "Example environment files" section of 
#: the Abaqus Site Guide for up-to-date examples of common tasks in the
#: environment file.
#: Execution of "onCaeGraphicsStartup()" in the site directory failed.
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(0.0, 0.0), width=198.190338134766, 
    height=127.565101623535)
session.viewports['Viewport: 1'].makeCurrent()
session.viewports['Viewport: 1'].maximize()
from viewerModules import *
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
o2 = session.openOdb(name='12_shear.odb')
#: Model: C:/Users/user/OneDrive - IIT Kanpur/PhD SEM2/Composite Materials/COMPOSITES PROJECT/Project/12_shear.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       25
#: Number of Node Sets:          24
#: Number of Steps:              1
session.viewports['Viewport: 1'].setValues(displayedObject=o2)
dg1= session.displayGroups['All']
session.viewports['Viewport: 1'].odbDisplay.setValues(visibleDisplayGroups=(
    dg1, ))
dg1= session.displayGroups['All']
session.viewports['Viewport: 1'].odbDisplay.setValues(visibleDisplayGroups=(
    dg1, ))
