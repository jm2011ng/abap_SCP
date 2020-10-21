@AbapCatalog.sqlViewName: 'ZV_BRANDSL_M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view z_b_brands_m
  as select from zrent_brands_m
{

  key marca as Marca,
      @UI.hidden: true
      url   as Imagen

}
