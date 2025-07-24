@AbapCatalog.sqlViewName: 'ZPROGHANA_CDS02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AcessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS com Parametros'
define view ZCDSTESTE02_P
  with parameters p_carrid : S_CARR_ID
as select from sflight {
      carrid,
      connid,
      fldate,
      seatsmax
}
where carrid = :p_carrid
