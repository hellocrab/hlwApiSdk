namespace * com.hlw.ks.interfaces

include "../../common/dataobject/common.thrift"

service TestInstanceService{
    string getDemo(1:string param),
    common.ResultDO getCommon(1:string param),
    string getToday(1:string param),
}
