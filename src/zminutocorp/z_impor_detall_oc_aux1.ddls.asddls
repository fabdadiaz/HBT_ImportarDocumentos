@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Caclulos Detalle OC'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_IMPOR_DETALL_OC_AUX1
  as select from I_PurchaseOrderItemAPI01 as deta

{
  key deta.PurchaseOrder                          as OrdenCompra,
      deta.PurchaseOrderItem                      as Linea,
      deta.Material                               as Producto,
      deta.PurchaseOrderItemText                  as Nombre,
      cast(deta.OrderQuantity as abap.dec(20,2))  as Cantidad,
      cast(deta.NetPriceAmount as abap.dec(20,2)) as ValorUnitario,
      cast(deta.NetAmount as abap.dec(20,2))      as ValorTotal,
      0                                           as FelteNacional,
      0                                           as FleteInternacional,
      0                                           as Seguro,
      0                                           as Arancel,
      0                                           as GastoAgenteAduana,
      0                                           as Iva,
      0                                           as OtrosGastos,
      0                                           as Contenedores,
      0                                           as Bodegaje,
      0                                           as ValorTotaOC,
      0                                           as ValorunitarioCostosImp,
      deta.PurchaseOrder                          as NumeroOrden,
      deta.IsCompletelyDelivered


}
