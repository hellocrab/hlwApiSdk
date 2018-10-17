namespace * com.hlw.ks.dataobject.signrules

struct SignrulesDTO {
    1:required i32 id,
    2:required i32 pid,
    3:required string admin_reg,
	4:required i32 identity_id,
	5:required string address,
	6:required map<string,string> sign,
	7:required i32 plaform_id,
	8:required string note,
	9:required i32 type,

}

struct SignrulDTO {
    1:required i32 id,
    2:required i32 pid,
	3:required i32 identity_id,
	4:required i32 plaform_id,
	5:required string datime,

}