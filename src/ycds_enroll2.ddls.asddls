@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS basic view on Enroll2 table'
//@VDM.viewType: #BASIC
define root view entity ycds_enroll2
  as select from ytbl_enroll2
  association [0..1] to ytbl_course2  as _course  on _course.courseid = $projection.Courseid
  association [0..1] to ytbl_student2 as _student on _student.studentid = $projection.Studentid
{
  key enroll_uuid as Trainingid,
  key studentid   as Studentid,
  key courseid    as Courseid,
      status      as Status,
      marks       as Marks,
      // associations
      _student,
      _course
}
