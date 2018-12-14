namespace * com.hlw.huilie.interfaces

include "../dataobject/customer/customer.thrift"
include "../../common/dataobject/common.thrift"


service CustomerService
{
    common.ResultDO addCustomer(1:customer.AddCustomerRequestDTO addCustomerDo),
}