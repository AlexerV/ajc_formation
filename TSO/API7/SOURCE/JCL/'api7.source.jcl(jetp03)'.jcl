//API7TP03 JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00020000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00030000
//****************************************************************      00040000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(TP03)                      00050000
//****************************************************************      00060000
//STEP01   EXEC PGM=TP03                                                00070000
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00080000
//FEMPK    DD DSN=API7.AJC.EMPLOYE.KSDS,DISP=SHR                        00090000
//SYSOUT   DD SYSOUT=*                                                  00100000
//SYSIN    DD *                                                         00110000
45003                                                                   00120001
/*                                                                      00130000
