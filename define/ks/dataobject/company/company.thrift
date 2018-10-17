namespace * com.hlw.ks.dataobject.company

#慧猎网考试系统公司信息返回
struct CompanyInfoResultDTO {
    1: bool success,
    2: i32 code,
    3: string message,
    4: map<string,string> data
}