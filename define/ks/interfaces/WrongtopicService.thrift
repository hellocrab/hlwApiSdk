namespace * com.hlw.ks.interfaces

include "../dataobject/wrongtopic/wrongtopic.thrift"
include "../../common/dataobject/common.thrift"

service WrongtopicService
{
    common.ResultDO wrongtopic(1:wrongtopic.WrongtopicDTO wrongtopic)
}