namespace * com.hlw.ks.dataobject.taskuser

struct TaskUserDTO
{
    1:required i32 id,
    2:required string field,
    3:required i32 task_type,
    4:required i32 task_id,
    5:required i32 task_completeness,
    6:required i32 is_complete,
    7:required i32 lose_efficacy,
	8:required i32 identity_id,
	9:required i32 center,
	10:required string page,
	11:required string adminreg,
	12:required i32 task_classify,
	13:required string data,
}
