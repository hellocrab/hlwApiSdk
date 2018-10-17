namespace * com.hlw.ks.interfaces

include "../../common/dataobject/common.thrift"

service BannerService
{
    common.ResultDO getBanners(1:i32 type), 
}
