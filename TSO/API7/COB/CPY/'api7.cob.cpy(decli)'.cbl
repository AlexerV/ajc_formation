      ******************************************************************
      * DCLGEN TABLE(DECLINAISON)                                      *
      *        LIBRARY(API7.COB.CPY(DECLI))                            *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(W-)                                               *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE DECLINAISON TABLE
           ( ID_ARTICL                      INTEGER NOT NULL,
             ID_DECLINAISON                 CHAR(2) NOT NULL,
             DESIGNATION                    CHAR(20) NOT NULL,
             STOCK                          INTEGER NOT NULL,
             STOCK_ALERTE                   INTEGER NOT NULL,
             TAILLE                         CHAR(5) NOT NULL,
             COLORIS                        CHAR(10) NOT NULL,
             QUOTITE                        INTEGER NOT NULL,
             STOCK_COMMANDEE                INTEGER NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE DECLINAISON                        *
      ******************************************************************
       01  DCLDECLINAISON.
      *    *************************************************************
      *                       ID_ARTICL
           10 W-ID-ARTICL          PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       ID_DECLINAISON
           10 W-ID-DECLINAISON     PIC X(2).
      *    *************************************************************
      *                       DESIGNATION
           10 W-DESIGNATION        PIC X(20).
      *    *************************************************************
      *                       STOCK
           10 W-STOCK              PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       STOCK_ALERTE
           10 W-STOCK-ALERTE       PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       TAILLE
           10 W-TAILLE             PIC X(5).
      *    *************************************************************
      *                       COLORIS
           10 W-COLORIS            PIC X(10).
      *    *************************************************************
      *                       QUOTITE
           10 W-QUOTITE            PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       STOCK_COMMANDEE
           10 W-STOCK-COMMANDEE    PIC S9(9) USAGE COMP.
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  IDECLINAISON.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 9 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 9       *
      ******************************************************************
