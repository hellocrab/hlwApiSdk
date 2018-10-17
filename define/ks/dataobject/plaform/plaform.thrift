namespace * com.hlw.ks.dataobject.plaform

struct PlaformInfoResultDTO {
    1: bool success,
    2: i32 code,
    3: optional map<string,string> data,
    4: string message
}

#部门邀请码返回DTO
struct PlaformInviteCodeResultDTO {
    1:bool success,
    2:i32 code,
    3:string invitecode
    4:string message
}

#部门邀请码新建DTO
struct PlaformInviteCodeAddRequestDTO {
    1:string name,
    2:i32 plaform_id,
    3:string code,
    4:i32 expire_time
}
