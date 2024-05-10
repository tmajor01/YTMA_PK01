@AbapCatalog.sqlViewName: 'YCDS_TRAINING_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view on training table'
define view YCDS_TRAINING as select from ytbl_training as TRAINING
{
  key TRAINING.trainingid as TRAININGID,

      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 10, label: 'TITLE'}],
      identification: [ {position: 10, label: 'TITLE'}],
      selectionField: [ {position: 10}]}
      TRAINING.title      as TITLE,

      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 20, label: 'COURSEID'}],
      identification: [ {position: 20, label: 'COURSEID'}],
      selectionField: [ {position: 20}]}
      TRAINING.courseid   as COURSEID,

      TRAINING.startdate  as STDATE,
      TRAINING.enddate    as ENDDATE,
      TRAINING.iscomplete as STATUS,
      TRAINING.capacity   as CAPACITY
}
