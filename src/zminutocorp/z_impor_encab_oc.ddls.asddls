@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Encabezado Orden Compra Importacion'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_IMPOR_ENCAB_OC
  as select distinct from Z_IMPOR_ENCAB_OC_AUX1

{
key OrdenCompra,
ClaseOrdenCompra,
StatusOrdenCompra,
FechaCreacion,
FechaOrdenCompra,
Referencia1,
Referencia2,
EstadoProcesamientoOC,
Proveedor,
NombreProveedor,
TelefonoProveedor,
MonedaOrdenCompra,
TasaCambio,
TotalOrdenCompra,
Procesado,
CompanyCode,
IsCompletelyDelivered

  }
  
  where IsCompletelyDelivered = 'X'
