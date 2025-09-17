//API$SPF JOB 'DB2','API$',REGION=0M,NOTIFY=&SYSUID,MSGCLASS=H,         00000001
//          TIME=(,15)                                                  00250000
//*--------------------------------------------------------*            01180000
//*     EXEMPLE   D'UTILISATION DE SPUFI BATCH            *             01020000
//*--------------------------------------------------------*            01180000
//*                                                                     01020000
//JOBLIB  DD  DSN=DSN710.SDSNEXIT,DISP=SHR                              00260000
//        DD  DSN=DSN710.SDSNLOAD,DISP=SHR                              00270000
//        DD  DSN=CEE.SCEERUN,DISP=SHR                                  00270001
//STEP1    EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)                    01030000
//SYSUDUMP DD SYSOUT=*                                                  01050000
//SYSTSPRT DD SYSOUT=*                                                  01060000
//SYSPRINT DD SYSOUT=*                                                  01070000
//SYSOUT   DD SYSOUT=*                                                  01070000
//SYSTSIN  DD *                                                         01100000
DSN SYSTEM(DSN1)                                                        01110000
RUN  PROGRAM(DSNTEP2) PLAN(DSNTEP81) -                                  01150000
  LIBRARY('DSN710.RUNLIB.LOAD')
END                                                                     01170000
//*                                                                     01180000
//SYSIN DD *
SELECT * FROM API$.EMPLOYE
//* ****** FIN DE EXECDB2 ********************                          01180000
