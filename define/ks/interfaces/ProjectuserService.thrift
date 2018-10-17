namespace * com.hlw.ks.interfaces

include "../dataobject/projectuser/projectuser.thrift"
include "../../common/dataobject/common.thrift"

service ProjectuserService
{
    projectuser.UserlistResultDTO getuserlist(1:projectuser.ProjectRequestDTO project), //更具工程id获取该工程下用户
	common.ResultDO getoneuserinfo(1:projectuser.ProjectOneRequestDTO oneuser), #获取单个用户详细信息
}