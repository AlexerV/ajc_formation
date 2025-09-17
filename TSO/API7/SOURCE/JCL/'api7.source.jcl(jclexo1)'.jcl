//API7EXO1 JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),
//             RESTART=*
//* SUPPRESSION DU FICHIER API7.AJC.GARES.KSDS                   *
//****************************************************************
//SUPPR3   EXEC PGM=IEFBR14
//FICHIER  DD DSN=API9.AJC.GARES.KSDS,DISP=(OLD,DELETE)
//SYSOUT   DD SYSOUT=*
