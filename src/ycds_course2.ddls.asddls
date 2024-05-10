@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS basic view on Course2 table'
//@VDM.viewType: #BASIC
define root view entity YCDS_COURSE2
  as select from ytbl_course2
{
  key courseid,
      coursename,
      virtualpossible,
      ishandson,
      totalmarks,
      cutofmarks,
      start_date,
      end_date,
      iscomplete,
      capacity
}
