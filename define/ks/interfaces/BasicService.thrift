namespace * com.hlw.ks.interfaces

include "../dataobject/basic/basic.thrift"
include "../../common/dataobject/common.thrift"

service BasicService
{
    common.ResultDO basic(1:basic.BasicDTO basic),
    common.ResultDO transcripts(1:basic.BasicDTO basic),
    common.ResultDO getBasicInfoById(1:basic.BasicDTO basic),
    common.ResultDO identify(1:basic.BasicDTO basic),
    common.ResultDO getBasicInfo(1:basic.BasicDTO basic),
    common.ResultDO setArchives(1:i32 paperid,2:string paperids),
    common.ResultDO BasicRoom(1:i32 identity_id ,2:string search ,3:i32 plaformid), #获取用户所在考场列表
}