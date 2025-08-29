//API7D23  JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//PROCIN01 PROC NOMFIC=API7.AJC.FIC04.DATA,BK=300
//STEP01   EXEC PGM=IEFBR14
//SYSOUT   DD SYSOUT=*
//CRETEST  DD DSN=&NOMFIC,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=&LG,RECFM=FB,BLKSIZE=&BK),DSORG=PS,
//     SPACE=(TRK,(3,2),RLSE)
//         PEND
//****************************************************************
// SET LG=25
//****************************************************************
//APPEL01  EXEC PROC=PROCIN01,NOMFIC=API7.AJC.FIH15.DATA,
//         BK=500
//****************************************************************
//APPEL02  EXEC PROC=PROCIN01,NOMFIC=API7.AJC.FIH16.DATA
//****************************************************************
//APPEL03  EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=API7.AJC.COMM.DATA,DISP=SHR
//         DD DSN=API7.AJC.COMMD.DATA,DISP=SHR
//SYSUT2   DD DSN=API7.AJC.COMM51.DATA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=&LG,RECFM=FB,BLKSIZE=250),DSORG=PS,
//     SPACE=(TRK,(3,2),RLSE)
//SYSIN    DD DUMMY
