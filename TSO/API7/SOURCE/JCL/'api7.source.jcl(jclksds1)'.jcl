//API7EXO1 JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),COND=(8,LT)
//* CREATION DU FICHIER API7.AJC.GARES.KSDS                 *
//****************************************************************
//CREKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 DEFINE CLUSTER (NAME(API7.AJC.GARES.KSDS)    -
                    VOLUME(APIWK2)            -
                    TRACKS(3 2)               -
                    FREESPACE(20 20)          -
                    KEYS(5 0)                 -
                    RECORDSIZE(70 70)         -
                    INDEXED)                  -
            DATA (NAME(API7.AJC.GARES.KSDS.D)) -
           INDEX (NAME(API7.AJC.GARES.KSDS.I))
 /*
 //* ALIMENTATION  DU FICHIER API9.AJC.GARES.KSDS              *
 //*     A PARTIR  DU FICHIER API9.AJC.GARES.DATA              *
//****************************************************************
//ALIMKSDS EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//DDIN     DD DSN=API7.AJC.GARES.DATA,DISP=SHR
//DDOUT    DD DSN=API7.AJC.GARES.KSDS,DISP=SHR
//SYSIN    DD *
 REPRO INFILE(DDIN)  -
        OUTFILE(DDOUT)
/*
