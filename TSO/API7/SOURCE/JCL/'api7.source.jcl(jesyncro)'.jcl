//API7SYNC JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00010000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00020000
//****************************************************************      00030000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(SYNCRO)                    00040000
//****************************************************************      00050000
//STEP01   EXEC PGM=SYNCRO                                              00060000
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00070000
//PAYS     DD DSN=API7.AJC.PAYS.DATA,DISP=SHR                           00080000
//CAPITA   DD DSN=API7.AJC.CAPITAL.DATA,DISP=SHR                        00090000
//SYSOUT   DD SYSOUT=*                                                  00092000
