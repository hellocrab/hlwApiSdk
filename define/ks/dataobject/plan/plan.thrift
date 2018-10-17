namespace * com.hlw.ks.dataobject.plan

struct IntroduceResultDTO {
    1: bool success,
    2: i32 code,
    3: optional map<string,string> data,
    4: string message
}

