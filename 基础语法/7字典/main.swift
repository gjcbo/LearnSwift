//
//  main.swift
//  字典
//
//  Created by RaoBo on 2018/1/22.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation
// 今天状态不佳呀，早上就好困，

//MARK:- 一 字典的定义
// 创建方式一
var dic1:Dictionary<String,String> = ["name":"李磊" ,"gender":"男"]
//print(dic1)

// 创建方式二
var dic2:Dictionary<String, Any> = ["name":"HanMeiMei", "age":18] // Any表示value的值得类型可以为Any。
//print(dic2)

// 创建方式三
var dic3 = ["name":"Tim Cook","age":60] as Any;
//print(dic3)

var dic4 = ["name":"Steve Jobs" as AnyObject, "age":30 as AnyObject];
var dic5:Dictionary<String, AnyObject> = ["name":"Steve Jobs" as AnyObject, "age":30 as AnyObject];
//print(dic4)

// 创建方式四:快速创建
var dic6:[String:Any] = ["name":"FaceBook","age":5];
//print(dic6)


//MARK:- 二 字典的使用
// 1.快速创建字典
var dic7:[String:Any] = ["bookName":"流血的仕途","price":36]
//print(dic7)

// 2.数组字典
var arrDic:[[String:Any]] = [
["name":"李磊","age":22],
["name":"韩梅梅","age":24]
]
//print(arrDic)

// 3.
var inforDic:[String:Any] = ["name":"rb","age":"18"]
//print(inforDic)
/**key存在则为修改，key不存在则为添加*/
inforDic["name"] = "张三" // key存在:修改键值对
inforDic["score"] = 98   // key不存在:增加键值对
//print(inforDic)
inforDic.removeValue(forKey: "name") // 删除键值对
//print(inforDic)
/**
 删除键值对：
 字典是通过key来定位的, 所有的key必须是可以 hash/哈希 的 (MD5是一种哈希, 哈希就是将字符串变成唯一的整数, 便于查找, 能提高字典遍历的速度)
 hash 不懂
 */


// 4.字典遍历
var dynastyDic:[String:Any] = ["name":"唐朝","age":289]
// 写法一
//for tmpDic in dynastyDic {
//    print("key:\(tmpDic.key) value:\(tmpDic.value)")
//}

// 写法二
//for (k1,v1) in dynastyDic {
//    print("key:\(k1) value:\(v1)")
//}


// 5. 字典合并demo
// 专业: 学制: 课程
// 学生：姓名  年龄：性别
var stuDic:[String:Any] = ["name":"张三","age":19]
var zhuanYeDic:[String:Any] = ["zhuanYe":"计算机","xueZhi":"4年","courceCount":20]
for (k2,v2) in zhuanYeDic {
    stuDic[k2] = v2
}
//print(stuDic)


// MARK:-  三 集合字典
var airports:Dictionary<String,String> = ["TYO":"Tokyo","DUB":"Dublin"]
//print(airports)
var dic10 = ["name":"张学友","age":18,"height":175] as [String:Any];
//print(dic10)
dic10["name"] = "Tim Cook" // key存在就是修改
//print(dic10) // ["name": "Tim Cook", "age": 18, "height": 175]

dic10["gender"] = "男";    // key不存在就是增加
//print(dic10) // ["name": "Tim Cook", "age": 18, "height": 175, "gender": "男"]

// 合并字典:遍历一个字典，让另一个字典的
var dict11 = ["title":"扛把子"]
for (k,v) in dict11 {
    dic10[k] = v
}
//print(dic10) // 打印:["name": "Tim Cook", "age": 18, "height": 175, "gender": "男", "title": "扛把子"]

// 获取字典中所有的keys，values 要强转为数组
//print(dic10.keys) // ❌ 奔溃
//print(Array(dic10.keys))   // ✅
//print(dic10.values)// ❌崩溃
//print(Array(dic10.values)) // ✅


// MARK:- 四 编程题
// 4.1创建一个数组，添加10个元素，遍历将每个元素输出
var arr10 = [String]()
arr10.append("唐朝")
arr10.append("宋朝")
arr10.append("明朝")
arr10.append("清朝")

// 遍历方式1
for str in arr10 {
    print(str)
}

// 遍历方式二 ..< ✅     ... ❌ 数组越界，奔溃
for i in 0..<arr10.count {
    print("i\(i): \(arr10[i])");
}

print("------------")

// 4.2 创建一个集合Set, 添加10个数字，然后按顺序打印
var languangeSet = Set<String>()
languangeSet.insert("C语言")
languangeSet.insert("Swift")
languangeSet.insert("OC")
languangeSet.insert("JS")

for language in languangeSet {
    print("\(language)")
}

// 不能按照数组那种方式写。 不能
//for i in 0..<languangeSet.count {
//    print(languangeSet(i));
//}


// 4.3 创建一个dic，添加5个学生 然后按键值打印
// 如何创建一个空字典
var studentDic = Dictionary <String,String>() // ✅
var studentDic2:[String:String] // 这种方式创建的必须初始化 initialized。这种是有问题的,未被初始化
//studentDic2["name"] = "张三"; // Variable 'studentDic2' passed by reference before being initialized
//studentDic2["number"] = "1001"
studentDic["num1"] = "李四"
studentDic["num2"] = "张三";
studentDic["num3"] = "liLei";
studentDic["num4"] = "hanMeiMei";

for (num,name) in studentDic {
    print("num:\(num) name:\(name)")
}





