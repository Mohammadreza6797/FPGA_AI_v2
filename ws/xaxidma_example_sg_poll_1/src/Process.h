#include "xbasic_types.h"

extern	int32_t *Image;
extern	int32_t *Conv2_Result1, *MaxPooling_Result1;
extern 	int32_t Weight[16][10];

void Process_init(void);
void Process_Conv2_1(void);
void Process_MaxPooling_1(void);
