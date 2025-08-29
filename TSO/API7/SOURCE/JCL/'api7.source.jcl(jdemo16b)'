//API9D16  JOB (ACCT#),'STEEVEA',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),     00010000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),COND=(8,LT)          00020003
//* SUPPRIMER LE FICHIER API9.AJC.EMPLOYE.KSDS                 *        00030001
//****************************************************************      00040000
//SUPPKSDS EXEC PGM=IDCAMS                                              00050001
//SYSPRINT DD SYSOUT=*                                                  00060000
//SYSIN    DD *                                                         00070000
 DELETE API9.AJC.EMPLOYE.KSDS                                           00080001
/*                                                                      00080101
//* CREATION DU FICHIER API9.AJC.EMPLOYE.KSDS                 *         00080201
//****************************************************************      00080301
//CREKSDS  EXEC PGM=IDCAMS                                              00080401
//SYSPRINT DD SYSOUT=*                                                  00080501
//SYSIN    DD *                                                         00080601
 DEFINE CLUSTER (NAME(API9.AJC.EMPLOYE.KSDS)  -                         00080701
                    VOLUME(APIWK2)            -                         00080801
                    TRACKS(3 2)               -                         00080901
                    FREESPACE(20 20)          -                         00081001
                    KEYS(5 0)                 -                         00081101
                    RECORDSIZE(70 70)         -                         00081201
                    INDEXED)                  -                         00081301
           DATA (NAME(API9.AJC.EMPLOYE.KSDS.D)) -                       00081401
          INDEX (NAME(API9.AJC.EMPLOYE.KSDS.I))                         00081501
/*                                                                      00081601
//* ALIMENTATION  DU FICHIER API9.AJC.EMPLOYE.KSDS              *       00081701
//*     A PARTIR  DU FICHIER API9.AJC.EMPLOYE.DATA              *       00081801
//****************************************************************      00081901
//ALIMKSDS EXEC PGM=IDCAMS                                              00082001
//SYSPRINT DD SYSOUT=*                                                  00082101
//DDIN     DD DSN=API9.AJC.EMPLOYE.DATA,DISP=SHR                        00082201
//DDOUT    DD DSN=API9.AJC.EMPLOYE.KSDS,DISP=SHR                        00082301
//SYSIN    DD *                                                         00082401
 REPRO INFILE(DDIN)  -                                                  00082501
       OUTFILE(DDOUT)                                                   00082601
/*                                                                      00082701
//* AFFICHAGE   DU FICHIER API9.AJC.EMPLOYE.DATA              *         00083000
//*          ET DU FICHIER API9.AJC.EMPLOYE.KSDS              *         00084000
//AFFICHE  EXEC PGM=IDCAMS                                              00085000
//SYSPRINT DD SYSOUT=*                                                  00086000
//SYSIN    DD *                                                         00087000
 PRINT INDATASET(API9.AJC.EMPLOYE.DATA) CHAR                            00088000
 PRINT INDATASET(API9.AJC.EMPLOYE.KSDS) CHAR                            00089000
/*                                                                      00090000
