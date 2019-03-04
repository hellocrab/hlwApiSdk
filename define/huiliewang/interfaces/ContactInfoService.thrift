namespace * com.hlw.huiliewang.interfaces

include "../dataobject/contactsInfo/contactInfo.thrift"
include "../../common/dataobject/common.thrift"


service ContactInfoService
{
	common.ResultDO isScan(1:contactInfo.contactScanRequestDTO contactInfoDo),
	common.ResultDO scan(1:contactInfo.contactScanRequestDTO contactInfoDo),
}