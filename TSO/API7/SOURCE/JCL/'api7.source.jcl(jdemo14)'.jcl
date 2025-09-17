//API7D14  JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//* AFFICHE LE FICHIER API7.AJC.EMPLOYE.DATA EN HEXA (DEFAUT)    *
//****************************************************************
//STEP01   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 PRINT INDATASET(API7.AJC.EMPLOYE.DATA)
/*
//* AFFICHE LE FICHIER API7.AJC.EMPLOYE.DATA EN CHAR             *
//****************************************************************
//STEP02   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 PRINT INDATASET(API7.AJC.EMPLOYE.DATA) CHAR
/*
