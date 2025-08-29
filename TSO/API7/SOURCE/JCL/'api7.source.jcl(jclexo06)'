//API7EX6  JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//PROCIN01 PROC NOMFIC=API7.AJC.EXO06.DATA,SORTIE=H
//STEP01   EXEC PGM=IEFBR14
//SYSOUT   DD SYSOUT=&SORTIE
//CRETEST  DD DSN=&NOMFIC,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=&LG,RECFM=FB,BLKSIZE=&BK),DSORG=PS,
//     SPACE=(TRK,(3,2),RLSE)
//         PEND
//****************************************************************
//APPEL01  EXEC PROC=PROCIN01,NOMFIC=&SYSUID..AJC.BENJO.DATA,
//          SORTIE=Z
//****************************************************************
//APPEL02  EXEC PROC=PROCIN01,NOMFIC=&SYSUID..AJC.DEFO.DATA
