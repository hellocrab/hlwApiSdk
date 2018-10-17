namespace * com.hlw.ks.interfaces

include "../dataobject/message/message.thrift"
include "../../common/dataobject/common.thrift"

service MassageCenterService
{
    common.ResultDO sendOne(),
    common.ResultDO sendMany(),
    common.ResultDO OrderMassage()
}