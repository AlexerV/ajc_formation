000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  SSPGM.                                              SSPGM
000030 AUTHOR.         sous programme.                                  SSPGM
000040 DATE-COMPILED.   23/07/97.                                       SSPGM
000050 ENVIRONMENT DIVISION.                                            SSPGM
000060 CONFIGURATION SECTION.                                           SSPGM
000070 SOURCE-COMPUTER. IBM-370.                                        SSPGM
000080 OBJECT-COMPUTER. IBM-370.                                        SSPGM
000090 DATA DIVISION.                                                   SSPGM
000100 WORKING-STORAGE SECTION.                                         SSPGM
000110 01               DEBUT-WSS.                                      SSPGM
000120   05             FILLER        PICTURE X(7) VALUE                SSPGM
000130                                'WORKING'.                        SSPGM
000140   05             IK            PICTURE X.                        SSPGM
000150 01               CONSTANTES-PAC.                                 SSPGM
000160   05             FILLER        PICTURE X(60) VALUE               SSPGM
000170     '0067 LBA23/07/97SSPGM TEST    11:54:50SSPGM   BVAP23/07/1997SSPGM
000180-    ''.                                                          SSPGM
000190 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        SSPGM
000200   05             NUGNA         PICTURE X(5).                     SSPGM
000210   05             APPLI         PICTURE X(3).                     SSPGM
000220   05             DATGN         PICTURE X(8).                     SSPGM
000230   05             PROGR         PICTURE X(6).                     SSPGM
000240   05             CODUTI        PICTURE X(8).                     SSPGM
000250   05             TIMGN         PICTURE X(8).                     SSPGM
000260   05             PROGE         PICTURE X(8).                     SSPGM
000270   05             COBASE        PICTURE X(4).                     SSPGM
000280   05             DATGNC        PICTURE X(10).                    SSPGM
000290 01               DATCE.                                          SSPGM
000300   05             CENTUR        PICTURE XX VALUE                  SSPGM
000310                                '19'.                             SSPGM
000320   05             DATOR.                                          SSPGM
000330     10           DATOA         PICTURE XX.                       SSPGM
000340     10           DATOM         PICTURE XX.                       SSPGM
000350     10           DATOJ         PICTURE XX.                       SSPGM
000360 01               VARIABLES-CONDITIONNELLES.                      SSPGM
000370   05             FT            PICTURE X VALUE '0'.              SSPGM
000380 01               ZONES-UTILISATEUR PICTURE X.                    SSPGM
000390 LINKAGE SECTION.                                                 701100
000400 01               PARAMETRES.                                     701120
000410   05             WA00-NOLIG    PICTURE 99.                       701130
000420   05             WA00-QUPLA0   PICTURE 9(4).                     701140
000430   05             FILLER        PIC X(74).                        701150
000440 PROCEDURE DIVISION USING PARAMETRES.                             799100
000450 N01.                                                             SSPGM
000510 F01.                                                             SSPGM
000520     EXIT.                                                        SSPGM
000530 F01-FN.                                                          SSPGM
000540     EXIT.                                                        SSPGM
000550 N03.                                                             P000
000610 F03.                                                             P000
000620     EXIT.                                                        P000
000630 N03CA.                                                           P000
000650 F03CA.                                                           P000
000660     MULTIPLY WA00-NOLIG BY WA00-NOLIG GIVING WA00-QUPLA0         P100
000670     MOVE ALL '1' TO FT GO TO F20.                                P900
000680 F03CA-FN.                                                        P900
000690     EXIT.                                                        P900
000700 F03-FN.                                                          P900
000710     EXIT.                                                        P900
000730 F05.                                                             SSPGM
000740     EXIT.                                                        SSPGM
000750 N20.                                                             SSPGM
000810 F20.                                                             SSPGM
000820     IF      FT  =  ALL '1'                                       SSPGM
000830         NEXT SENTENCE                                            SSPGM
000840     ELSE                                                         SSPGM
000850         GO TO F20-FN.                                            SSPGM
000860 F2099. STOP RUN.                                                 SSPGM
000870 F2099-FN.                                                        SSPGM
000880     EXIT.                                                        SSPGM
000890 F20-FN.                                                          SSPGM
000900     EXIT.                                                        SSPGM
000910 F9099-ITER-FN.                                                   SSPGM
000920     GO TO F05.                                                   SSPGM
