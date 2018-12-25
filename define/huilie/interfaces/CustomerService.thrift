namespace * com.hlw.huilie.interfaces

include "../dataobject/customer/customer.thrift"
include "../../common/dataobject/common.thrift"


service CustomerService
{
    common.ResultDO saveCustomer(1:customer.CustomerRequestDTO CustomerDo),
}