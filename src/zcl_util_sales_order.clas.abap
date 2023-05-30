CLASS zcl_util_sales_order DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_util_sales_order IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: lt_vbak TYPE TABLE OF zvbak.

    lt_vbak = VALUE #( ( vbeln = '5000001231'
                         erdat = sy-datum
                         ernam = 'JOHN'
                         vkorg = 'US10'  )

                      (  vbeln = '5000001232'
                         erdat = sy-datum
                         ernam = 'SMITH'
                         vkorg = 'US12'  ) ) .

    DELETE FROM zvbak.
    INSERT zvbak FROM TABLE @lt_vbak.
*  write->out( 'Data inserted successfully' ).

  ENDMETHOD.
ENDCLASS.
