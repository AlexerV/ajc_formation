//API7SUPP JOB (ACCT#),'STEEVEA',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),
//             RESTART=*
//* SUPPRESSION DU FICHIER API7.AJC.TEST2.DATA                      *
//****************************************************************
//SUPPR3   EXEC PGM=IEFBR14
//FICHIER  DD  DSN=API7.AJC.TEST2.DATA,DISP=(OLD,DELETE)
//SYSOUT   DD SYSOUT=*
