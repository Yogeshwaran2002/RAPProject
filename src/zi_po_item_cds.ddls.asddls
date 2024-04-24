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
  key line_item_no          as LineItemNo,
      rct_po_no             as RctPoNo,
      sap_po_no             as SapPoNo,
      cust_po_no            as CustPoNo,
      project_code          as ProjectCode,
      finalised_mix_design  as FinalisedMixDesign,
      proposed_mix_design   as ProposedMixDesign,
      @Semantics.quantity.unitOfMeasure : 'PoPriceUom'
      po_qty                as PoQty,
      @Semantics.quantity.unitOfMeasure : 'PoPriceUom'
      extended_po_qty       as ExtendedPoQty,
      grade                 as Grade,
      expired               as Expired,
      expired_date          as ExpiredDate,
      mix_type              as MixType,
      ship_type             as ShipType,
      mat_frieght_grp       as MatFrieghtGrp,
      cust_po_date          as CustPoDate,
      cust_po_copy          as CustPoCopy,
      approved_quotation_no as ApprovedQuotationNo,
      inquiry               as Inquiry,
      @Semantics.amount.currencyCode : 'currencyCode'
      po_price              as PoPrice,
      currency_code         as currencyCode,
      @Semantics.quantity.unitOfMeasure : 'PoPriceUom'
      po_price_qty          as PoPriceQty,
      po_price_uom          as PoPriceUom,
      po_curr               as PoCurr,
      all_plant             as AllPlant,
      plant                 as Plant,
      remarks               as Remarks,
      height_range_from     as HeightRangeFrom,
      height_range_to       as HeightRangeTo,
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
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      updated_at            as UpdatedAt,
      updated_by            as UpdatedBy,
      created_by_source     as CreatedBySource,
      updated_by_source     as UpdatedBySource,
      _PoHeader
}
