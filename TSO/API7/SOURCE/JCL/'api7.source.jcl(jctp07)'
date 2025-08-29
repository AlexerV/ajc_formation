//API7TP07 JOB (ACCT#),'ALEXIS',MSGCLASS=H,REGION=4M,                   00010000
//    CLASS=A,MSGLEVEL=(1,1),NOTIFY=&SYSUID,COND=(8,LT)                 00020003
//*                                                                     00021000
//* SUPPRIMER LE FICHIER API7.AJC.EMPLOYE.KSDS                          00022000
//*                                                                     00023000
//SUPPKSDS EXEC PGM=IDCAMS                                              00024000
//SYSPRINT DD SYSOUT=*                                                  00025000
//SYSIN    DD *                                                         00026000
 DELETE API7.AJC.EMPLOYE.KSDS                                           00027000
/*                                                                      00028000
//*                                                                     00029000
//* CREATION DU FICHIER API7.AJC.EMPLOYE.KSDS                           00029100
//*                                                                     00029200
//CREEKSDS EXEC PGM=IDCAMS                                              00029300
//SYSPRINT DD SYSOUT=*                                                  00029400
//SYSIN    DD *                                                         00029500
 DEFINE CLUSTER (NAME(API7.AJC.EMPLOYE.KSDS) -                          00029600
                   VOLUME(APIWK2)            -                          00029700
                   TRACKS(3 2)               -                          00029805
                   FREESPACE(20 20)          -                          00029900
                   KEYS(5 0)                 -                          00030000
                   RECORDSIZE(70 70)         -                          00030100
                   INDEXED)                  -                          00030200
        DATA (NAME(API7.AJC.EMPLOYE.KSDS.D)) -                          00030300
        INDEX (NAME(API7.AJC.EMPLOYE.KSDS.I))                           00030400
/*                                                                      00030500
//*                                                                     00030601
//* ALIMENTATION FICHIER API7.AJC.EMPLOYE.KSDS                          00030701
//*                                                                     00030801
//ALIMKSDS EXEC PGM=IDCAMS                                              00030901
//SYSPRINT DD SYSOUT=*                                                  00031001
//DDIN     DD DSN=API7.AJC.EMPLOYE.DATA,DISP=SHR                        00031101
//DDOUT    DD DSN=API7.AJC.EMPLOYE.KSDS,DISP=SHR                        00031201
//SYSIN    DD *                                                         00031301
 REPRO INFILE(DDIN) -                                                   00031401
       OUTFILE(DDOUT)                                                   00031501
/*                                                                      00031601
//*                                                                     00033001
//* ETAPE DE COMPILATION                                                00040001
//*                                                                     00050000
//COMPIL   EXEC IGYWCL,PARM.COBOL=(ADV,OBJECT,LIB,TEST,APOST)           00060000
//COBOL.SYSIN  DD DSN=API7.SOURCE.COBOL(TP07),DISP=SHR                  00070001
//COBOL.SYSLIB DD DSN=CEE.SCEESAMP,DISP=SHR                             00080000
//*            DD DSN=API2.COB.CPY,DISP=SHR                             00090000
//*                                                                     00100000
//*  ETAPE DE LINKEDIT                                                  00110000
//*                                                                     00120000
//LKED.SYSLMOD DD DSN=API7.COBOL.LOAD,DISP=(SHR,KEEP,KEEP)              00130000
//LKED.SYSIN DD *                                                       00140000
 NAME TP07(R)                                                           00150001
/*                                                                      00160000
