@AbapCatalog.sqlViewName: 'YCDS_ENROLL_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view on enroll table'
define view YCDS_ENROLL
  as select from ytbl_enroll as ENROLL
{
      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 10, label: 'TRNGID'}],
      identification: [ {position: 10, label: 'TRNGID'}],
      selectionField: [ {position: 10}]}
  key ENROLL.trainingid as TRNGID,

      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 10, label: 'STUDENTID'}],
      identification: [ {position: 10, label: 'STUDENTID'}],
      selectionField: [ {position: 10}]}
  key ENROLL.studentid  as STUDENTID,
      ENROLL.status     as STATUS,
      ENROLL.marks      as MARKS,
      ENROLL.note       as NOTE
}
