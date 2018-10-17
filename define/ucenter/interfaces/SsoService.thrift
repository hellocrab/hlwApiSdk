namespace * com.gdl.ucenter.interfaces

include "../dataobject/sso/sso.thrift"
include "../../common/dataobject/common.thrift"

service SsoService
{
    common.ResultDO checkSsoInfo(), 
    common.ResultDO setSsoInfo() 
}