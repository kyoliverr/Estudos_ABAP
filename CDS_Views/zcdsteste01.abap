@AbapCatalog.sqlViewName: 'ZPROGHANA_CDS01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true 
@AcessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Primeira CDS - Cauê Oliveira'
define view ZCDSTESTE01 as select from sflight {
  carrid,
  connid,
  fldate,
  price
  
}

* Pequeno código mas serviu para observar melhor dentro do ambiente.
