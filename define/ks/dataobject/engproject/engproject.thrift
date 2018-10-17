namespace * com.hlw.ks.dataobject.engproject

struct EngprojectDTO 
{
    1:required i32 id,
    2:required string field,
}

struct EngprojectRequestDTO
{
    1:required i32 id,
	2:required i32 eveid,
	3:required string field,
	4:required i32 type,
	5:required i32 status,
	6:map<string,string> filename;
	7:required string limit,
	8:required i32 num,

   
}

struct EngprojectDocRequestDTO
{
    1: required i32 eventid,
    2: i32 identity_id,
    3: string title,
    4: string introduction,
    5: string address,
    6: i32 type,
	7:required i32 offset,
	8:required i32 num,
}

enum DocType
{
    IMG = 1,
    DOC = 2,
    AUDIO = 3,
    VIDIO = 4

}