REPORT ZPROGHANA_04_ALV.
*Primeiro alv criado no eclipse

TABLES sflight.

* Importanndo extensões para alv
DATA ls_fieldcat TYPE slis_fieldcat_alv.
DATA lt_fieldcat TYPE slis_t_fieldcat_alv.

* Tela de Seleção
SELECT-OPTIONS s_carrid FOR sflight-carrid.

* Evento de Start
START-OF-SELECTION.

  SELECT f~carrid,
         f~connid,
         f~fldate,
         f~price,
         s~loccuram
         INTO TABLE @DATA(lt_dados)
         FROM sflight AS f
         INNER JOIN sbook AS s
         ON f~carrid = s~carrid
         AND f~connid = s~connid
         AND f~fldate = s~fldate
         WHERE f~carrid IN @s_carrid.

  IF sy-subrc <> 0.
    MESSAGE 'Data Not Found' TYPE 'I'.
  ENDIF.

* Preenchendo o Fieldcat.
  ls_fieldcat-col_pos = 1.
  ls_fieldcat-tabname = 'LT_DADOS'.
  ls_fieldcat-fieldname = 'CARRID'.
  ls_fieldcat-seltext_l = 'Airline Code'.
  ls_fieldcat-outputlen = '3'.
  APPEND ls_fieldcat TO lt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-col_pos = 2.
  ls_fieldcat-tabname = 'LT_DADOS'.
  ls_fieldcat-fieldname = 'CONNID'.
  ls_fieldcat-seltext_l = 'Airline Code'.
  ls_fieldcat-outputlen = '4'.
  APPEND ls_fieldcat TO lt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-col_pos = 3.
  ls_fieldcat-tabname = 'LT_DADOS'.
  ls_fieldcat-fieldname = 'FLDATE'.
  ls_fieldcat-seltext_l = 'Airline Code'.
  ls_fieldcat-outputlen = '8'.
  APPEND ls_fieldcat TO lt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-col_pos = 4.
  ls_fieldcat-tabname = 'LT_DADOS'.
  ls_fieldcat-fieldname = 'PRICE'.
  ls_fieldcat-seltext_l = 'Airline Code'.
  ls_fieldcat-outputlen = '3'.
  APPEND ls_fieldcat TO lt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-col_pos = 5.
  ls_fieldcat-tabname = 'LT_DADOS'.
  ls_fieldcat-fieldname = 'LOCCURAM'.
  ls_fieldcat-seltext_l = 'Price of Booking in local currency of airline'.
  ls_fieldcat-outputlen = '15'.
  APPEND ls_fieldcat TO lt_fieldcat.
  CLEAR ls_fieldcat.
