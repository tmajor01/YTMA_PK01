@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS consumption view on Enroll2 table'
//@VDM.viewType: #CONSUMPTION
@UI: { headerInfo: { title.label: 'Course Enrollment Details',title.type: #STANDARD,
typeName: 'Enroll',typeNamePlural: 'Enrolls'}}
define root view entity YCDS_ENROLL2_C
  as projection on ycds_enroll2
{
      @UI.facet: [{ id: 'TrainingID',position: 10,label: 'Training Id',type:
      #IDENTIFICATION_REFERENCE }]
      @UI.lineItem: [{position: 10,type: #STANDARD }]
      @UI.identification: [{position: 10,type: #STANDARD }]
  key TrainingID,
      @UI.lineItem: [{position: 20,type: #STANDARD,label: 'Student Id' }]
      @UI.identification: [{position: 20,type: #STANDARD,label: 'Student Id' }]
  key Studentid,
      @UI.lineItem: [{position: 30,type: #STANDARD,label: 'Course Id' }]
      @UI.identification: [{position: 30,type: #STANDARD,label: 'Course Id' }]
  key Courseid,
      @UI.lineItem: [{position: 40,type: #STANDARD,label: 'Status' }]
      @UI.identification: [{position: 40,type: #STANDARD,label: 'Status' }]
      Status,
      @UI.lineItem: [{position: 50,type: #STANDARD,label: 'Marks' }]
      @UI.identification: [{position: 50,type: #STANDARD,label: 'Marks' }]
      Marks
}
