//API7EXO1 JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),
//             RESTART=*
//* CREATION DU FICHIER API7.AJC.FICTEST.DATA                    *
//****************************************************************
//CREAFIC  EXEC PGM=IEFR14
//FICHIER  DD  DSN=API7.AJC.FICTEST.DATA,DISP=(NEW,CATLG,CATLG),
//     SPACE=(TRK,(3,2),RLSE),DCB=(LRECL=70,BLKSIZE=700),
//     RECFM=FB
//SYSOUT   DD SYSOUT=*
