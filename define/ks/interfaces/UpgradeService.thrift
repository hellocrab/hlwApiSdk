namespace * com.hlw.ks.interfaces

include "../dataobject/upgrade/upgrade.thrift"

service UpgradeService
{
    upgrade.getVersionResultDTO getVersion(1:i32 versionType), #获取最新的版本信息
    upgrade.versionContentResultDTO getVersionContent(1:i32 versionId) #获取版本的更新内容
}
