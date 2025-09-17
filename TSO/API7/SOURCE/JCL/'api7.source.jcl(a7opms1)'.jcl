//A7OPMS1 JOB DPTM,VSAM,MSGLEVEL=(1,1),MSGCLASS=H,CLASS=A,              00010000
//   NOTIFY=&SYSUID,TIME=(0,5)                                          00020000
//*------------------------------------------------------*              00030000
//*      MODIFIER XX PAR N¢ DU GROUPE                    *              00040000
//*      MODIFIER N PAR N¢ DE MAP                        *              00050000
//*      MODIFIER &MAP  PAR MAPNCIXX                     *              00060000
//*------------------------------------------------------*              00070000
//         JCLLIB  ORDER=SDJ.FORM.PROCLIB                               00080000
//         EXEC    COMPMAP,MAP=A7MS1                                    00090001
//*----------------------------------------------------------*          00100000
//*                                                          *          00110000
//* COMPIL / LINK / COPY MAP CICS TS 2.2                     *          00120000
//*                                                          *          00130000
//*----------------------------------------------------------*          00140000
//*                                                                     00150000
//STEPEXT.SYSUT1   DD DSN=API7.SOURCE.BMS(&MAP),DISP=SHR                00160002
//STEPCOP.SYSPUNCH DD DSN=API7.SOURCE.COPY(&MAP),DISP=SHR               00170002
