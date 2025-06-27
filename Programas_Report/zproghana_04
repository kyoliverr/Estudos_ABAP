REPORT ZPROGHANA_04
* Primeiro programa criado inteiramente dentro do Eclipse

* Declaração da Tabela
TABLES sflight.

* Tela de Seleção -> Seleção de dados (Tag, realmente um pouco inútil)
SELECT-OPTIONS S_CARRID FOR SFLIGHT-carrid.

* Evento de Start
START-OF-SELECTION.

* Seleção de Dados
SELECT f~carrid,
       f~connid,
       f~fldate,
       f~price.
       s~loccuram
       INTO TABLE @DATA(LT_DADOS)
       FROM sflight as f
       INNER JOIN sbook as s
       ON f~carrid = s~carrid
       AND f~connid = s~connid
       AND f~fldate = s~fldate
       WHERE f~carrid in @S_CARRID.
