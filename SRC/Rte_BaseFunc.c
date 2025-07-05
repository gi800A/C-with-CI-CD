// Rte_BaseFunc.c
#include "Rte_BaseFunc.h"

extern BYTE InitSts; 

BYTE RTE_GetInitSts(void) {
    return InitSts;
}

void RTE_PutInitSts(BYTE value) {
    InitSts = value;
}
