//API7D22  JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//PROCIN01 PROC NOMFIC=API7.AJC.FIC02.DATA,LG=30,BK=300
//STEP01   EXEC PGM=IEFBR14
//SYSOUT   DD SYSOUT=*
//CRETEST  DD DSN=&NOMFIC,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=&LG,RECFM=FB,BLKSIZE=&BK),DSORG=PS,
//     SPACE=(TRK,(3,2),RLSE)
//         PEND
//****************************************************************
//APPEL01  EXEC PROC=PROCIN01,NOMFIC=API7.AJC.FIH11.DATA,
//         LG=50,BK=500
//****************************************************************
//APPEL02  EXEC PROC=PROCIN01,NOMFIC=API7.AJC.FIH12.DATA,
//         LG=60
