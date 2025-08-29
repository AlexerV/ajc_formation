//API7CTES JOB (ACCT#),'ALEXIS',MSGCLASS=H,REGION=4M,                   00010000
//    CLASS=A,MSGLEVEL=(1,1),NOTIFY=&SYSUID,COND=(4,LT)                 00020000
//*                                                                     00030000
//*  ETAPE DE COMPILATION                                               00040000
//*                                                                     00050000
//COMPIL   EXEC IGYWCL,PARM.COBOL=(ADV,OBJECT,LIB,TEST,APOST)           00060000
//COBOL.SYSIN  DD DSN=API7.SOURCE.COBOL(SOMTEST),DISP=SHR               00070000
//COBOL.SYSLIB DD DSN=CEE.SCEESAMP,DISP=SHR                             00080000
//             DD DSN=API7.SOURCE.COPY,DISP=SHR                         00081000
//*                                                                     00090000
//*  ETAPE DE LINKEDIT                                                  00100000
//*                                                                     00110000
//LKED.SYSLIB  DD DSN=API7.COBOL.LOAD,DISP=SHR                          00120000
//LKED.SYSLMOD DD DSN=API7.COBOL.LOAD,DISP=(SHR,KEEP,KEEP)              00121000
//LKED.SYSIN DD *                                                       00130000
 INCLUDE SYSLIB('ASSEQ')                                                00131000
 INCLUDE SYSLIB('SOM')                                                  00132000
 NAME SOMTEST(R)                                                        00140000
/*                                                                      00150000
