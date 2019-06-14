namespace * com.hlw.huiliewang.interfaces
include "../dataobject/contactsInfo/business.thrift"
include "../../common/dataobject/common.thrift"
service BusinessService
{
    common.ResultDO searchCallist(1:business.businessRequestDTO businessDo),
}