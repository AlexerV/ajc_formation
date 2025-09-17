//APIXXMAP JOB DPTM,VSAM,MSGLEVEL=(1,1),MSGCLASS=H,CLASS=A,             00010000
//   NOTIFY=&SYSUID                                                     00020000
//*------------------------------------------------------*
//*      MODIFIER XX PAR N¢ DU GROUPE                    *
//*      MODIFIER N PAR N¢ DE MAP                        *
//*      MODIFIER &MAP  PAR MAPNCIXX                     *
//*------------------------------------------------------*
//*
//         JCLLIB  ORDER=SDJ.FORM.PROCLIB
//         EXEC COMPMAP,MAP=&MAP
//*
//*----------------------------------------------------------*          00000230
//*                                                          *
//* COMPIL / LINK / COPY MAP CICS TS 2.2                     *
//*                                                          *
//*----------------------------------------------------------*          00000230
//*
//STEPEXT.SYSUT1   DD DSN=FORMXX.SOURCE.BMS(&MAP),DISP=SHR
//STEPCOP.SYSPUNCH DD DSN=SDJ.CICS.COPY(&MAP),DISP=SHR
