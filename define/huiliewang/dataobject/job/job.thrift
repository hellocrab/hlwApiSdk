namespace * com.hlw.huiliewang.dataobject.job


struct JobResumesRequestDTO 
{
	1:i32 job_id,#慧猎网前台职位ID
	2: optional map<string,string> resume,
	3: optional map<string,string> resume_data,
	4: optional map<i32,map<string,string>> resume_edu,
	5: optional map<i32,map<string,string>> resume_languages,
	6: optional map<i32,map<string,string>> resume_project,
	7: optional map<i32,map<string,string>> resume_work,
}
