@AbapCatalog.sqlViewName: 'YCDS_STUDENT_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view on student table'
define view YCDS_STUDENT
  as select from ytbl_student as student
{
      @UI.hidden: true
  key student.studentid  as StudentID,
      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 10, label: 'Fname'}],
      identification: [ {position: 10, label: 'Fname'}],
      selectionField: [ {position: 10}]}
      student.fname      as FName,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 20, label: 'Lname'}],
      identification: [ {position: 20, label: 'Lname'}],
      selectionField: [ {position: 20}]}
      student.lname      as LName,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 30, label: 'Gender'}],
      identification: [ {position: 30, label: 'Gender'}],
      selectionField: [ {position: 30}]}
      student.gender     as Sex,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 40, label: 'DOB'}],
      identification: [ {position: 40, label: 'DOB'}],
      selectionField: [ {position: 40}]}
      student.birthdate  as DOB,
      @Search.defaultSearchElement: true
      @UI: {lineItem: [ {position: 50, label: 'Commnumber'}],
      identification: [ {position: 50, label: 'Commnumber'}],
      selectionField: [ {position: 50}]}
      student.commnumber as Commnumber
}
