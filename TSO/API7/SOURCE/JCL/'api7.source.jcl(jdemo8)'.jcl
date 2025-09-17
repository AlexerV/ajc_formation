//API7D8   JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//****************************************************************
//* AFFICHER EN SYSOUT LE CONTENU DES FICHIERS
//*      GARES ET GARES2
//****************************************************************
//AFFICHE  EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=API7.AJC.GARES.DATA,DISP=SHR
//         DD DSN=API7.AJC.GARES2.DATA,DISP=SHR
//SYSUT2   DD SYSOUT=*
//SYSIN    DD DUMMY
