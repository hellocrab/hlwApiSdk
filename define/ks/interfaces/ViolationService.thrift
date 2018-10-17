namespace * com.hlw.ks.interfaces

include "../dataobject/violation/violation.thrift"
include "../../common/dataobject/common.thrift"

service ViolationService
{
    common.ResultDO violat(1:violation.ViolationDTO violation),

}