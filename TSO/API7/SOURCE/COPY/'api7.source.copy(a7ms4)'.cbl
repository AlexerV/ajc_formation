       01  A7MAP4I.
           02  FILLER PIC X(12).
           02  DATEJL    COMP  PIC  S9(4).
           02  DATEJF    PICTURE X.
           02  FILLER REDEFINES DATEJF.
             03 DATEJA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  DATEJI  PIC X(10).
           02  PGMNAMEL    COMP  PIC  S9(4).
           02  PGMNAMEF    PICTURE X.
           02  FILLER REDEFINES PGMNAMEF.
             03 PGMNAMEA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  PGMNAMEI  PIC X(9).
           02  TRNNAMEL    COMP  PIC  S9(4).
           02  TRNNAMEF    PICTURE X.
           02  FILLER REDEFINES TRNNAMEF.
             03 TRNNAMEA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  TRNNAMEI  PIC X(7).
           02  HEUREL    COMP  PIC  S9(4).
           02  HEUREF    PICTURE X.
           02  FILLER REDEFINES HEUREF.
             03 HEUREA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  HEUREI  PIC X(8).
           02  NUM1L    COMP  PIC  S9(4).
           02  NUM1F    PICTURE X.
           02  FILLER REDEFINES NUM1F.
             03 NUM1A    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  NUM1I  PIC 9(9).
           02  NUM2L    COMP  PIC  S9(4).
           02  NUM2F    PICTURE X.
           02  FILLER REDEFINES NUM2F.
             03 NUM2A    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  NUM2I  PIC 9(9).
           02  TYPEOPL    COMP  PIC  S9(4).
           02  TYPEOPF    PICTURE X.
           02  FILLER REDEFINES TYPEOPF.
             03 TYPEOPA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  TYPEOPI  PIC X.
           02  MESS1L    COMP  PIC  S9(4).
           02  MESS1F    PICTURE X.
           02  FILLER REDEFINES MESS1F.
             03 MESS1A    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  MESS1I  PIC X(55).
           02  MESS2L    COMP  PIC  S9(4).
           02  MESS2F    PICTURE X.
           02  FILLER REDEFINES MESS2F.
             03 MESS2A    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  MESS2I  PIC X(56).
       01  A7MAP4O REDEFINES A7MAP4I.
           02  FILLER PIC X(12).
           02  FILLER PICTURE X(3).
           02  DATEJC    PICTURE X.
           02  DATEJO  PIC X(10).
           02  FILLER PICTURE X(3).
           02  PGMNAMEC    PICTURE X.
           02  PGMNAMEO  PIC X(9).
           02  FILLER PICTURE X(3).
           02  TRNNAMEC    PICTURE X.
           02  TRNNAMEO  PIC X(7).
           02  FILLER PICTURE X(3).
           02  HEUREC    PICTURE X.
           02  HEUREO  PIC X(8).
           02  FILLER PICTURE X(3).
           02  NUM1C    PICTURE X.
           02  NUM1O PIC Z(9).
           02  FILLER PICTURE X(3).
           02  NUM2C    PICTURE X.
           02  NUM2O PIC Z(9).
           02  FILLER PICTURE X(3).
           02  TYPEOPC    PICTURE X.
           02  TYPEOPO PIC X.
           02  FILLER PICTURE X(3).
           02  MESS1C    PICTURE X.
           02  MESS1O  PIC X(55).
           02  FILLER PICTURE X(3).
           02  MESS2C    PICTURE X.
           02  MESS2O  PIC X(56).
