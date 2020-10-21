@AbapCatalog.sqlViewName: 'ZV_REM_DAYSL_M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:  #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
define view Z_b_rem_days_M
  as select from zrent_cars_m
{

  key matricula as Matricula,
      marca     as Marca,
      modelo,
      case
      when alq_hasta <> ''
      then dats_days_between( cast($session.system_date as abap.dats) , alq_hasta)
      end       as Dias

}
