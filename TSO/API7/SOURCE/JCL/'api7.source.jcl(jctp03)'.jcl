//API7TP03 JOB (ACCT#),'ALEXIS',MSGCLASS=H,REGION=4M,                   00010000
//    CLASS=A,MSGLEVEL=(1,1),NOTIFY=&SYSUID,COND=(4,LT)                 00020000
//*                                                                     00030000
//*  ETAPE DE COMPILATION                                               00040000
//*                                                                     00050000
//COMPIL   EXEC IGYWCL,PARM.COBOL=(ADV,OBJECT,LIB,TEST,APOST)           00060000
//COBOL.SYSIN  DD DSN=API7.SOURCE.COBOL(TP03),DISP=SHR                  00070000
//COBOL.SYSLIB DD DSN=CEE.SCEESAMP,DISP=SHR                             00080000
//*            DD DSN=API2.COB.CPY,DISP=SHR                             00090000
//*                                                                     00100000
//*  ETAPE DE LINKEDIT                                                  00110000
//*                                                                     00120000
//LKED.SYSLMOD DD DSN=API7.COBOL.LOAD,DISP=(SHR,KEEP,KEEP)              00130000
//LKED.SYSIN DD *                                                       00140000
 NAME TP03(R)                                                           00150000
/*                                                                      00160000
