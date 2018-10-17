namespace * com.hlw.ks.dataobject.projectuser

#传入一个查询对象更具 筛选出该工程下的所有用户
struct ProjectRequestDTO {
    1:required i32 eventid, #用户所属工程id 
	2:required string type, #赛选条件
	3:required i32 page #分页
}

#用户返回值
struct UserlistResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
	4: i32 usercount,
	5: optional map<string,map<string,string>> data
}

#传入工程id 用户id or identity
struct ProjectOneRequestDTO {
    1:required i32 eventid, #用户所属工程id 
	2:required i32 userid #用户id or identity
}