@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order CDS ENTITY'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define root view entity ZI_PO_CDS
  as select from zmvn_po_crt_db as _PoHeader
  composition [1..*] of ZI_PO_ITEM_CDS as _PoItem
{
  key guid16                as Guid16,
      rct_po_no             as RctPoNo,
      sap_po_no             as SapPoNo,
      cust_po_no            as CustPoNo,
      project_code          as ProjectCode,
      project_name          as ProjectName,
      customer_code         as CustomerCode,
      customer_name         as CustomerName,
      po_date               as PoDate,
      @Semantics.quantity.unitOfMeasure : 'PoUom'
      po_qty                as PoQty,
      po_uom                as PoUom,
      quotation_no          as QuotationNo,
      approved_quotation_no as ApprovedQuotationNo,
      valid_from            as ValidFrom,
      valid_to              as ValidTo,
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
      created_on            as CreatedOn,
      created_at            as CreatedAt,
      created_by            as CreatedBy,
      updated_on            as UpdatedOn,
      updated_at            as UpdatedAt,
      updated_by            as UpdatedBy,
      created_by_source     as CreatedBySource,
      updated_by_source     as UpdatedBySource,
      _PoItem
}
