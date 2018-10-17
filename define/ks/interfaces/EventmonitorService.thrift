namespace * com.hlw.ks.interfaces

include "../dataobject/eventmonitor/eventmonitor.thrift"
include "../../common/dataobject/common.thrift"

service EventmonitorService
{
    common.ResultDO eventlist(1:eventmonitor.EventprojectDTO eventmonitor),
    common.ResultDO details(1:i32 vid),
}