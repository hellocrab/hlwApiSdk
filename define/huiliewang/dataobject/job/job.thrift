namespace * com.hlw.huiliewang.dataobject.job


struct JobResumesRequestDTO 
{
	1:i32 job_id,#慧猎网前台职位ID
        2:i32 boss_resume_id,
	3: optional map<string,string> resume,
	4: optional map<string,string> resume_data,
	5: optional map<i32,map<string,string>> resume_edu,
	6: optional map<i32,map<string,string>> resume_languages,
	7: optional map<i32,map<string,string>> resume_project,
	8: optional map<i32,map<string,string>> resume_work,
}
