//
//  main.swift
//  9 for
//
//  Created by RaoBo on 2018/1/22.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

//MARK:- for in循环
/**
 for in 循环
 格式 : for(接收参数 in 取出的参数) {需要执行的语句}
 for in含义: 从(in)取出什么给什么，直到取完为止
 */
var sum1:Int = 0
for i in 1..<10 { // 会将区间的值一次性赋值给i
    sum1 += i
}
print(sum1)


// for in 遍历字典 方式一
for dic in ["name":"关键词", "age":18, "gender":"男"] as [String:Any] {
    print("\(dic)")
}
print("--------")

// for in 遍历字典 方式二
var dic2:[String:Any] = ["brand":"本田XRV","price":150000,"address":"武汉"]
for (k1,v1) in dic2 {
    print("k1:\(k1) v1:\(v1)")
}
print("--------")

// MARK:- 二 获取遍历索引
/**
 .offset  索引
 .element 具体的元素
 
 格式一：不带括号
 for xxx in
 
 格式二：直接把下标放在（）括号中
 for (下标，具体内容) in
 */
var xuehaoArr = [1001,1002,1003,1006];
for num in xuehaoArr.enumerated() {
    print("\(num.offset) \(num.element)")
}
print("-----------")

for(index,item) in xuehaoArr.enumerated() {
    print(index,item)
}
print("-----------")

// MARK:- 三 区间循环 区间(Range)
/**
 如果是数组的话 ... 会导致数组越界奔溃❌， ..< ✅
 字符串是OK的。
 0..<10   [0,10)   常用于数组，防止越界
 0...10   [0,10]
 */
var rs = ""
for i in 0...10 {
    rs += "\(i)"
}
print(rs)
print("----------")

// 跨步遍历
/**
 stride:跨过
 comparable: 比得上
 signed :签名，有符号的
 numeric:数字
 stride(from: <#T##Strideable#>, to: <#T##Strideable#>, by: <#T##Comparable & SignedNumeric#>)
 
 0 ~ 50 的遍历 跨步 10
 用于遍历 半开半闭区间 0..<50 ,[0,50) ,不包含最后一个数
 */
for i in stride(from: 0, to: 50, by: 10) {
    print("i = \(i)")
}
print("----------")

/**
 0 ~ 20 的遍历 跨步5
 相当于遍历 0..<20   [0,20] 闭区间，会遍历最后一个数
 */
for j in stride(from: 0, through: 20, by: 5) {
    print("j = \(j)")
}
print("---------")


// MARK:- 四 遍历元组(类似字典遍历)
let tupleArray = [("LiLei",1990,167.0),
                  ("HanMeiMei",1988,175.3),
                  ("Lucy",2000,180.0)]
for t in tupleArray {
    print("姓名:\(t.0), 出生日期:\(t.1) 身高:\(t.2)")
}




