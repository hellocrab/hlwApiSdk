namespace * com.hlw.huiliewang.interfaces

include "../dataobject/job/job.thrift"
include "../../common/dataobject/common.thrift"


service JobHuilieService
{
	common.ResultDO saveJobResumes(1:job.JobResumesRequestDTO jobresumesDo),
}