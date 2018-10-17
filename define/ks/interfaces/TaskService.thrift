namespace * com.hlw.ks.interfaces

include "../dataobject/task/task.thrift"
include "../dataobject/taskuser/taskuser.thrift"
include "../../common/dataobject/common.thrift"

service TaskService
{
  common.ResultDO getTaskInfo(1:task.TaskDTO task),
  common.ResultDO getTaskList(1:taskuser.TaskUserDTO taskUser),
  common.ResultDO receiveTask(1:taskuser.TaskUserDTO taskUser),
  common.ResultDO checkUserTaskAndPutTask(1:taskuser.TaskUserDTO taskUser),
}