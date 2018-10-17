namespace * com.hlw.ks.dataobject.adminrole

struct AdminroleDTO 
{
    1:required i32 id,
    2:required string field,
	3:required string limit,
	4:required string reg,
	5:required string name,
}

struct AdminroleRequestDTO
{
    1:required i32 id,
	2:required i32 eveid,
	3:required string field,
	4:required i32 type,
	5:required i32 status,
	6:map<string,string> filename;

   
}
