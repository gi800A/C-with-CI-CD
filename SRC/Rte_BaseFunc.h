#include "BaseFunc.h"

extern InitSts;

BYTE RTE_GetInitSts(void) {
    return 10;
}

void RTE_PutInitSts(BYTE value){
    InitSts = value;
}


