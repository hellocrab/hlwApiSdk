namespace * com.hlw.ks.dataobject.library

#图书馆资料列表请求
struct LibraryListRequestDTO
{
    1: string admin_reg, #子账号
    2: i32 share, #分享范围
    3: i32 catid, #分类ID
	4: i32 offset,
	5: i32 num,
}

#图书馆资料
struct LibraryResultDTO
{
    1: bool success,
    2: string message,
    3: optional i32 id, #资料ID
    4: optional string title,#资料名
    5: optional i32 l_type,#资料类型
    7: optional string fileurl #资料地址，或者Url
}
