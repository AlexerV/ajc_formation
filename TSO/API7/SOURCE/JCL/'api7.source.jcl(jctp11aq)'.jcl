//API7T11A JOB (ACCT#),'ALEXIS',MSGCLASS=H,REGION=4M,                   00010000
//    CLASS=A,MSGLEVEL=(1,1),NOTIFY=&SYSUID,COND=(8,LT)                 00020000
//*                                                                     00033000
//* ETAPE DE COMPILATION                                                00040000
//*                                                                     00050000
//COMPIL   EXEC IGYWCL,PARM.COBOL=(NODYNAM,ADV,OBJECT,LIB,TEST,APOST)   00060000
//COBOL.SYSIN  DD DSN=API7.SOURCE.COBOL(TP11ASEQ),DISP=SHR              00070000
//COBOL.SYSLIB DD DSN=CEE.SCEESAMP,DISP=SHR                             00080000
//             DD DSN=API7.SOURCE.COPY,DISP=SHR                         00081000
//*                                                                     00100000
//*  ETAPE DE LINKEDIT                                                  00110000
//*                                                                     00120000
//LKED.SYSLMOD DD DSN=API7.COBOL.LOAD,DISP=(SHR,KEEP,KEEP)              00130000
//LKED.SYSIN DD *                                                       00140000
 NAME TP11ASEQ(R)                                                       00150000
/*                                                                      00160000
