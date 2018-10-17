namespace * com.hlw.ks.interfaces

include "../dataobject/plan/plan.thrift"
include "../../common/dataobject/common.thrift"

service PlanService
{
    plan.IntroduceResultDTO introduce(1:i32 jobId)
}