CLASS ycl_enroll DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS ycl_enroll IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA it_enroll TYPE STANDARD TABLE OF ytbl_enroll.

    it_enroll = VALUE #(
 ( trainingid = 'TRNG1' studentid = '1000101' status = 'PASS' marks = '88.8' )
 ( trainingid = 'TRNG1' studentid = '1000102' status = 'PASS' marks = '92.0' )
 ( trainingid = 'TRNG1' studentid = '1000103' status = 'PASS' marks = '90.0' )
 ( trainingid = 'TRNG1' studentid = '1000105' status = 'FAIL' marks = '68.0' )
 ( trainingid = 'TRNG2' studentid = '1000102' status = 'PASS' marks = '88.8' )
 ( trainingid = 'TRNG2' studentid = '1000104' status = 'PASS' marks = '92.0' )
 ( trainingid = 'TRNG2' studentid = '1000103' status = 'PASS' marks = '90.0' )
 ( trainingid = 'TRNG2' studentid = '1000105' status = 'FAIL' marks = '60.0' )
 ( trainingid = 'TRNG3' studentid = '1000101' status = 'PASS' marks = '88.8' )
 ( trainingid = 'TRNG3' studentid = '1000102' status = 'PASS' marks = '92.0' )
 ( trainingid = 'TRNG3' studentid = '1000103' status = 'PASS' marks = '90.0' )
 ( trainingid = 'TRNG3' studentid = '1000104' status = 'FAIL' marks = '56.0' )
 ( trainingid = 'TRNG3' studentid = '1000105' status = 'PASS' marks = '88.8' )
 ( trainingid = 'TRNG3' studentid = '1000106' status = 'PASS' marks = '92.0' )
 ( trainingid = 'TRNG4' studentid = '1000109' status = 'PASS' marks = '90.0' )
 ( trainingid = 'TRNG4' studentid = '1000110' status = 'PASS' marks = '93.0' )
    ).

    DELETE FROM ytbl_enroll.
    INSERT ytbl_enroll FROM TABLE @it_enroll.
* clear the internal tab
    CLEAR it_enroll.
* check the result
    SELECT * FROM ytbl_enroll INTO TABLE @it_enroll.
    IF sy-subrc IS INITIAL.
      out->write( sy-dbcnt ).
      out->write( 'data inserted successfully!' ).
      out->write( it_enroll ).
    ELSE.
      out->write( 'data insertion failed!' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
