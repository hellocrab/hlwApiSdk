namespace * com.hlw.huiliewang.dataobject.contactInfo


struct contactScanRequestDTO
{
	1:i32 itemId,#浏览对象ID
	2:i32 userRoleId,#用户roleID
	3:i32 type,#浏览类型1;简历 2:客户
	4:optional string subRoleId,#下级ID
}
