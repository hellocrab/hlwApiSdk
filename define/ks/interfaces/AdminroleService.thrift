namespace * com.hlw.ks.interfaces

include "../dataobject/adminrole/adminrole.thrift"
include "../../common/dataobject/common.thrift"

service AdminroleService
{
    common.ResultDO behaviorlog(1:adminrole.AdminroleDTO adminrole),
	common.ResultDO roomproject(1:adminrole.AdminroleDTO adminrole),
	common.ResultDO userlist(1:adminrole.AdminroleDTO adminrole),

}