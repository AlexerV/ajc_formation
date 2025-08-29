//API7D20  JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//PROCIN01 PROC
//STEP01   EXEC PGM=IEFBR14
//SYSOUT   DD SYSOUT=*
//CRETEST  DD DSN=API7.AJC.TEST02.DATA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=25,RECFM=FB,BLKSIZE=250),DSORG=PS,
//     SPACE=(TRK,(3,2),RLSE)
//         PEND
//****************************************************************
//STEP02   EXEC PROC=PROCIN01
