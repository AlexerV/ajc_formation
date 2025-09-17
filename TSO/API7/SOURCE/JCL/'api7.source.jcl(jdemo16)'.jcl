//API7D16  JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//* SUPPRIMER LE FICHIER API7.AJC.EMPLOYE.KSDS                   *
//****************************************************************
//SUPPKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DELETE API7.AJC.EMPLOYE.KSDS
/*
//* CREATION DU FICHIER API7.AJC.EMPLOYE.KSDS                    *
//****************************************************************
//CREKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DEFINE CLUSTER (NAME(API7.AJC.EMPLOYE.KSDS) -
                    VOLUME(APIWK2)           -
                    TRACKS(3 2)              -
                    FREESPACE(20 20)         -
                    KEYS(5 0)                -
                    RECORDSIZE(70 70)        -
                    INDEXED)                 -
          DATA (NAME(API7.AJC.EMPLOYE.KSDS.D)) -
         INDEX (NAME(API7.AJC.EMPLOYE.KSDS.I))
/*
//* ALIMENTATION DU FICHIER API7.AJC.EMPLOYE.KSDS                *
//*      A PARTIR DU FICHIER API7.AJC.EMPLOYE.DATA
//****************************************************************
//ALIMKSDS EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//DDIN     DD DSN=API7.AJC.EMPLOYE.DATA,DISP=SHR
//DDOUT    DD DSN=API7.AJC.EMPLOYE.KSDS,DISP=SHR
//SYSIN    DD *
 REPRO INFILE(DDIN) -
       OUTFILE(DDOUT)
/*
//* AFFICHAGE DU FICHIER API7.AJC.EMPLOYE.DATA                *
//*      ET DU FICHIER API7.AJC.EMPLOYE.KSDS
//****************************************************************
//AFFICHE  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 PRINT INDATASET(API7.AJC.EMPLOYE.DATA) CHAR
 PRINT INDATASET(API7.AJC.EMPLOYE.KSDS) CHAR
/*
