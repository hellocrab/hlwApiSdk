namespace * com.hlw.ks.dataobject.training

#学习反馈请求
struct FeedBackRequestDTO
{
    1: i32 identity_id,#身份ID
    3: map<i32,string> images, #上传的图片
    4: string content #反馈内容
}