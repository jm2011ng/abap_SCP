@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Details Customers'
@Metadata.allowExtensions: true
define view z_b_det_customer_m
  as select from zrent_customer_m
{


  key doc_id    as ID,
      matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato

}
