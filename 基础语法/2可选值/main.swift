//
//  main.swift
//  可选值
//
//  Created by RaoBo on 2018/1/20.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation

// MARK:- 一 ? 可选类型
/** eg1: 报错
var str2:String
print("\(str2)") // 报错 ,Variable 'str2' userd before being initalized 变量为初始化就被使用
*/


/*
// 可选类型:
    Optional可选类型就有两种状态，有值 没有值
    Swift中申明变量时必须指定一个值，如果一开始不确定具体的值，可以为申明为可选类型。
 
var str1:String?
// 表示 str1要么是一个String 要么是nil表示值缺失, 只有这两种情况可选。
print("\(str1)")  // 打印结果:nil
print("\(str1!)") // 崩溃 str1!表示明确知道 str有值，实际是nil 表示值缺失矛盾了，所以崩溃。
 */


// MARK:- 二  ! 强制解析(提取可选类型的值)
/**
 str1! 表示明确知道 str1 有值，这个过程称之为强制解析。
 */
var str2:String? = "hello world"; //? 表示str2要么是一个String、要么是 nil(值缺失)
var forceStr2:String = str2!;
print("强制解析：\(forceStr2)")

// MARK:- 三 隐式强制解析，没感觉到其作用
var str3:String! = "呵呵"
var forceStr3:String = str3
print("隐式强制解析:\(str3)")

// MARK:- 四 参考资料 http://leonshi.com/2015/09/09/swift-learn-note-basic-optional-type/
