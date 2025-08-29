//API7GARE JOB (ACCT#),'ALEXISV',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30)
//* SUPPRIMER LE FICHIER API7.AJC.GARESE.KSDS                    *
//****************************************************************
//SUPPKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DELETE API7.AJC.GARES.KSDS
/*
//* CREATION DU FICHIER API7.AJC.GARES.KSDS                      *
//****************************************************************
//CREKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DEFINE CLUSTER (NAME(API7.AJC.GARES.KSDS) -
                    VOLUME(APIWK2)           -
                    TRACKS(3 2)              -
                    FREESPACE(20 20)         -
                    KEYS(2 0)                -
                    RECORDSIZE(30 30)        -
                    INDEXED)                 -
          DATA (NAME(API7.AJC.GARES.KSDS.D)) -
         INDEX (NAME(API7.AJC.GARES.KSDS.I))
/*
//* ALIMENTATION DU FICHIER API7.AJC.GARES.KSDS                  *
//*      A PARTIR DU FICHIER API7.AJC.GARES.DATA
//****************************************************************
//ALIMKSDS EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//DDIN     DD DSN=API7.AJC.GARES.DATA,DISP=SHR
//DDOUT    DD DSN=API7.AJC.GARES.KSDS,DISP=SHR
//SYSIN    DD *
 REPRO INFILE(DDIN) -
       OUTFILE(DDOUT)
/*
//* AFFICHAGE DU FICHIER API7.AJC.GARES.DATA                  *
//*      ET DU FICHIER API7.AJC.GARES.KSDS
//****************************************************************
//AFFICHE  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 PRINT INDATASET(API7.AJC.GARES.DATA) CHAR
 PRINT INDATASET(API7.AJC.GARES.KSDS) CHAR
/*
