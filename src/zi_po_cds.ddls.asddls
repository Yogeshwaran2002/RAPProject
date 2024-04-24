@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order CDS ENTITY'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo: {
    typeName: 'Purchase Order',
    typeNamePlural: 'Purchse Order List'
}
@Search.searchable: true
define root view entity ZI_PO_CDS
  as select from zmvn_po_crt_db as _PoHeader
  composition [1..*] of ZI_PO_ITEM_CDS as _PoItem
{
      @UI.facet: [{
      id: 'PODetail',
          purpose: #STANDARD,
          position: 1,
          type: #IDENTIFICATION_REFERENCE,
          label: ' Purchase Order Detail'

      },{
      id: 'POItemDetail',
          purpose: #STANDARD,
          position: 2,
          type: #LINEITEM_REFERENCE,
          label: ' Purchase Order Item Details',
          targetElement: '_PoItem'
      }]
  key guid16                as Guid16,
      @UI.lineItem: [{ position: 1 , label:'RCT PO No' }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      @UI.identification: [{ position: 1 , label:'RCT PO No' }]
      rct_po_no             as RctPoNo,
      @UI.lineItem: [{ position: 2 , label:'SAP PO No'}]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      @UI.identification: [{ position: 2 , label:'SAP PO No'}]
      sap_po_no             as SapPoNo,
      @UI.lineItem: [{ position: 3 , label:'Customer PO No'}]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      @UI.identification: [{ position: 3 , label:'Customer PO No'}]
      cust_po_no            as CustPoNo,
      @UI.lineItem: [{ position: 4 , label:'Project Code'}]

      @UI.identification: [{ position: 4 , label:'Project Code'}]
      project_code          as ProjectCode,
      @UI.lineItem: [{ position: 5 , label:'Project Name'}]
      @UI.identification: [{ position: 5 , label:'Project Name'}]
      project_name          as ProjectName,
      @UI.lineItem: [{ position: 6 , label:'Customer Code'}]
      @UI.identification: [{ position: 6 , label:'Customer Code'}]
      customer_code         as CustomerCode,
      @UI.lineItem: [{ position: 7 , label:'Customer Name'}]
      @UI.identification: [{ position: 7 , label:'Customer Name'}]
      customer_name         as CustomerName,
      @UI.identification: [{ position: 8 , label:'Customer PO Date'}]
      po_date               as PoDate,
      @Semantics.quantity.unitOfMeasure : 'PoUom'
      @UI.identification: [{ position: 9 , label:'PO Quantity'}]
      po_qty                as PoQty,
      po_uom                as PoUom,
      quotation_no          as QuotationNo,
      approved_quotation_no as ApprovedQuotationNo,
      @UI.lineItem: [{ position: 8 }]
      @UI.selectionField: [{position: 2}]
      @UI.identification: [{ position: 10 }]
      @EndUserText.label: 'Valid From'
      valid_from            as ValidFrom,
     // @UI.identification: [{ position: 11 , label:'Valid To'}]
      valid_to              as ValidTo,
      @UI.lineItem: [{ position: 9 }]
      @UI.selectionField: [{position: 3 }]
      @UI.identification: [{ position: 12 }]
      @EndUserText.label: 'Valid To'
      extended_valid_to     as ExtendedValidTo,
      plant                 as Plant,
      po_block              as PoBlock,
      @Semantics.amount.currencyCode: 'currencyCode'
      price                 as Price,
      currency_code         as currencyCode,
      inco_term             as IncoTerm,
      doc_ref_no            as DocRefNo,
      mix_code              as MixCode,
      mobile_flag           as MobileFlag,
      inquiry               as Inquiry,
      inquiry_status        as InquiryStatus,
      payment_term          as PaymentTerm,
      expired               as Expired,
      zpr6_flag             as Zpr6Flag,
      zfo1_flag             as Zfo1Flag,
      zfo2_flag             as Zfo2Flag,
      remarks               as Remarks,
      @UI.lineItem: [{ position: 10 , label:'Created On'}]
      @UI.identification: [{ position: 13  , label:'Created On'}]
      created_on            as CreatedOn,
      created_at            as CreatedAt,
      @UI.lineItem: [{ position: 11 , label:'Created By'}]
      @UI.identification: [{ position: 14 , label:'Created By'}]
      created_by            as CreatedBy,
      @UI.lineItem: [{ position: 12 , label:'Updated On'}]
      @UI.identification: [{ position: 15 , label:'Updated On'}]
      updated_on            as UpdatedOn,
      updated_at            as UpdatedAt,
      @UI.lineItem: [{ position: 13 , label:'Updated By'}]
      @UI.identification: [{ position: 16, label:'Updated By'}]
      updated_by            as UpdatedBy,
      @UI.lineItem: [{ position: 14 , label:'Created By Source'}]
      @UI.identification: [{ position: 17 , label:'Created By Source'}]
      created_by_source     as CreatedBySource,
      @UI.lineItem: [{ position: 15 , label:'Updated By Source'}]
      @UI.identification: [{ position: 18 , label:'Updated By Source'}]
      updated_by_source     as UpdatedBySource,
      _PoItem
}
