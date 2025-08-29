//API7D18  JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),COND=(8,LT)
//* SUPPRIMER LE FICHIER API7.AJC.EMPLOYE.ESDS                   *
//****************************************************************
//SUPPKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DELETE API7.AJC.EMPLOYE.ESDS
/*
//* CREATION DU FICHIER API7.AJC.EMPLOYE.ESDS                    *
//****************************************************************
//CREESDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DEFINE CLUSTER (NAME(API7.AJC.EMPLOYE.ESDS) -
                    VOLUME(APIWK2)           -
                    TRACKS(3 2)              -
                    RECORDSIZE(70 70)        -
                    NONINDEXED)                 -
          DATA (NAME(API7.AJC.EMPLOYE.ESDS.DATA))
/*
//* ALIMENTATION DU FICHIER API7.AJC.EMPLOYE.ESDS                *
//*     A PARTIR DU FICHIER API7.AJC.EMPLOYE.DATA
//****************************************************************
//ALIMESDS EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//DDIN     DD DSN=API7.AJC.EMPLOYE.DATA,DISP=SHR
//DDOUT    DD DSN=API7.AJC.EMPLOYE.ESDS,DISP=SHR
//SYSIN    DD *
 REPRO INFILE(DDIN) -
       OUTFILE(DDOUT)
 PRINT INDATASET(API7.AJC.EMPLOYE.DATA) CHAR
 PRINT INDATASET(API7.AJC.EMPLOYE.ESDS) CHAR
/*
