CLASS zcl_ops_so DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
   METHODS get_data.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ops_so IMPLEMENTATION.
  METHOD get_data.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA itab TYPE TABLE OF ztsd_rmc_vbap.
    DATA itab1 TYPE TABLE OF ztsd_rmc_order.
    data ls_data TYPE ztsd_rmc_vbap.
    itab1 = VALUE #( ( order_code = '0012613435' order_intrnl_lin = '000010' order_date = '20130516'
    item = 'M035P2RC013' pricing_plant = '511' prod_cat = 'RM35' order_qty = '100.000'
    delv_qty = '90.000' price_qty = '95.000' remove_code = 'ABC' cust_code = '0010010550'
    cust_name = 'ITD-ITD Cem JV-BMR Project' proj_code = '0040021444' proj_name = 'ITD-ITD Cem JV-BMR Project'
    ship_addr_line = 'Address Line 1' ship_addr_line_2 = 'Address Line 2' ship_city = 'City'
    ship_state = 'ST' ship_cntry = 'CNY' ship_postcd = '12345' update_date = '20240423'
    pump_or_dump = 'PD' ship_plant = 'SPLT' sched_qty = '80.000' load_size = '50.000'
    start_time = '120000' distance = '100.00' trvl_time = '0300' loads = '0050'
    rsn_code = 'XYZ' to_job_trvl_time = '0200' to_plant_trvl_time = '02' spacing = '10.00'
    unload_min = '20.00' createdby = 'USER001' createdate = '20240423' createtime = '120000'
    last_changeby = 'USER002' last_changedate = '20240423' last_changetime = '130000'
    extra1 = 'Extra Data 1' extra2 = 'Extra Data 2' extra3 = 'Extra Data 3'
    extra4 = 'Extra Data 4' extra5 = 'Extra Data 5' extra6 = 'Extra Data 6'
    extra7 = 'Extra Data 7' extra8 = 'Extra Data 8' extra9 = 'Extra Data 9'
    extra10 = 'Extra Data 10' quotation_no = 'QUO001' quotation_mat = 'Material ABC' ) ).

*   MODIFY ztsd_rmc_order FROM TABLE @itab1.
   if  sy-subrc = 0.
    out->write( |Sucess| ).
   endif.
   itab = VALUE #( (
    vbeln                   = '0012613435'
    posnr                   = '000010'
    quotation_no            = 'QTN001'
    quotation_mat           = 'MAT001'
    quotation_price         = '100.00'
    start_time              = '120000'
    truck_type              = 'Truck'
    travel_up_time          = '0200'
    travel_down_time        = '02'
    spacing                 = '10.00'
    unload_time             = '20.00'
    baseunitofmeasure       = 'Unit001'
    unload                  = '50.000'
    unload_uom              = 'UOM001'
    distance                = '100.00'
    load_qty                = '40.000'
    load_uom                = 'UOM002'
    structure               = 'Structure ABC'
    pump_code               = 'Pump001'
    auto_ticket             = 'X'
    slump                   = 'Slump001'
    is_slump                = 'X'
    loads                   = '0050'
    pump_service            = 'X'
    so_create_rel           = 'X'
    pump_code1              = 'Pump001'
    pump_code2              = 'Pump002'
    pump_code3              = 'Pump003'
    pump_code4              = 'Pump004'
    pump_code5              = 'Pump005'
    pump_code6              = 'Pump006'
    service_order           = 'SO001'
    customer_mob_no         = '1234567890'
    prnt_mix_ticket         = 'X'
    customer_weight         = 'X'
    order_priority          = '001'
    not_to_schedule         = 'X'
    lbt_octroi              = 'X'
    toll_fee                = 'X'
    pipe_laying_req         = 'X'
    pipe_lay_height         = '100'
    pipe_lay_length         = '200'
    flash_order             = 'X'
    cuky_field              = 'USD'
    pouring_rate            = '150.00'
    client_pump             = 'X'
    sub_reason              = 'SR'
    remarks                 = 'Remarks for sample data'
    transferd_ord_no        = 'ORD002'
    customer_classification = 'CC'
    cust_cls_desc           = 'Customer classification description'
    denied                  = 'X'
    mobile_flag             = 'X'
    customer_po_no          = 'CPO001'
    inquiry                 = 'INQ001'
    inquiry_status          = 'Inquiry status'
    rct_so_no               = 'RCTSO001'
    sap_so_no               = 'SAPSO001'
    rct_po_no               = 'RCTPO001'
    sap_po_no               = 'SAPPO001'
    sap_po_line_item        = '1234'
    cust_po_qty             = '100.00'
    cumm_cust_flag          = 'X'
    cumm_cust_flag_period   = 'PER1'
    special_remark          = 'Special remarks'
    tm_weight               = 'X'
    test_certificate        = 'X'
    night_concreting        = 'X'
    pour_str                = 'Pouring structure'
    pumping_structure       = 'X'
    pumping_num             = '0001'
    pump_uom                = 'Pump UOM'
    enquiry_no              = 'ENQ001'
    quotation_version       = 'QTN_VER001'
    delivery_date_from      = '20240423'
    delivery_date_to        = '20240430'
    truck_type_count        = '10'
    client_pump_count       = '5'
    cust_approved_tm        = 'TM01'
    end_date                = '20240501'
    end_time                = '180000'
    start_date              = '20240423'
  )
).
MODIFY ztsd_rmc_vbap FROM TABLE @itab.
   if  sy-subrc = 0.
    out->write( |Sucess| ).
   endif.

  ENDMETHOD.

ENDCLASS.
