namespace * com.hlw.ks.interfaces

include "../dataobject/library/library.thrift"
include "../../common/dataobject/common.thrift"

service LibraryService
{
    common.ResultDO LibraryCategorylist(1: string admin_reg),#获取电力文库类别
    common.ResultDO Librarylist (1: library.LibraryListRequestDTO librarylistDO), #获取学习材料列表
    library.LibraryResultDTO getLibrary (1: i32 libraryId) #获取学习材料
}
