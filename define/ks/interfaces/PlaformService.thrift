namespace * com.hlw.ks.interfaces

include "../dataobject/plaform/plaform.thrift"
include "../../common/dataobject/common.thrift"

service PlaformService
{
    common.ResultDO getPlaform(1:i32 plaformType,2:string name,3:i32 userid,4:i32 level),#根据userid 取得所在平台
    plaform.PlaformInfoResultDTO getPlaformInfoById(1:i32 plaform_id), #通过平台ID取得平台信息
    plaform.PlaformInviteCodeResultDTO plaformInviteCodeConfirm(1:string code,2:i32 userid); #平台邀请码使用
    plaform.PlaformInviteCodeResultDTO plaformInviteCodeAdd(1:plaform.PlaformInviteCodeAddRequestDTO inviteCodeAddRequestDO) #平台邀请码生成
}