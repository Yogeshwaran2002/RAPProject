@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RMC order DD'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo: {
    typeName: 'Sales Order',
    typeNamePlural: 'Sales Order List'
}
define root view entity zl_so_rmc as select from ztsd_rmc_order
composition [1..1] of zl_so_vbap as _rmcvbap
{   

     @UI.facet: [{
      id: 'SODetail',
          purpose: #STANDARD,
          position: 1,
          type: #IDENTIFICATION_REFERENCE,
          label: ' Sales Order Detail'

      },
      {
      id: 'SODetail_1',
          purpose: #STANDARD,
          position: 2,
          type: #LINEITEM_REFERENCE,
          label: 'Sales Order Item Details',
          targetElement: '_rmcvbap'
      }
      ]
    @UI.lineItem: [{ position: 1 , label:'Order No' }]
    @UI.identification: [{ position: 1 , label:'Order No' }]
    key order_code as OrderCode,
    @UI.lineItem: [{ position: 2 , label:'Order Line Item' }]
     @UI.identification: [{ position: 2 , label:'Order Line Item' }]
    order_intrnl_lin as OrderIntrnlLin,
     @UI.lineItem: [{ position: 3, label:'Order Date' }]
      @UI.identification: [{ position: 3 , label:'Order Date' }]
    order_date as OrderDate,
     @UI.lineItem: [{ position: 4, label:'Material' }]
      @UI.identification: [{ position: 4 , label:'Material' }]
    item as Item,
     @UI.lineItem: [{ position: 5, label:'Plant' }]
      @UI.identification: [{ position: 5 , label:'Plant' }]
    pricing_plant as PricingPlant,
     @UI.lineItem: [{ position: 6, label:'Category' }]
      @UI.identification: [{ position: 6 , label:'Category' }]
    prod_cat as ProdCat,
     @UI.lineItem: [{ position: 10, label:'Rmv Code' }]
      @UI.identification: [{ position: 10 , label:'Rmv Code' }]
    remove_code as RemoveCode,
     @UI.lineItem: [{ position: 11, label:'Customer' }]
      @UI.identification: [{ position: 11 , label:'Customer' }]
    cust_code as CustCode,
     @UI.lineItem: [{ position: 12, label:'Customer Name' }]
      @UI.identification: [{ position: 12 , label:'Customer Name' }]
    cust_name as CustName,
     @UI.lineItem: [{ position: 13, label:'Project' }]
      @UI.identification: [{ position: 13 , label:'Project' }]
    proj_code as ProjCode,
     @UI.lineItem: [{ position: 14, label:'Poject Name' }]
      @UI.identification: [{ position: 14 , label:'Poject Name' }]
    proj_name as ProjName,
     @UI.lineItem: [{ position: 15, label:'Distance' }]
      @UI.identification: [{ position: 15 , label:'Distance' }]
    distance as Distance,
      @UI.lineItem: [{ position: 16, label:'Travel Time' }]
       @UI.identification: [{ position: 16 , label:'Travel Time' }]
    trvl_time as TrvlTime,
      @UI.lineItem: [{ position: 17, label:'Load' }]
       @UI.identification: [{ position: 17 , label:'Load' }]
    loads as Loads,
      @UI.lineItem: [{ position: 18, label:'Created By' }]
       @UI.identification: [{ position: 18, label:'Created By' }]
    createdby as Createdby,
      @UI.lineItem: [{ position: 19, label:'Created Date' }]
       @UI.identification: [{ position: 19, label:'Created Date' }]
    createdate as Createdate,
      @UI.lineItem: [{ position: 20, label:'Created Time' }]
       @UI.identification: [{ position: 20 , label:'Created Time' }]
    createtime as Createtime,
      @UI.lineItem: [{ position: 21, label:'Changed by' }]
       @UI.identification: [{ position: 21 , label:'Changed by' }]
    last_changeby as LastChangeby,
      @UI.lineItem: [{ position: 22, label:'Changed on' }]
       @UI.identification: [{ position: 22 , label:'Changed on' }]
    last_changedate as LastChangedate,
      @UI.lineItem: [{ position: 23, label:'Changed Time' }]
       @UI.identification: [{ position: 23, label:'Changed Time' }]
    last_changetime as LastChangetime,
      @UI.lineItem: [{ position: 24, label:'Plant' }]
       @UI.identification: [{ position: 24 , label:'Plant' }]
    extra1 as Extra1,
    extra2 as Extra2,
    extra3 as Extra3,
    extra4 as Extra4,
    extra5 as Extra5,
    extra6 as Extra6,
    extra7 as Extra7,
    extra8 as Extra8,
    extra9 as Extra9,
    extra10 as Extra10,
    quotation_no as QuotationNo,
    quotation_mat as QuotationMat,
    _rmcvbap
}
