// main.c
#include <stdio.h>
#include "BaseFunc.h"
#include "Rte_BaseFunc.h"

BYTE InitSts;

void Init_Cntrlr(){
	printf("controller init");
}

int main(void) {
    
	Init_Cntrlr();

    printf("Valore iniziale: %d\n", RTE_GetInitSts());

    RTE_PutInitSts(42);
    printf("Valore aggiornato: %d\n", RTE_GetInitSts());

    return 0;
}
