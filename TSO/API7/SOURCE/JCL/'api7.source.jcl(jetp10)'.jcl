//API7TP10 JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00010001
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00020001
//****************************************************************      00030001
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(TP10)                      00040001
//****************************************************************      00050001
//STEP01   EXEC PGM=TP10                                                00060001
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00070001
//FF1      DD DSN=API7.AJC.F1.DATA,DISP=SHR                             00080001
//FF2      DD DSN=API7.AJC.F2.DATA,DISP=SHR                             00081001
//SYSOUT   DD SYSOUT=*                                                  00090001
