namespace * com.hlw.ks.interfaces

include "../../common/dataobject/common.thrift"

service TestService
{
    string test(1:string test),
}