CLASS lhc_ZI_PO_CDS DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_po_cds RESULT result.
    METHODS earlynumbering_create FOR NUMBERING
      IMPORTING entities FOR CREATE zi_po_cds.

ENDCLASS.

CLASS lhc_ZI_PO_CDS IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
    DATA lv_uuid TYPE sysuuid_x16.

    DATA(lt_entities) = entities.
    DELETE lt_entities WHERE guid16 IS NOT INITIAL.

    LOOP AT lt_entities INTO DATA(ls_entities).

      lv_uuid = cl_system_uuid=>create_uuid_x16_static(  ).

      APPEND VALUE #( %cid = ls_entities-%cid
                      guid16 = lv_uuid ) TO mapped-zi_po_cds .
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
