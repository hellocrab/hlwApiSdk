namespace * com.hlw.ks.dataobject.upgreade

#获取最新的版本信息
struct getVersionResultDTO
{
    1: required bool success,
    2: required i32 code,
    3: string versionId,#版本ID
    4: string versiontype, #版本类型
    5: string url,
    6: string title, #版本名称
    7: string time #版本发布时间
}

#获取版本更新内容
struct versionContentResultDTO
{
    1: required bool success,
    2: required i32 code,
    3: string content,#版本内容
    4: string time #版本发布时间
}