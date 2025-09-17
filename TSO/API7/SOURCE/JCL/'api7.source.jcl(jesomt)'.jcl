//API7ETES JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),      00020001
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)                      00030001
//****************************************************************      00040001
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(SOM)                       00050001
//****************************************************************      00060001
//JSOMT    EXEC PGM=SOMTEST                                             00070002
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00080001
//SYSOUT   DD SYSOUT=*                                                  00100001
