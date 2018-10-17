namespace * com.hlw.ks.interfaces

include "../dataobject/studyplan/studyplan.thrift"
include "../../common/dataobject/common.thrift"

service StudyplanService
{
    common.ResultDO getStudyplan(1:studyplan.StudyplanDTO studyplan)#查询学习计划
    common.ResultDO addStudyplan(1:studyplan.addStudyplanDTO studyplan)#添加反馈
}