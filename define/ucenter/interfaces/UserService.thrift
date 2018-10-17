namespace * com.gdl.ucenter.interfaces

include "../dataobject/user/user.thrift"
include "../../common/dataobject/common.thrift"

service UserService
{
    common.ResultDO user(1:user.UserDTO user),
    user.UserResultDTO getUserInfoById(1:user.UserRequestDTO user), #用户信息查询
    user.UserResultDTO getUserInfoByidcard(1:string idcard,2:string username), #根据idcard或者username取得用户信息
    common.ResultDO getAllUserByDepartmentid(1:i32 departmentid,2:string admin_reg) #根据部门ID取得所有用户
}