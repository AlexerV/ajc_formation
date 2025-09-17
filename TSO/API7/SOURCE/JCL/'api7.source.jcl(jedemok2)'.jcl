//API7DK02 JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00020000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00030000
//****************************************************************      00040000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(DEMOK02)                   00050000
//****************************************************************      00060000
//STEP01   EXEC PGM=DEMOK02                                             00070000
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00080000
//FGAREK   DD DSN=API7.AJC.GARES.KSDS,DISP=SHR                          00090002
//SYSOUT   DD SYSOUT=*                                                  00100000
