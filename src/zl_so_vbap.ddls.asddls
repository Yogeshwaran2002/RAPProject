@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SO Line Item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zl_so_vbap as select from ztsd_rmc_vbap
association to parent zl_so_rmc as _rmcso on $projection.Vbeln = _rmcso.OrderCode
{   
    @UI.lineItem: [{ position: 1 , label:'Order No' }]
    key vbeln as Vbeln,
     @UI.lineItem: [{ position: 2 , label:'Line Item' }]
    posnr as Posnr,
    quotation_no as QuotationNo,
    quotation_mat as QuotationMat,
    currency_code         as currencyCode,
    @Semantics.amount.currencyCode: 'currencyCode'
     @UI.lineItem: [{ position: 3 , label:'Price' }]
    quotation_price as QuotationPrice,
     @UI.lineItem: [{ position: 4 , label:'Start Time' }]
    start_time as StartTime,
    truck_type as TruckType,
    travel_up_time as TravelUpTime,
    travel_down_time as TravelDownTime,
    spacing as Spacing,
    unload_time as UnloadTime,
    baseunitofmeasure as Baseunitofmeasure,
    @Semantics.quantity.unitOfMeasure : 'baseunitofmeasure'
    unload as Unload,
    unload_uom as UnloadUom,
    distance as Distance,
    @Semantics.quantity.unitOfMeasure : 'baseunitofmeasure'
     @UI.lineItem: [{ position: 6 , label:'Loat Qty' }]
    load_qty as LoadQty,
    load_uom as LoadUom,
     @UI.lineItem: [{ position: 7 , label:'Structure' }]
    structure as Structure,
    pump_code as PumpCode,
     @UI.lineItem: [{ position: 8 , label:'Auto Ticket' }]
    auto_ticket as AutoTicket,
    slump as Slump,
    is_slump as IsSlump,
    loads as Loads,
    pump_service as PumpService,
    so_create_rel as SoCreateRel,
    pump_code1 as PumpCode1,
    pump_code2 as PumpCode2,
    pump_code3 as PumpCode3,
    pump_code4 as PumpCode4,
    pump_code5 as PumpCode5,
    pump_code6 as PumpCode6,
    service_order as ServiceOrder,
    customer_mob_no as CustomerMobNo,
    prnt_mix_ticket as PrntMixTicket,
    customer_weight as CustomerWeight,
    order_priority as OrderPriority,
    not_to_schedule as NotToSchedule,
    lbt_octroi as LbtOctroi,
    toll_fee as TollFee,
    pipe_laying_req as PipeLayingReq,
    pipe_lay_height as PipeLayHeight,
    pipe_lay_length as PipeLayLength,
    flash_order as FlashOrder,
    cuky_field as CukyField,
    @Semantics.amount.currencyCode: 'CukyField'
    pouring_rate as PouringRate,
    client_pump as ClientPump,
    sub_reason as SubReason,
    remarks as Remarks,
    transferd_ord_no as TransferdOrdNo,
    customer_classification as CustomerClassification,
    cust_cls_desc as CustClsDesc,
    denied as Denied,
    mobile_flag as MobileFlag,
    customer_po_no as CustomerPoNo,
    inquiry as Inquiry,
    inquiry_status as InquiryStatus,
     @UI.lineItem: [{ position: 9, label:'RCT So' }]
    rct_so_no as RctSoNo,
     @UI.lineItem: [{ position: 10 , label:'SAP SO' }]
    sap_so_no as SapSoNo,
     @UI.lineItem: [{ position: 11 , label:'RCT PO' }]
    rct_po_no as RctPoNo,
     @UI.lineItem: [{ position: 12, label:'SAP PO' }]
    sap_po_no as SapPoNo,
    sap_po_line_item as SapPoLineItem,
    cust_po_qty as CustPoQty,
    cumm_cust_flag as CummCustFlag,
    cumm_cust_flag_period as CummCustFlagPeriod,
    special_remark as SpecialRemark,
    tm_weight as TmWeight,
    test_certificate as TestCertificate,
    night_concreting as NightConcreting,
    pour_str as PourStr,
    pumping_structure as PumpingStructure,
    pumping_num as PumpingNum,
    pump_uom as PumpUom,
    enquiry_no as EnquiryNo,
    quotation_version as QuotationVersion,
    delivery_date_from as DeliveryDateFrom,
    delivery_date_to as DeliveryDateTo,
    truck_type_count as TruckTypeCount,
    client_pump_count as ClientPumpCount,
    cust_approved_tm as CustApprovedTm,
    end_date as EndDate,
    end_time as EndTime,
    start_date as StartDate,
    local_last_changed as LocalLastChanged,
    last_changed_admin as LastChangedAdmin,
//    association to parent 
     _rmcso
}
