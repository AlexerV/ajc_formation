//API7LSEQ JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(LECTSEQ)
//****************************************************************
//STEP01   EXEC PGM=LECTSEQ
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR
//FGARES   DD DSN=API7.AJC.GARES.DATA,DISP=SHR
//SYSOUT   DD SYSOUT=*
