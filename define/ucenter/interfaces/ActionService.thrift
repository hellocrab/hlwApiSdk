namespace * com.gdl.ucenter.interfaces

include "../dataobject/action/action.thrift"
include "../../common/dataobject/common.thrift"

service ActionService
{
    action.RegisterResultDTO registerUser(1:action.RegisterRequestDTO RegisterDO),#干电力网用户注册
    action.LoginResultDTO login(1:action.LoginRequestDTO LoginDO),#登录确认接口
    common.ResultDO editUcUser(1:i32 userid,2:action.RegisterRequestDTO EditDO),#修改接口
    action.RegisterResultDTO editUcPassword(1:action.LoginRequestDTO LoginDO),#修改Uc用户密码
    action.RegisterResultDTO passwordVerify(1:action.UserInfoResultDTO UserDO),#验证密码正确性
    action.ApproveResultDTO approve(1:action.ApproveRequestDTO ApproveDO) #认证接口
}
