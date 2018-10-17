namespace * com.gdl.ucenter.dataobject.user

struct UserDTO {
    1:string username
}

#用户请求DTO
struct UserRequestDTO {
    1: i32 id,
    2: i32 type,
    3: string field,
}

#用户返回DTO
struct UserResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: optional map<string,string> data
}


