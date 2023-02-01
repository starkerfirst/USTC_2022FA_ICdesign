#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

scalar dummyScalar;
scalar fScalarIsForced=0;
scalar fScalarIsReleased=0;
scalar fScalarHasChanged=0;
scalar fForceFromNonRoot=0;
void  hsG_0(struct dummyq_struct * I874, EBLK  * I875, U  I653);
void  hsG_0(struct dummyq_struct * I874, EBLK  * I875, U  I653)
{
    U  I1067;
    U  I1068;
    U  I1069;
    struct futq * I1070;
    I1067 = ((U )vcs_clocks) + I653;
    I1069 = I1067 & 0xfff;
    I875->I586 = (EBLK  *)(-1);
    I875->I596 = I1067;
    if (I1067 < (U )vcs_clocks) {
        I1068 = ((U  *)&vcs_clocks)[1];
        sched_millenium(I874, I875, I1068 + 1, I1067);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I653 == 1)) {
        I875->I597 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I586 = I875;
        peblkFutQ1Tail = I875;
    }
    else if ((I1070 = I874->I843[I1069].I603)) {
        I875->I597 = (struct eblk *)I1070->I602;
        I1070->I602->I586 = (RP )I875;
        I1070->I602 = (RmaEblk  *)I875;
    }
    else {
        sched_hsopt(I874, I875, I1067);
    }
}
U   hsG_1(U  I888);
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
