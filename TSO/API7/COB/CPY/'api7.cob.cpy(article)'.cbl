      ******************************************************************
      * DCLGEN TABLE(ARTICLE)                                          *
      *        LIBRARY(API7.COB.CPY(ARTICLE))                          *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(W-)                                               *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE ARTICLE TABLE
           ( ID_ARTICLE                     INTEGER NOT NULL,
             DESIGNATION                    CHAR(20) NOT NULL,
             PRIX                           DECIMAL(5, 2) NOT NULL,
             ID_MARQUE                      CHAR(2),
             ID_FAMILLE                     CHAR(2) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE ARTICLE                            *
      ******************************************************************
       01  DCLARTICLE.
      *    *************************************************************
      *                       ID_ARTICLE
           10 W-ID-ARTICLE         PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       DESIGNATION
           10 W-DESIGNATION        PIC X(20).
      *    *************************************************************
      *                       PRIX
           10 W-PRIX               PIC S9(3)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       ID_MARQUE
           10 W-ID-MARQUE          PIC X(2).
      *    *************************************************************
      *                       ID_FAMILLE
           10 W-ID-FAMILLE         PIC X(2).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  IARTICLE.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 5 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 5       *
      ******************************************************************
