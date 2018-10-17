namespace * com.hlw.ks.interfaces

include "../dataobject/training/training.thrift"
include "../../common/dataobject/common.thrift"

service TrainingService
{
    common.ResultDO feedBack(1: training.FeedBackRequestDTO feedbackDo), #学习反馈
    common.ResultDO creditrecord (1:i32 identity_id), #获取练习列表
}