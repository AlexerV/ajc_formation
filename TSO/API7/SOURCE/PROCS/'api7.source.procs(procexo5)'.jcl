//STEP01   EXEC PGM=IEFBR14                                             00010000
//SYSOUT   DD SYSOUT=&SORTIE                                            00020001
//CREEFIC  DD DSN=&NOMFIC,DISP=(NEW,CATLG,DELETE),                      00030001
//    DCB=(LRECL=80,RECFM=FB,BLKSIZE=800),DSORG=PS,                     00040001
//    SPACE=(TRK,(3,2),RLSE)                                            00050000
