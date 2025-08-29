000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  PRINC.                                              PRINC
000030 AUTHOR.         programme principal.                             PRINC
000040 DATE-COMPILED.   23/07/99.                                       PRINC
000050 ENVIRONMENT DIVISION.                                            PRINC
000060 CONFIGURATION SECTION.                                           PRINC
000070 SOURCE-COMPUTER. IBM-370.                                        PRINC
000080 OBJECT-COMPUTER. IBM-370.                                        PRINC
000090 DATA DIVISION.                                                   PRINC
000100 WORKING-STORAGE SECTION.                                         PRINC
000110 01               PARAMETRES.                                     7WA100
000120   05             WA00-NOLIG    PICTURE 99.                       7WA120
000130   05             WA00-QUPLA0   PICTURE 9(4).                     7WA130
000140   05             FILLER        PIC X(74).                        7WA140
000150 01               WA00-PGM      PIC X(8) VALUE                    7WA300
000160                  'SSPGM'.                                        7WA300
000170 01               DEBUT-WSS.                                      PRINC
000180   05             FILLER        PICTURE X(7) VALUE                PRINC
000190                                'WORKING'.                        PRINC
000200   05             IK            PICTURE X.                        PRINC
000210 01               CONSTANTES-PAC.                                 PRINC
000220   05             FILLER        PICTURE X(60) VALUE               PRINC
000230     '0068 LBA23/07/99PRINC TEST    14:00:15PRINC   BVAP23/07/1999PRINC
000240-    ''.                                                           PRINC
000250 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        PRINC
000260   05             NUGNA         PICTURE X(5).                     PRINC
000270   05             APPLI         PICTURE X(3).                     PRINC
000280   05             DATGN         PICTURE X(8).                     PRINC
000290   05             PROGR         PICTURE X(6).                     PRINC
000300   05             CODUTI        PICTURE X(8).                     PRINC
000310   05             TIMGN         PICTURE X(8).                     PRINC
000320   05             PROGE         PICTURE X(8).                     PRINC
000330   05             COBASE        PICTURE X(4).                     PRINC
000340   05             DATGNC        PICTURE X(10).                    PRINC
000350 01               DATCE.                                          PRINC
000360   05             CENTUR        PICTURE XX VALUE                  PRINC
000370                                '19'.                             PRINC
000380   05             DATOR.                                          PRINC
000390     10           DATOA         PICTURE XX.                       PRINC
000400     10           DATOM         PICTURE XX.                       PRINC
000410     10           DATOJ         PICTURE XX.                       PRINC
000420 01               VARIABLES-CONDITIONNELLES.                      PRINC
000430   05             FT            PICTURE X VALUE '0'.              PRINC
000440 01               ZONES-UTILISATEUR PICTURE X.                    PRINC
000450 PROCEDURE DIVISION.                                              PRINC
000460 N01.                                                             PRINC
000470*          NOTE *************************************.            PRINC
000480*               *                                   *             PRINC
000490*               *INITIALISATIONS                    *             PRINC
000500*               *                                   *             PRINC
000510*               *************************************.            PRINC
000520 F01.                                                             PRINC
000530     EXIT.                                                        PRINC
000540 F01-FN.                                                          PRINC
000550     EXIT.                                                        PRINC
000560 N03.                                                             P000
000570*          NOTE *************************************.            P000
000580*               *                                   *             P000
000590*               *SOUS-PROGRAMME                     *             P000
000600*               *                                   *             P000
000610*               *************************************.            P000
000620 F03.                                                             P000
000630     EXIT.                                                        P000
000640 N03CA.                                                           P000
000650*          NOTE *APPEL                              *.            P000
000660 F03CA.                                                           P000
000670     ACCEPT PARAMETRES                                            P100
000680     CALL WA00-PGM USING PARAMETRES                               P200
000690     DISPLAY PARAMETRES ' '                                       P300
000700     WA00-NOLIG                                                   P305
000710     ' MULTIPLIE PAR LUI-MEME '                                   P310
000720     ' DONNE ' WA00-QUPLA0                                        P320
000730     MOVE ALL '1' TO FT GO TO F20.                                P900
000740 F03CA-FN.                                                        P900
000750     EXIT.                                                        P900
000760 F03-FN.                                                          P900
000770     EXIT.                                                        P900
000780*          NOTE *  DEBUT ITERATION DU PROGRAMME     *.            PRINC
000790 F05.                                                             PRINC
000800     EXIT.                                                        PRINC
000810 N20.                                                             PRINC
000820*          NOTE *************************************.            PRINC
000830*               *                                   *             PRINC
000840*               *FIN DE TRAITEMENT                  *             PRINC
000850*               *                                   *             PRINC
000860*               *************************************.            PRINC
000870 F20.                                                             PRINC
000880     IF      FT  =  ALL '1'                                       PRINC
000890         NEXT SENTENCE                                            PRINC
000900     ELSE                                                         PRINC
000910         GO TO F20-FN.                                            PRINC
000920 F2099. STOP RUN.                                                 PRINC
000930 F2099-FN.                                                        PRINC
000940     EXIT.                                                        PRINC
000950 F20-FN.                                                          PRINC
000960     EXIT.                                                        PRINC
000970 F9099-ITER-FN.                                                   PRINC
000980     GO TO F05.                                                   PRINC
