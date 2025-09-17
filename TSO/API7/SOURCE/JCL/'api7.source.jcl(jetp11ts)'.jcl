//API7ET11 JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),      00020000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00030000
//****************************************************************      00040000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(SOM)                       00050000
//****************************************************************      00060000
//JSOMT    EXEC PGM=TP11TEST                                            00070000
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00080000
//SYSOUT   DD SYSOUT=*                                                  00100000
