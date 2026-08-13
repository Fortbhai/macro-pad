#pragma once

#include "config_common.h"

/* USB Device descriptor parameter */
#define VENDOR_ID       0xFEED
#define PRODUCT_ID      0x0001
#define DEVICE_VER      0x0001
#define MANUFACTURER    Fortbhai
#define PRODUCT         Macro Pad
#define DESCRIPTION     3-key macro pad

/* key matrix size */
#define MATRIX_ROWS 1
#define MATRIX_COLS 3

/* key matrix pins */
#define MATRIX_ROW_PINS { D0 }
#define MATRIX_COL_PINS { D1, D2, D3 }
#define UNUSED_PINS

/* diode direction */
#define DIODE_DIRECTION COL2ROW

/* debounce */
#define DEBOUNCE 5
