namespace * com.hlw.ks.interfaces

include "../dataobject/user/user.thrift"
include "../../common/dataobject/common.thrift"

service UserService
{   
    user.UseridResultDTO getUseridByUcid(1:i32 ucid),
    user.UserLoginResultDTO login(1:user.UserLoginRequestDTO login),#安管培系统用户登录
    common.ResultDO sigleLogin(1:i32 identity_id),#单点登录注册
    user.SingleLoginResultDTO getSigleLoginStatus(1:i32 userid),#单点登录状态
    user.UserResultDTO getUserInfoById(1:user.UserRequestDTO user), #安管培系统用户信息查询
    common.ResultDO user(1:user.UserDTO user), #操作安管培系统用户信息
    common.ResultDO messagepush(1:user.UserDTO user), #通知
    common.ResultDO userList(1:user.UserDTO user), #获取用户列表
    common.ResultDO getAllUserByProjecttid(1:i32 projecttid,2:string admin_reg), #根据项目组ID取得所有用户
    common.ResultDO getAllUserBySpecialtyid(1:i32 specialtyid,2:string admin_reg), #根据专业ID取得所有用户
    common.ResultDO newpassword(1:user.UserPasswordRequestDTO password),#安管培系统忘记密码
    common.ResultDO userconfig(1:user.UserDTO user), #查询用户配置
    common.ResultDO addconfig(1:user.UserLoginResultDTO user), #写入/更新用户配置
    common.ResultDO simpleRegister(1:user.UserSimpleRegisterDTO simpledo),#安管培系统简单注册
    common.ResultDO setUserScore(1:i32 identity_id,2:i32 scores,3:string type),#修改用户积分
    common.ResultDO userinfo(1:string idcard),#通过身份证查询用户信息
    common.ResultDO companyaddress(1:user.UserDTO user),
    common.ResultDO modifydepartment(1:user.UserResultDTO user),

}