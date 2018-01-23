//
//  main.swift
//  8 if
//
//  Created by RaoBo on 2018/1/22.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation


/**
 Swift:
 if 条件表达式 {指令}     if 条件表达式 {指令} else {指令}
 1. if 后面的括号可以省略
 2. 只能以bool作为条件语句
 3. if后面的大括号不能省略。不要写的连自己都看不懂的代码。
 */
var age1 = 10
var age2 = 20
var max:Int
max = age2
if age1 > age2
{
    max = age1
}else {
    max = age2
}
print("max:\(max)")

if age1 > age2 {max = age1}



var score = 99.9
//if score >=90 // 逻辑运算符和值之间必须要有空格。Swift挺好的

if score >= 90
{
    print("very good")
}else if score >= 60
{
    print("良好")
}else
{
    print("不给力")
}




