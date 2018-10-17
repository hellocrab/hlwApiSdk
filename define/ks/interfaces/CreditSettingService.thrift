namespace * com.hlw.ks.interfaces

include "../dataobject/creditsetting/creditsetting.thrift"
include "../../common/dataobject/common.thrift"

service CreditSettingService
{
    common.ResultDO CreditSetting(1:i32 type,2:i32 id), #获取学分是否开启
}