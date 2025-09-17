//APIXXDB JOB NOTIFY=&SYSUID,CLASS=A,MSGCLASS=H
//*
//*------------------------------------------------------*
//* ===> CHANGER XX PAR N¢ DU GROUPE   (XX 01 @ 15)      *
//*      CHANGER     APIXXDB$ PAR LE NOM DU PROGRAMME    *
//*------------------------------------------------------*
//*
//*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
//*   CETTE PROCEDURE CONTIENT 5 STEPS :                             *
//*       ======> SI RE-EXECUTION FAIRE RESTART AU "STEPRUN"         *
//*                                                                  *
//*         1/  PRECOMPILE  DB2                                      *
//*         2/  COMPILE COBOL II                                     *
//*         3/  LINKEDIT  (DANS FORM.CICS.LOAD)                      *
//*         4/  BIND PLAN PARTIR DE APIXX.SOURCE.DBRMLIB             *
//*         5/  EXECUTE DU PROGRAMME                                 *
//*  LES   PROCEDURES  SE TROUVENT DANS SDJ.FORM.PROCLIB             *
//*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
//PROCLIB  JCLLIB ORDER=SDJ.FORM.PROCLIB
//*
//         SET SYSUID=APIXX,
//             NOMPGM=APIXXDB$
//*
//APPROC   EXEC COMPDB2
//STEPDB2.SYSLIB   DD DSN=FORMXX.SOURCE.DCLGEN,DISP=SHR
//                 DD DSN=FORMXX.SOURCE.COPY,DISP=SHR
//STEPDB2.SYSIN    DD DSN=FORMXX.SOURCE.DB2(&NOMPGM),DISP=SHR
//STEPDB2.DBRMLIB DD DSN=FORMXX.SOURCE.DBRMLIB(&NOMPGM),DISP=SHR
//STEPLNK.SYSLMOD  DD DSN=FORMXX.SOURCE.PGMLIB(&NOMPGM),DISP=SHR
//*
//*--- ETAPE DE BIND --------------------------------------
//*
//BIND     EXEC PGM=IKJEFT01,COND=(4,LT)
//*DBRMLIB  DD  DSN=&SYSUID..DB2.DBRMLIB,DISP=SHR
//DBRMLIB  DD  DSN=FORMXX.SOURCE.DBRMLIB,DISP=SHR
//SYSTSPRT DD  SYSOUT=*,OUTLIM=25000
//SYSTSIN  DD  *
  DSN SYSTEM (DSN1)
  BIND PLAN      (APIXXDB$) -
       QUALIFIER (APIXX)    -
       ACTION    (REPLACE) -
       MEMBER    (APIXXDB$) -
       VALIDATE  (BIND)    -
       ISOLATION (CS)      -
       ACQUIRE   (USE)     -
       RELEASE   (COMMIT)  -
       EXPLAIN   (NO)
//*
//STEPRUN  EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=FORMXX.SOURCE.PGMLIB,DISP=SHR
//SYSOUT   DD  SYSOUT=*,OUTLIM=1000
//SYSTSPRT DD  SYSOUT=*,OUTLIM=2500
//SYSTSIN  DD  *
  DSN SYSTEM (DSN1)
  RUN PROGRAM(APIXXDB$) PLAN (APIXXDB$) PARMS('11001')
//
