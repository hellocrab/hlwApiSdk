namespace * com.gdl.ucenter.dataobject.action

#登录确认请求
struct LoginRequestDTO {
    1:required string username,
    2:required string password,
    3:required string type,
    4:required i32 way
}

#登录确认返回
    struct LoginResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: i32 uid, #用户Id
	5: map<string,string> data,
}
#UC用户信息返回
struct UserInfoResultDTO {
    1: string name,
    2: string type,#'idcard''userid''phone'
    3: string field,
}

#注册信息请求
struct RegisterRequestDTO{
    1: required string username,
    2: required string truename,
    3: string email
    4: string mobile #手机号
    5: i32 department, #部门ID
    6: string career, #岗位
    7: i32 status, #状态
    8: string note, #备注
    9: string password,
    10: i32 groupid,
    11: i32 projectid,#项目ID
    12: i32 companyid,#公司ID
    13: string companyname,#公司名称
    14: string userid,#member表userid
    15: i32 scores,#积分
    16: map<string,string> info,
    17: string idcard, #身份证
    18: i32 way #渠道 :1.AGK 2.干电力主网账号 3:电力一线
    19: i32 account_type #账户类型 1:个人账户 2：企业账户 

}

#注册确认返回
struct RegisterResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: i32 uid,
}

struct approveDataDo{
    1:string truename #真实名字
    2:string company_name       #企业名称 如果企业认证则
    3:string company_code	#企业编号 如果企业认证则必须传入
    4:string company_page	#营业执照照片 如果企业认证则必须传入
    5:string idcard_back	#身份证反面 
    6:string idcard_front	#身份证正面 
    7:string idcard             #身份证号 
    8:i32 sex                   #性别 1:男 2:女
    9:string avatar             #头像	
}

struct ApproveRequestDTO{
    1:i32 ucid ,#Ucenter ID
    2:i32 type ,#用户类型
    3:approveDataDo data
}

#注册确认返回
struct ApproveResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: i32 ucid,
}


