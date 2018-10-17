namespace * com.hlw.common.dataobject.common

struct ResultDO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: optional map<i32,map<string,string>> data,
    5: optional map<string,map<string,string>> datas,
}
