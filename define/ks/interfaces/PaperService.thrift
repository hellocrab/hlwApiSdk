namespace * com.hlw.ks.interfaces

include "../dataobject/paper/paper.thrift"
include "../../common/dataobject/common.thrift"

service PaperService
{
    common.ResultDO getPaperList(1:paper.PaperDTO paper)
}