//API7TP1B JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00020000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00030000
//****************************************************************      00040000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(TP01B)                     00050000
//****************************************************************      00060000
//STEP01   EXEC PGM=TP01B                                               00070001
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00080000
//FEMPLOYE DD DSN=API7.AJC.EMPLOYE.DATA,DISP=SHR                        00090001
//SYSOUT   DD SYSOUT=*                                                  00100000
