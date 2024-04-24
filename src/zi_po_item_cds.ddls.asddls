@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Item CDS View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_PO_ITEM_CDS
  as select from zmvn_po_item_db
  association to parent ZI_PO_CDS as _PoHeader on $projection.Guid16 = _PoHeader.Guid16
{
  key guid16                as Guid16,
      @UI.lineItem: [{ position: 1 , label:'Line Item No' }]
      @UI.identification: [{ position: 1 , label:'Line Item No' }]
  key line_item_no          as LineItemNo,
      @UI.lineItem: [{ position: 2 , label:'RCT PO No' }]
      @UI.identification: [{ position: 2 , label:'RCT PO No' }]
      rct_po_no             as RctPoNo,
      @UI.lineItem: [{ position: 3 , label:'SAP PO No'}]
      @UI.identification: [{ position: 3 , label:'SAP PO No'}]
      sap_po_no             as SapPoNo,
      @UI.lineItem: [{ position: 4 , label:'Customer PO No'}]
      @UI.identification: [{ position: 4 , label:'Customer PO No'}]
      cust_po_no            as CustPoNo,
      @UI.lineItem: [{ position: 5 , label:'Project Code'}]
      @UI.identification: [{ position: 5 , label:'Project Code'}]
      project_code          as ProjectCode,
      @UI.lineItem: [{ position: 6 , label:'Finalised Mix Design'}]
      @UI.identification: [{ position: 6 , label:'Finalised Mix Design'}]
      finalised_mix_design  as FinalisedMixDesign,
      @UI.lineItem: [{ position: 7 , label:'Proposed Mix Design'}]
      @UI.identification: [{ position: 7 , label:'Proposed Mix Design'}]
      proposed_mix_design   as ProposedMixDesign,
      @Semantics.quantity.unitOfMeasure : 'PoPriceUom'
      @UI.lineItem: [{ position: 8 , label:'PO Quantity'}]
      @UI.identification: [{ position: 8 ,  label:'PO Quantity'}]
      po_qty                as PoQty,
      @Semantics.quantity.unitOfMeasure : 'PoPriceUom'
      @UI.lineItem: [{ position: 8 , label:'Extended PO Quantity'}]
      @UI.identification: [{ position: 8 ,  label:'Extended PO Quantity'}]
      extended_po_qty       as ExtendedPoQty,
      @UI.lineItem: [{ position: 9 , label:'Grade'}]
      @UI.identification: [{ position: 9 , label:'Grade'}]
      grade                 as Grade,
      expired               as Expired,
      expired_date          as ExpiredDate,
      @UI.lineItem: [{ position: 10 , label:'Mix Type'}]
      @UI.identification: [{ position: 10 ,label:'Mix Type'}]
      mix_type              as MixType,
      @UI.lineItem: [{ position: 11 , label:'Ship Type'}]
      @UI.identification: [{ position: 11,label:'Ship Type'}]
      ship_type             as ShipType,
      @UI.lineItem: [{ position: 12 , label:'Ship Type'}]
      @UI.identification: [{ position: 12,label:'Ship Type'}]
      mat_frieght_grp       as MatFrieghtGrp,
      cust_po_date          as CustPoDate,
      cust_po_copy          as CustPoCopy,
      approved_quotation_no as ApprovedQuotationNo,
      inquiry               as Inquiry,
      @Semantics.amount.currencyCode : 'currencyCode'
      @UI.lineItem: [{ position: 13 , label:'Price'}]
      @UI.identification: [{ position: 13, label:'Price'}]
      po_price              as PoPrice,
      currency_code         as currencyCode,
      @Semantics.quantity.unitOfMeasure : 'PoPriceUom'
      po_price_qty          as PoPriceQty,
      po_price_uom          as PoPriceUom,
      po_curr               as PoCurr,
      all_plant             as AllPlant,
      @UI.lineItem: [{ position: 14 , label:'Plant'}]
      @UI.identification: [{ position: 14, label:'Plant'}]
      plant                 as Plant,
      @UI.lineItem: [{ position: 15 , label:'Remarks'}]
      @UI.identification: [{ position: 15, label:'Remarks'}]
      remarks               as Remarks,
      @UI.lineItem: [{ position: 16 , label:'Height Range From'}]
      @UI.identification: [{ position: 16, label:'Height Range From'}]
      height_range_from     as HeightRangeFrom,
      @UI.lineItem: [{ position: 17 , label:'Height Range To'}]
      @UI.identification: [{ position: 17, label:'Height Range To'}]
      height_range_to       as HeightRangeTo,
      @UI.lineItem: [{ position: 18 , label:'Height Range UOM'}]
      @UI.identification: [{ position: 18, label:'Height Range UOM'}]
      height_range_uom      as HeightRangeUom,
      valid_from            as ValidFrom,
      valid_to              as ValidTo,
      extended_valid_to     as ExtendedValidTo,
      @Semantics.amount.currencyCode : 'currencyCode'
      zpr6_price            as Zpr6Price,
      @Semantics.amount.currencyCode : 'currencyCode'
      zfo1_price            as Zfo1Price,
      @Semantics.amount.currencyCode : 'currencyCode'
      zfo2_price            as Zfo2Price,
      created_on            as CreatedOn,
      created_at            as CreatedAt,
      created_by            as CreatedBy,
      updated_on            as UpdatedOn,
      updated_at            as UpdatedAt,
      updated_by            as UpdatedBy,
      created_by_source     as CreatedBySource,
      updated_by_source     as UpdatedBySource,
      _PoHeader
}
