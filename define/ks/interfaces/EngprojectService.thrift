namespace * com.hlw.ks.interfaces

include "../dataobject/engproject/engproject.thrift"
include "../../common/dataobject/common.thrift"

service EngprojectService
{
    common.ResultDO englist(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO authoritw(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO mydocument(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO mydoc(1:engproject.EngprojectDocRequestDTO engProjectDoc),
    common.ResultDO myDocAdd(1:engproject.EngprojectDocRequestDTO engProjectDoc),
    common.ResultDO myDocEdit(1:i32 id ,2:engproject.EngprojectDocRequestDTO engProjectDoc),
    common.ResultDO getMyDoById(1:required i32 id,2:required i32 eventid),
    common.ResultDO violation(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO inback(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO mybacknr(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO fileadd(1:engproject.EngprojectRequestDTO engproject),
    common.ResultDO mydelete(1:engproject.EngprojectDocRequestDTO engProjectDoc),
	common.ResultDO feaktitle(1:engproject.EngprojectDocRequestDTO engProjectDoc),
}