CLASS lhc_ZI_PO_CDS DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_po_cds RESULT result.
    METHODS earlynumbering_cba_poitem FOR NUMBERING
      IMPORTING entities FOR CREATE zi_po_cds\_poitem.
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
                      Guid16 = lv_uuid
                       ) TO mapped-zi_po_cds .
    ENDLOOP.

  ENDMETHOD.


  METHOD earlynumbering_cba_Poitem.

    DATA : lv_line_item TYPE i .

    READ ENTITIES OF zi_po_cds IN LOCAL MODE
    ENTITY zi_po_cds BY \_PoItem
    FROM CORRESPONDING #( entities )
    LINK DATA(lt_linked_data).


    LOOP AT entities ASSIGNING FIELD-SYMBOL(<ls_entity>)
                               GROUP BY <ls_entity>-Guid16.

      lv_line_item = REDUCE #( INIT lv_max = lv_line_item
                FOR ls_LINK IN Lt_linked_data
                USING KEY entity WHERE ( source-guid16 = <ls_entity>-guid16 )
                        NEXT lv_max = COND i(
                        WHEN lv_max < ls_LINK-target-LineItemNo
                             THEN ls_LINK-target-LineItemNo
                        ELSE lv_max ) ) .

      lv_line_item = REDUCE #( INIT lv_max = lv_line_item
                FOR ls_entity IN entities
                USING KEY entity WHERE ( guid16 = <ls_entity>-guid16 )
                    FOR ls_poitem IN ls_entity-%target
                        NEXT lv_max = COND i(
                        WHEN lv_max < ls_poitem-LineItemNo
                             THEN ls_poitem-lineitemno
                        ELSE lv_max ) ).

      LOOP AT entities ASSIGNING FIELD-SYMBOL(<ls_line_entity>)
      USING KEY entity
      WHERE Guid16 = <ls_entity>-guid16.
        LOOP AT <ls_line_entity>-%target ASSIGNING FIELD-SYMBOL(<ls_poitem>).

          IF <ls_poitem>-LineItemNo IS INITIAL.

            lv_line_item += 10.

            APPEND CORRESPONDING #( <ls_poitem> ) TO mapped-zi_po_item_cds
            ASSIGNING FIELD-SYMBOL(<ls_new_poitem>).

            <ls_new_poitem>-LineItemNo = lv_line_item.

          ENDIF.

        ENDLOOP.
      ENDLOOP.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
