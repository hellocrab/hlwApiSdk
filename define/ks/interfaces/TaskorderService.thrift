namespace * com.hlw.ks.interfaces

include "../dataobject/taskorder/taskorder.thrift"
include "../../common/dataobject/common.thrift"

service TaskorderService
{
    common.ResultDO bulletinlist(1:taskorder.TaskorderDTO taskorder),
}