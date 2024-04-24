@EndUserText.label: 'Purchase Order Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_PO_CDS
  provider contract transactional_query
  as projection on ZI_PO_CDS
{
  key Guid16,
      RctPoNo,
      SapPoNo,
      CustPoNo,
      ProjectCode,
      ProjectName,
      CustomerCode,
      CustomerName,
      PoDate,
      PoQty,
      PoUom,
      QuotationNo,
      ApprovedQuotationNo,
      ValidFrom,
      ValidTo,
      ExtendedValidTo,
      Plant,
      PoBlock,
      Price,
      currencyCode,
      IncoTerm,
      DocRefNo,
      MixCode,
      MobileFlag,
      Inquiry,
      InquiryStatus,
      PaymentTerm,
      Expired,
      Zpr6Flag,
      Zfo1Flag,
      Zfo2Flag,
      Remarks,
      CreatedOn,
      CreatedAt,
      CreatedBy,
      UpdatedOn,
      UpdatedAt,
      UpdatedBy,
      CreatedBySource,
      UpdatedBySource,
      /* Associations */
      _PoItem : redirected to composition child ZC_PO_ITEM_CDS
}
