//API7RUPT JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00010002
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00020000
//****************************************************************      00030000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(BARTI2)                    00040000
//****************************************************************      00050000
//STEP01   EXEC PGM=RUPT                                                00060000
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00070000
//AJFILE   DD DSN=API7.AJC.RUPT.DATA,DISP=SHR                           00080001
//SYSOUT   DD SYSOUT=*                                                  00092000
