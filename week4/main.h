#ifndef LED_TEST_H
#define LED_TEST_H

/*flag used to debug on x86 based CPU */
//#define x86_GCC_DEBUG

#ifdef x86_GCC_DEBUG
    #include <stdio.h>
#endif

#if 0
#include "init_LED_config.h"
#include "init_keypad_config.h"
#endif

#include "scan_dkp.h"
#include "train_flow.h"

#endif
