namespace * com.hlw.huilie.dataobject.job


struct JobRequestDTO 
{
    1:string name,#职位名称
    2:i32 minsalary,#最小薪资,
    3:i32 maxsalary,#最大薪资,
    4:i32 ejob_salary_month,#发放月数
    5:string description,#职位描述
    6:string detail_report,#汇报对象
    7:i32 detail_subordinate,#下属人数
    8:i32 number,#招聘人数
    9:string hy, #从事行业
    10:string exp_min,#工作经验低
    11:string exp_max,#工作经验高
    12:string report,#到岗时间
    13:string edate,#结束时间
    14:string age,#年龄要求
    15:string sex,#性别要求
    16:string edu,#教育程度
    17:string language, #语言要求
    18:string marriage#婚姻状态
}
