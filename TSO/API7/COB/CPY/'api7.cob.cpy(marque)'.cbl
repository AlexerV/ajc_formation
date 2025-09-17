      ******************************************************************
      * DCLGEN TABLE(MARQUE)                                           *
      *        LIBRARY(API7.COB.CPY(MARQUE))                           *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(W-)                                               *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE MARQUE TABLE
           ( ID_MARQUE                      CHAR(2) NOT NULL,
             DESIGNATION                    CHAR(20) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE MARQUE                             *
      ******************************************************************
       01  DCLMARQUE.
      *    *************************************************************
      *                       ID_MARQUE
           10 W-ID-MARQUE          PIC X(2).
      *    *************************************************************
      *                       DESIGNATION
           10 W-DESIGNATION        PIC X(20).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  IMARQUE.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 2 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 2       *
      ******************************************************************
