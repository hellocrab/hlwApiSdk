namespace * com.hlw.ks.interfaces

include "../dataobject/questions/questions.thrift"
include "../../common/dataobject/common.thrift"

service QuestionsService
{
    common.ResultDO getQuestionsInfoByIds(1:questions.QuestionsDTO questions)
    common.ResultDO countQuestion(1:questions.QuestionsDTO questions)
    questions.AnswerResuiltDTO getAnswerByQuestionId(1:required i32 questionId,2:required i32 qtype);
}