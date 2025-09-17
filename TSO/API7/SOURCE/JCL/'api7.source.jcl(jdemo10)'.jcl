//API7D10  JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//* COMPARE LES 2 PDS SUIVANTS :
//*    API7.SOURCE.JCL ET  PDS API7.SOURCE.JCLCOPY
//****************************************************************
//COMPFICH EXEC PGM=IEBCOMPR
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=API7.SOURCE.JCL,DISP=SHR
//SYSUT2   DD DSN=API7.SOURCE.JCLCOPY,DISP=SHR    DOIT ETRE CREE
//SYSIN    DD *
 COMPARE TYPORG=PO
/*
