namespace * com.hlw.ks.dataobject.studyplan

struct StudyplanDTO {
    1:required i32 id,
    2:required string inid,
    3:required string admin_reg,
	4:required i32 offset,
	5:required i32 num,
}
#添加请求
struct addStudyplanDTO{
    1: required i32 study_plan_id,
    2: required string content,
    3: required i32 identity_id,
    4: i32 status,
    5: string title,
    6: i32 feedbackid,
    7: i32 trainingid
}
