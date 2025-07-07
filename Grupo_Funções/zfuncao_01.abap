FUNCTION ZFUNCAO_01.
*"----------------------------------------------------------------------------------------
*"*"Local Interface:
*"    TABLES
*"      LT_ZCDSTESTE_01 STRUCTURE ZPROGHANA_CDS01
*"----------------------------------------------------------------------------------------
  SELECT MANDT
         CARRID
         CONNID
         FLDATE
         PRICE
         FROM ZPROGHANA_CDS01
         INTO TABLE LT_ZCDSTESTE_01
ENDFUNCTION.
