@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Calculos encabezado OC'
@Metadata.ignorePropagatedAnnotations: true
define  view entity Z_IMPOR_ENCAB_OC_AUX1 as select from I_PurchaseOrderAPI01 as enca
--inner join I_PurchaseOrderItemAPI01 as deta on enca.PurchaseOrder = deta.PurchaseOrder

{
    
   key enca.PurchaseOrder as OrdenCompra,
   enca.PurchaseOrderType as ClaseOrdenCompra,
   enca.PurchasingDocumentOrigin as StatusOrdenCompra,
   enca.CreationDate as FechaCreacion,
   enca.PurchaseOrderDate as FechaOrdenCompra,
   enca.CorrespncExternalReference as Referencia1,
   enca.CorrespncInternalReference as Referencia2,
   enca.PurchasingProcessingStatus as EstadoProcesamientoOC,
   enca.Supplier as Proveedor,
   enca._Supplier.SupplierFullName as NombreProveedor,
   enca.SupplierPhoneNumber as TelefonoProveedor,
   enca.DocumentCurrency as MonedaOrdenCompra,
   enca.ExchangeRate as TasaCambio,
   cast(enca.PurgReleaseTimeTotalAmount as abap.dec(20,2)) as TotalOrdenCompra,
   enca.YY1_Procesado_PDH as Procesado,
   enca.CompanyCode,
   _PurchaseOrderItem.IsCompletelyDelivered
   
   
}

where enca.PurchaseOrderType = 'ZIMP'
---and deta.PurchasingDocumentDeletionCode = 'S'
