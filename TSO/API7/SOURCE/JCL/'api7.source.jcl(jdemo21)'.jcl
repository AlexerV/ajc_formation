//API7D21  JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//* DEFINITION DE LA BIBLIO CONTENANT LA PROCEDURE
//****************************************************************
//LIBPROC  JCLLIB ORDER=API7.SOURCE.PROCS
//****************************************************************
//APPEL    EXEC PROC=PROCAT
//STEP01.CRETEST DD DSN=API7.AJC.TEST20.DATA,
//           SPACE=(TRK,(5,3),RLSE)
//STEP01.SYSOUT  DD SYSOUT=B
