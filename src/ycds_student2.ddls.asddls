@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS basic view on Student2 table'
//@VDM.viewType: #BASIC
define root view entity YCDS_STUDENT2
  as select from ytbl_student2
{
  key studentid,
      fname,
      lname,
      mname,
      dob,
      gender
}
