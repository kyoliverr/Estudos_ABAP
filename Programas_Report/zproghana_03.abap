REPORT ZPROGHANA_03

TYPES: 
BEGIN OF ty_sflight,
  agencynum TYPE sbook-agencynum,
  planetype TYPE sflight-planetype,
  forcuram TYPE sbook-forcuram,
  loccuram TYPE sbook-loccuram,
END OF ty_sflight.

* Abrindo uma tabela interna dentro do ty_sflight (possivelmente é isso)
DATA: t_sflight TYPE TABLE OF ty_sflight.

SELECT a~agencynum b~planetype SUM( a~forcuram ) SUM ( a~loccuram ) 
  FROM ( sbook as a INNER JOIN sflight as b ON a~carrid = b~carrid AND
                                               a~connid = b~connid AND
                                               a~fldate = b~fldate )
  INTO TABLE t_sflight
  GROUP BY a~agencynum b~planetype
  ORDER BY a~agencynum

  IF sy-subrc <> 0.

  MESSAGE 'Data not Found' TYPE 'I'.

  ENDIF.

  cl_demo_output=>display( t_sflight ).
