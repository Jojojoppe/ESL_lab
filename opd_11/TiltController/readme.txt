/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  readme.txt
 *  model: PositionControllerTilt
 *  expmt: Jiwy
 *  date:  June 16, 2021
 *  time:  4:04:32 PM
 *  user:  20-sim 4.8 Campus License
 *  from:  Universiteit Twente
 *  build: 4.8.3.10415
 **********************************************************/

Code generation process
==================
The code generation process uses template files for the selected target. 
These template files contain tokens that refer to information from the model. 
During the code generation process these tokens are replaced with the 
actual information from the model. The resulting files are placed in the target
directory. The following files from the template are generated for in this target directory:

Target files
========
readme.txt
	this file

xxmain.c
	an example main loop that calls the submodel function

xxsubmod.h
xxsubmod.c
	the function that calls the model and the integration process

xxmodel.h
xxmodel.c
	the actual model code (the equations of the selected 20-sim model)

xxinteg.h
xxinteg.c
	the explicit integration routines 

xxtypes.h
xxfuncs.h
xxfuncs.c
	some types and functions that are not part of standard ANSI-C libraries

xxmatrix.h
xxmatrix.c
xxinverse.c
	complete ANSI-C matrix library for vectors or matrices that are used in the model

project/
	Visual Studio solutions for multiple versions of Visual Studio

