namespace * com.hlw.ks.interfaces

include "../dataobject/signrules/signrules.thrift"
include "../../common/dataobject/common.thrift"

service SignrulesService
{
    common.ResultDO record(1:signrules.SignrulesDTO record),
	common.ResultDO checkin(1:signrules.SignrulesDTO record),
	common.ResultDO checkrecord(1:signrules.SignrulDTO record),
	common.ResultDO checkrecordmonth(1:signrules.SignrulDTO record),
	common.ResultDO signnote(1:signrules.SignrulesDTO record),
	common.ResultDO signinnote(1:signrules.SignrulesDTO record),
}