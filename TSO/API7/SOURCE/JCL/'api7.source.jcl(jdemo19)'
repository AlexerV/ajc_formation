//API7D19  JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//* COPIER LE CONTENU FICHIER GARES VERS UN NOUVEAU           *
//*                   FICHIER GARES2
//****************************************************************
//COPIE    EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=API7.AJC.GARES.DATA,DISP=SHR
//SYSUT2   DD DSN=API7.AJC.GARES3.DATA,DISP=(NEW,CATLG,DELETE),
//     DCB=*.COPIE.SYSUT1,DSORG=PS,
//     SPACE=(TRK,(1,2),RLSE)
//SYSIN    DD DUMMY
