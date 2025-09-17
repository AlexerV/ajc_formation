//API7GARE JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//* COMPARE LES 2 FICHIERS SUIVANTS :
//*    API7.AJC.GARES.DATA ET API7.AJC.GARES2.DATA
//****************************************************************
//COMPFICH EXEC PGM=IEBCOMPR
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=API7.AJC.GARES.DATA,DISP=SHR
//SYSUT2   DD DSN=API7.AJC.GARES2.DATA,DISP=SHR
//SYSIN    DD *
 COMPARE TYPORG=PS
/*
