/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  xxmodel.h
 *  subm:  PositionControllerTilt
 *  model: PositionControllerTilt
 *  expmt: Jiwy
 *  date:  June 16, 2021
 *  time:  4:04:32 PM
 *  user:  20-sim 4.8 Campus License
 *  from:  Universiteit Twente
 *  build: 4.8.3.10415
 **********************************************************/

/* This file describes the model functions
   that are supplied for computation.

   The model itself is the xxmodel.c file
*/

#ifndef XX_MODEL_H
#define XX_MODEL_H

/* Our own include files */
#include "xxtypes.h"

/* Simulation variables */
extern XXDouble xx_start_time;
extern XXDouble xx_finish_time;
extern XXDouble xx_step_size;
extern XXDouble xx_time;
extern XXInteger xx_steps;
extern XXBoolean xx_initialize;
extern XXBoolean xx_major;
extern XXBoolean xx_stop_simulation;

/* Model size constants */
#define xx_constants_size 0
#define xx_parameters_size 7
#define xx_initialvalues_size 3
#define xx_variables_size 12
#define xx_states_size 3

/* Variable arrays */
extern XXDouble xx_P[];
extern XXDouble xx_I[];
extern XXDouble xx_V[];
extern XXDouble xx_s[];
extern XXDouble xx_R[];


/* The names of the variables as used in the arrays above
   uncomment this if you need the names (see source file too)
extern XXString xx_parameter_names[];
extern XXString xx_initial_value_names[];
extern XXString xx_variable_names[];
extern XXString xx_state_names[];
extern XXString xx_rate_names[];
*/

/* Initialization methods */
/* Initialize complete model */
void XXModelInitialize (void);
/* Initialize specific model values */
void XXModelInitialize_parameters(void);
void XXModelInitialize_initialvalues(void);
void XXModelInitialize_states(void);
void XXModelInitialize_variables(void);
void XXModelTerminate (void);

/* Computation methods */
void XXCalculateInitial (void);
void XXCalculateStatic (void);
void XXCalculateInput (void);
void XXCalculateDynamic (void);
void XXCalculateOutput (void);
void XXCalculateFinal (void);


#endif

