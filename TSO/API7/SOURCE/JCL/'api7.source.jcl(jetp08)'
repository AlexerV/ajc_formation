//API7TP08 JOB (ACCT#),'ALEXIS',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),      00010000
//             NOTIFY=&SYSUID,REGION=4M,TIME=(,30),COND=(8,LT)          00020000
//****************************************************************      00020100
//* SUPPRIMER LE FICHIER API7.AJC.EDITION.DATA                 *        00020200
//****************************************************************      00020300
//SUPPED   EXEC PGM=IDCAMS                                              00021003
//SYSPRINT DD SYSOUT=*                                                  00021100
//SYSIN    DD *                                                         00021200
 DELETE API7.AJC.EDITION.DATA                                           00021300
/*                                                                      00022000
//****************************************************************      00030000
//* EXECUTION DU PROGRAMME API7.SOURCE.COBOL(TP08)                      00031000
//****************************************************************      00031100
//STEP01   EXEC PGM=TP08                                                00031201
//STEPLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                              00031300
//STUDENT  DD DSN=API7.AJC.STUDENTS.DATA,DISP=SHR                       00031409
//EDITION  DD DSN=API7.AJC.EDITION.DATA,DISP=(NEW,CATLG,DELETE),        00031500
//             DCB=(LRECL=39,RECFM=FB,BLKSIZE=390),                     00031612
//             SPACE=(TRK,(2,3),RLSE)                                   00031708
//SYSOUT   DD SYSOUT=*                                                  00031800
