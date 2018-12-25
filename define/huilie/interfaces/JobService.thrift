namespace * com.hlw.huilie.interfaces

include "../dataobject/job/job.thrift"
include "../../common/dataobject/common.thrift"


service JobService
{
    common.ResultDO saveJob(1:job.JobRequestDTO saveJobDo),
}