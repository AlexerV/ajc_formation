//APIXXB JOB 'SDJ FORMATION',MSGLEVEL=(1,1),MSGCLASS=H,CLASS=A,
//       NOTIFY=&SYSUID
//*
//*
//*------------------------------------------------------*
//* ===> CHANGER FORMXX PAR FORMNN  (NN: N¢ DU GROUPE)   *
//*      CHANGER APIXXDB$ PAR LE NOM DU PROGRAMME        *
//*      CHANGER XX PAR N¢ DU GROUPE   (XX 01 @ 15)      *
//* BIND PLAN, POUR DBRMLIB : FORMXX.S0URCE.DBRMLIB      *
//*------------------------------------------------------*
//*
//*
//JOBLIB  DD  DSN=DSN710.SDSNEXIT,DISP=SHR                              00260000
//        DD  DSN=DSN710.SDSNLOAD,DISP=SHR                              00270000
//        DD  DSN=CEE.SCEERUN,DISP=SHR                                  00270001
//STEP1    EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)                    01030000
//DBRMLIB  DD DSN=FORMXX.SOURCE.DBRMLIB,DISP=SHR                        01040000
//SYSUDUMP DD SYSOUT=*                                                  01050000
//SYSTSPRT DD SYSOUT=*                                                  01060000
//SYSPRINT DD SYSOUT=*                                                  01070000
//SYSTSIN  DD *                                                         01100000
DSN SYSTEM(DSN1)                                                        01110000
BIND PLAN(APIXXDB$) MEMBER(APIXXDB$) ACT(REP) ISO(CS) EXPLAIN(NO)       01140000
END                                                                     01170000
//*                                                                     01180000
//* ****** FIN DE BINDPL *********************                          01180000
