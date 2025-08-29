//API7CAL3 JOB (ACCT#),'CALDIST',MSGCLASS=H,REGION=4M,                  00010000
//    CLASS=A,MSGLEVEL=(1,1),NOTIFY=&SYSUID,TIME=(0,5),                 00020000
//    COND=(4,LT)                                                       00030000
//*                                                                     00040000
//         JCLLIB  ORDER=SDJ.FORM.PROCLIB                               00050000
//*                                                                     00060000
//COMPCIC  EXEC COMPCICS,NOMPGM=A7CALC3                                 00070000
//STEPCIC.SYSIN    DD DSN=API7.SOURCE.COBOL(&NOMPGM),DISP=SHR           00080000
//STEPCOB.SYSLIB   DD                                                   00090000
//                 DD                                                   00100000
//                 DD DSN=API7.SOURCE.COPY,DISP=SHR                     00110000
/*                                                                      00120000
