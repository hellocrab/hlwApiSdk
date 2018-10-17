namespace * com.hlw.ks.dataobject.user

struct UserDTO {
    1:required i32 id,
    2:required i32 type,
    3:required string update,
    4:required string where,
    5:required string join,
    6:required string field,
	7:required i32 offset,
	8:required i32 num,
}

#安管培用户请求DTO
struct UserRequestDTO {
    1:required i32 id,
    2:required i32 type,
    3:required string field,
}


#安管培用户返回DTO
struct UserResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: optional map<string,string> data
}

#安管培用户请求DTO
struct UserLoginRequestDTO {
    1:required string username,
    2:required string password,
    3:i32 plaform,
    4:i32 conpamy_id
}


#安管培用户返回DTO
struct UserLoginResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: i32 uid, #用户Id
    5: i32 pid, #身份ID
    6: map<string,string> data
}

#安管培用户单点登录状态DTO
struct SingleLoginResultDTO {
    1: bool success,
    2: i32 code,
    3: bool islogin
}
#安管培忘记密码请求DTO
struct UserPasswordRequestDTO {
    1:required string idcard,
    2:required string userid,
    3:i32 plaform,
    4:i32 conpamy_id
}

#安管培用户ID返回DTO
struct UseridResultDTO{
    1:required i32 userid
}

#安管控用户简易注册
struct UserSimpleRegisterDTO{
    1:i32 ucid,
    2:string username,
    3:string truename,
    4:string idcard,
    5:string phone
}