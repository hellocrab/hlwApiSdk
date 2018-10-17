namespace * com.hlw.ks.dataobject.practice

struct PracticeDTO {
    1: i32 id,
    2: i32 type,
    3: string where,
    4: string insert,
    5: string update,
    6: string deleteid,
	7: i32 knowsid,
}
struct QbankDTO {
    1: i32 isdelete,
    2: i32 status,
    3: string admin_reg,
    4: string name,
    5: i32 id,
	6:required i32 offset,
	7:required i32 num,
}
