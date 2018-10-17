namespace * com.hlw.ks.dataobject.questions

struct QuestionsDTO {
    1:required i32 id,
    2:required i32 type,
    3:required string ids,
    4:required string field,
    5:required i32 qbankid,
    6:required i32 typeid,
    7:required i32 knowsid,
}

struct AnswerResuiltDTO{
    1:required i32 questionId,
    2:map<string,string> answers
}

