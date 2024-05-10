CLASS ycl_training DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS ycl_training IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA it_training TYPE STANDARD TABLE OF ytbl_training.

    it_training = VALUE #(
    ( trainingid = 'TRNG1' title = 'S/4 HANA INTRODUCTION' courseid = 'SAPPI1' startdate = '20160509' enddate = '20160513' iscomplete = '' capacity = '10' )
    ( trainingid = 'TRNG2' title = 'ABAP ADVANCED CONCEPTS' courseid = 'SAPAD1' startdate = '20160510' enddate = '20160516' iscomplete = '' capacity = '15' )
    ( trainingid = 'TRNG3' title = 'RESTful Progarmming' courseid =  'SAPABAP11' startdate = '20160511' enddate = '20160517' iscomplete = '' capacity = '20' )
    ( trainingid = 'TRNG4' title = 'SAP ANALYTICS CLOUD' courseid = 'SAPABAP12' startdate = '20160512' enddate = '20160518' iscomplete = '' capacity = '10' )
    ).

    DELETE FROM ytbl_training.
    INSERT ytbl_training FROM TABLE @it_training.
* clear the internal tab
    CLEAR it_training.
* check the result
    SELECT * FROM ytbl_training INTO TABLE @it_training.
    IF sy-subrc IS INITIAL.
      out->write( sy-dbcnt ).
      out->write( 'data inserted successfully!' ).
      out->write( it_training ).
    ELSE.
      out->write( 'data insertion failed!' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
