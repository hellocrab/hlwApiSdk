namespace * com.hlw.ks.interfaces

include "../dataobject/company/company.thrift"
include "../../common/dataobject/common.thrift"

service CompanyService
{
    company.CompanyInfoResultDTO getCompanyInfoById(1:required i32 companyId,2:i32 userId,3:bool relation = false,4:i32 identity_id),#根据公司ID取得公司相关信息
}