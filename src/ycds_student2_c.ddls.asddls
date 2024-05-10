@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS consumption view on Student2 table'
//@VDM.viewType: #CONSUMPTION
@UI: { headerInfo: { title.label: 'Student Information', title.type: #STANDARD,
typeName: 'Student ', typeNamePlural: 'Students' } }
define root view entity YCDS_STUDENT2_C
  as projection on YCDS_STUDENT2
{
      @UI.facet: [{ id: 'studentid',position: 10,label: 'Student Id',type: #IDENTIFICATION_REFERENCE }]

      @UI.lineItem: [{position: 10,type: #STANDARD }]
      @UI.identification: [{position: 10,type: #STANDARD }]
  key studentid,

      @Search.defaultSearchElement: true
      @UI.lineItem: [{position: 20,type: #STANDARD,label: 'FNAME' }]
      @UI.identification: [{position: 20,type: #STANDARD,label: 'FNAME' }]
      @UI.selectionField: [{position: 20}]
      fname,
      @UI.lineItem: [{position: 30,type: #STANDARD,label: 'LNAME' }]
      @UI.identification: [{position: 30,type: #STANDARD,label: 'LNAME' }]
      @UI.selectionField: [{position: 30}]
      lname,
      @UI.lineItem: [{position: 40,type: #STANDARD,label: 'MNAME' }]
      @UI.identification: [{position: 40,type: #STANDARD,label: 'MNAME' }]
      @UI.selectionField: [{position: 40}]
      mname,
      @UI.lineItem: [{position: 50,type: #STANDARD,label: 'DOB' }]
      @UI.identification: [{position: 50,type: #STANDARD,label: 'DOB' }]
      @UI.selectionField: [{position: 50}]
      dob,
      @UI.lineItem: [{position: 60,type: #STANDARD,label: 'GENDER' }]
      @UI.identification: [{position: 60,type: #STANDARD,label: 'GENDER' }]
      @UI.selectionField: [{position: 60}]
      gender
}
