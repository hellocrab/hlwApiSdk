namespace * com.hlw.ks.interfaces

include "../dataobject/practice/practice.thrift"
include "../../common/dataobject/common.thrift"

service PracticeService
{
    common.ResultDO practice(1:practice.QbankDTO practice)
    common.ResultDO knows(1:practice.PracticeDTO practice)
    common.ResultDO questype(1:practice.PracticeDTO practice)
    common.ResultDO sections(1:practice.PracticeDTO practice)
    common.ResultDO contrast(1:practice.PracticeDTO practice)
    common.ResultDO contrast_practice(1:practice.PracticeDTO practice)
    common.ResultDO collection(1:practice.PracticeDTO practice)
}