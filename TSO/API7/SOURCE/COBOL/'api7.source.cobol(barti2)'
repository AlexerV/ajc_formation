000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  BARTI2.                                             BARTI2
000030 AUTHOR.         lire un fichier et ecrire.                       BARTI2
000040 DATE-COMPILED.   17/07/97.                                       BARTI2
000050 ENVIRONMENT DIVISION.                                            BARTI2
000060 CONFIGURATION SECTION.                                           BARTI2
000070 SOURCE-COMPUTER. IBM-370.                                        BARTI2
000080 OBJECT-COMPUTER. IBM-370.                                        BARTI2
000090 INPUT-OUTPUT SECTION.                                            BARTI2
000100 FILE-CONTROL.                                                    BARTI2
000110      SELECT     AR-FICHIER    ASSIGN    ARTICL.                  BARTI2
000120      SELECT     BR-FICHIER    ASSIGN    IMPAIR.                  BARTI2
000130      SELECT     CR-FICHIER    ASSIGN    PAIR.                    BARTI2
000140 DATA DIVISION.                                                   BARTI2
000150 FILE SECTION.                                                    BARTI2
000160 FD                 AR-FICHIER                                    BARTI2
000170      BLOCK              00000 RECORDS                            BARTI2
000180      DATA RECORD                                                 BARTI2
000190                    AR00                                          BARTI2
000200           LABEL RECORD STANDARD.                                 BARTI2
000210 01               AR00.                                           BARTI2
000220   10             AR00-NOART    PICTURE 9(5).                     BARTI2
000230   10             AR00-LIART    PICTURE X(20).                    BARTI2
000240   10             AR00-FILLER   PICTURE X(5).                     BARTI2
000250 FD                 BR-FICHIER                                    BARTI2
000260      BLOCK              00000 RECORDS                            BARTI2
000270      DATA RECORD                                                 BARTI2
000280                    BR00                                          BARTI2
000290           LABEL RECORD STANDARD.                                 BARTI2
000300 01               BR00.                                           BARTI2
000310   10             BR00-NOART    PICTURE 9(5).                     BARTI2
000320   10             BR00-LIART    PICTURE X(20).                    BARTI2
000330   10             BR00-FILLER   PICTURE X(5).                     BARTI2
000340 FD                 CR-FICHIER                                    BARTI2
000350      BLOCK              00000 RECORDS                            BARTI2
000360      DATA RECORD                                                 BARTI2
000370                    CR00                                          BARTI2
000380           LABEL RECORD STANDARD.                                 BARTI2
000390 01               CR00.                                           BARTI2
000400   10             CR00-NOART    PICTURE 9(5).                     BARTI2
000410   10             CR00-LIART    PICTURE X(20).                    BARTI2
000420   10             CR00-FILLER   PICTURE X(5).                     BARTI2
000430 WORKING-STORAGE SECTION.                                         BARTI2
000440 01               WA00-FLPAIR   VALUE ZERO PICTURE X.             7WA100
000450 01               DEBUT-WSS.                                      BARTI2
000460   05             FILLER        PICTURE X(7) VALUE                BARTI2
000470                                'WORKING'.                        BARTI2
000480   05             IK            PICTURE X.                        BARTI2
000490 01               CONSTANTES-PAC.                                 BARTI2
000500   05             FILLER        PICTURE X(60) VALUE               BARTI2
000510     '0062 LBA17/07/97BARTI2TEST    09:59:17BARTI2  BVAP17/07/1997BARTI2
000520-    ''.                                                           BARTI2
000530 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        BARTI2
000540   05             NUGNA         PICTURE X(5).                     BARTI2
000550   05             APPLI         PICTURE X(3).                     BARTI2
000560   05             DATGN         PICTURE X(8).                     BARTI2
000570   05             PROGR         PICTURE X(6).                     BARTI2
000580   05             CODUTI        PICTURE X(8).                     BARTI2
000590   05             TIMGN         PICTURE X(8).                     BARTI2
000600   05             PROGE         PICTURE X(8).                     BARTI2
000610   05             COBASE        PICTURE X(4).                     BARTI2
000620   05             DATGNC        PICTURE X(10).                    BARTI2
000630 01               DATCE.                                          BARTI2
000640   05             CENTUR        PICTURE XX VALUE                  BARTI2
000650                                '19'.                             BARTI2
000660   05             DATOR.                                          BARTI2
000670     10           DATOA         PICTURE XX.                       BARTI2
000680     10           DATOM         PICTURE XX.                       BARTI2
000690     10           DATOJ         PICTURE XX.                       BARTI2
000700 01               VARIABLES-CONDITIONNELLES.                      BARTI2
000710   05             FT.                                             BARTI2
000720     10           AR-FT         PICTURE X VALUE                   BARTI2
000730                                '0'.                              BARTI2
000740 01               COMPTEURS-FICHIERS COMPUTATIONAL-3.             BARTI2
000750   05             5-AR00-CPTENR PICTURE S9(9) VALUE ZERO.         BARTI2
000760   05             5-BR00-CPTENR PICTURE S9(9) VALUE ZERO.         BARTI2
000770   05             5-CR00-CPTENR PICTURE S9(9) VALUE ZERO.         BARTI2
000780 01               ZONES-UTILISATEUR PICTURE X.                    BARTI2
000790 PROCEDURE DIVISION.                                              BARTI2
000800 N01.                                                             BARTI2
000810*         NOTE *************************************.            BARTI2
000820*              *                                   *             BARTI2
000830*              *INITIALISATIONS                    *             BARTI2
000840*              *                                   *             BARTI2
000850*              *************************************.            BARTI2
000860 F01.                                                             BARTI2
000870     EXIT.                                                        BARTI2
000880 N01AR.                                                           BARTI2
000890*         NOTE *INITIALISATION FICHIER  AR-FICHIER *.            BARTI2
000900 F01AR.                                                           BARTI2
000910     OPEN INPUT AR-FICHIER.                                       BARTI2
000920 F01AR-FN.                                                        BARTI2
000930     EXIT.                                                        BARTI2
000940 N01BR.                                                           BARTI2
000950*         NOTE *INITIALISATION FICHIER  BR-FICHIER *.            BARTI2
000960 F01BR.                                                           BARTI2
000970     OPEN OUTPUT BR-FICHIER.                                      BARTI2
000980 F01BR-FN.                                                        BARTI2
000990     EXIT.                                                        BARTI2
001000 N01CR.                                                           BARTI2
001010*         NOTE *INITIALISATION FICHIER  CR-FICHIER *.            BARTI2
001020 F01CR.                                                           BARTI2
001030     OPEN OUTPUT CR-FICHIER.                                      BARTI2
001040 F01CR-FN.                                                        BARTI2
001050     EXIT.                                                        BARTI2
001060 F01-FN.                                                          BARTI2
001070     EXIT.                                                        BARTI2
001080*         NOTE *  DEBUT ITERATION DU PROGRAMME     *.            BARTI2
001090 F05.                                                             BARTI2
001100     EXIT.                                                        BARTI2
001110 N05.                                                             BARTI2
001120*         NOTE *************************************.            BARTI2
001130*              *                                   *             BARTI2
001140*              *LECTURE FICHIERS ACCES SEQ. SANS DE*             BARTI2
001150*              *                                   *             BARTI2
001160*              *************************************.            BARTI2
001170 N05AR.                                                           BARTI2
001180*         NOTE *LECTURE FICHIER         AR  SANS DE*.            BARTI2
001190 F05AR.                                                           BARTI2
001200     IF      AR-FT  =  '0'                                        BARTI2
001210         NEXT SENTENCE                                            BARTI2
001220     ELSE                                                         BARTI2
001230         GO TO F05AR-FN.                                          BARTI2
001240 F05AR-10.                                                        BARTI2
001250     READ AR-FICHIER AT END                                       BARTI2
001260         MOVE 1 TO AR-FT                                          BARTI2
001270         GO TO F05AR-FN.                                          BARTI2
001280     ADD 1 TO 5-AR00-CPTENR.                                      BARTI2
001290 F05AR-FN.                                                        BARTI2
001300     EXIT.                                                        BARTI2
001310 F05-FN.                                                          BARTI2
001320     EXIT.                                                        BARTI2
001330 N20.                                                             BARTI2
001340*         NOTE *************************************.            BARTI2
001350*              *                                   *             BARTI2
001360*              *FIN DE TRAITEMENT                  *             BARTI2
001370*              *                                   *             BARTI2
001380*              *************************************.            BARTI2
001390 F20.                                                             BARTI2
001400     IF      FT  =  ALL '1'                                       BARTI2
001410         NEXT SENTENCE                                            BARTI2
001420     ELSE                                                         BARTI2
001430         GO TO F20-FN.                                            BARTI2
001440 F20AR.                                                           BARTI2
001450     CLOSE AR-FICHIER.                                            BARTI2
001460 F20AR-FN.                                                        BARTI2
001470     EXIT.                                                        BARTI2
001480 F20BR.                                                           BARTI2
001490     CLOSE BR-FICHIER.                                            BARTI2
001500 F20BR-FN.                                                        BARTI2
001510     EXIT.                                                        BARTI2
001520 F20CR.                                                           BARTI2
001530     CLOSE CR-FICHIER.                                            BARTI2
001540 F20CR-FN.                                                        BARTI2
001550     EXIT.                                                        BARTI2
001560 F2099. STOP RUN.                                                 BARTI2
001570 F2099-FN.                                                        BARTI2
001580     EXIT.                                                        BARTI2
001590 F20-FN.                                                          BARTI2
001600     EXIT.                                                        BARTI2
001610 N70.                                                             P000
001620*         NOTE *************************************.            P000
001630*              *                                   *             P000
001640*              *BASCULE                            *             P000
001650*              *                                   *             P000
001660*              *************************************.            P000
001670 F70.                                                             P000
001680     EXIT.                                                        P000
001690 N70BA.                                                           P000
001700*         NOTE *FLAG                               *.            P000
001710 F70BA.                                                           P000
001720     IF      WA00-FLPAIR  =  ZERO                                 P100
001730         MOVE '1' TO WA00-FLPAIR                                  P100
001740         MOVE AR00 TO BR00                                        P110
001750         PERFORM F90BR THRU F90BR-FN                              P115
001760     ELSE                                                         P120
001770         MOVE '0' TO WA00-FLPAIR                                  P120
001780         MOVE AR00 TO CR00                                        P130
001790         PERFORM F90CR THRU F90CR-FN.                             P140
001800     GO TO F05.                                                   P900
001810 F70BA-FN.                                                        P900
001820     EXIT.                                                        P900
001830 F70-FN.                                                          P900
001840     EXIT.                                                        P900
001850 N90.                                                             BARTI2
001860*         NOTE *************************************.            BARTI2
001870*              *                                   *             BARTI2
001880*              *          ECRITURES                *             BARTI2
001890*              *                                   *             BARTI2
001900*              *************************************.            BARTI2
001910 F90.                                                             BARTI2
001920     EXIT.                                                        BARTI2
001930 N90BR.                                                           BARTI2
001940*         NOTE *ECRITURE SUR LE FICHIER BR         *.            BARTI2
001950 F90BR.                                                           BARTI2
001960     WRITE BR00.                                                  BARTI2
001970 F90BR-99.                                                        BARTI2
001980     ADD 1 TO 5-BR00-CPTENR.                                      BARTI2
001990 F90BR-FN.                                                        BARTI2
002000     EXIT.                                                        BARTI2
002010 N90CR.                                                           BARTI2
002020*         NOTE *ECRITURE SUR LE FICHIER CR         *.            BARTI2
002030 F90CR.                                                           BARTI2
002040     WRITE CR00.                                                  BARTI2
002050 F90CR-99.                                                        BARTI2
002060     ADD 1 TO 5-CR00-CPTENR.                                      BARTI2
002070 F90CR-FN.                                                        BARTI2
002080     EXIT.                                                        BARTI2
002090 F90-FN.                                                          BARTI2
002100     EXIT.                                                        BARTI2
002110 F9099-ITER-FN.                                                   BARTI2
002120     GO TO F05.                                                   BARTI2
