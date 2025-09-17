//API7BART JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00010004
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00020003
//****************************************************************      00030003
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(BARTI2)                    00040003
//****************************************************************      00050003
//STEP01   EXEC PGM=BARTI2                                              00060003
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00070004
//ARTICL   DD DSN=API7.AJC.ARTICL.DATA,DISP=SHR                         00080004
//IMPAIR   DD DSN=API7.AJC.IMPAIR.DATA,DISP=SHR                         00090004
//PAIR     DD DSN=API7.AJC.PAIR.DATA,DISP=SHR                           00091004
//SYSOUT   DD SYSOUT=*                                                  00092003
