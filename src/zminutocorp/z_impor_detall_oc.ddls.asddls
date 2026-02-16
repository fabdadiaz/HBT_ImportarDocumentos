@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle Orden Compra Importacion'
@Metadata.ignorePropagatedAnnotations: true
define  view entity Z_IMPOR_DETALL_OC as select from Z_IMPOR_DETALL_OC_AUX1

{
    
   key OrdenCompra,
   Linea,
   Producto,
   Nombre,
   Cantidad,
   ValorUnitario,
   ValorTotal,
   FelteNacional,
   FleteInternacional,
   Seguro,
   Arancel,
   GastoAgenteAduana,
   Iva,
   OtrosGastos,
   Contenedores,
   Bodegaje,
   ValorTotaOC,
   ValorunitarioCostosImp,
   NumeroOrden,
   IsCompletelyDelivered
}
