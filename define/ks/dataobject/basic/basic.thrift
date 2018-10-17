namespace * com.hlw.ks.dataobject.basic

struct BasicDTO {
    1:required i32 id,
    2:required i32 basicid,
    3:required i32 type,
    4:required string field,
    5:required string name,
    6:required string time,
    7:required string admin_reg,
}
enum FaceType
{
    PASS = 60,
    differ = 30,
    message1 = 1,
    message2 = 2
}