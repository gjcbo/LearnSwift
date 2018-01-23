//
//  main.swift
//  12 switch
//
//  Created by RaoBo on 2018/1/22. // 电脑名
//  Copyright © 2018年 关键词. All rights reserved. // project的机构名
//

import Foundation

// MARK:- switch
/**
 Swift:
 0. switch 没有穿透效果,可以不用写break
 1. 可以判断对象类型，OC 必须是整数
 2. 可以通过其他方式实现穿透效果 case 'A','B':
 3. defalut 只能放在最后
 */
// 0. 没有穿透效果
var rank = "A"
switch rank {
case "A":
    print("A")
case "B":
    print("B")
case "C":
    print("C")
default:
    print("其他")
}

// 2 通过其他方式实现穿透效果：
var rank2 = "A"
switch rank2 {
    
case "A" ,"B":
    print("B")
case "C":
    print("C")
default:
    print("其他")
}


// 4. 在case中定义变量不用加大括号。建议最好加上，方便在自己，方便别人
var rank3 = "A"
switch rank3 {
case "A":
    let num = 10
    print("num : \(num)")
    print("A")
case "B":
    print("B")
case "C":
    print("C")
default:
    print("其他")
}



//MARK:- 区间匹配
var num = 9
switch num {
  case 1...9:
    print("个位数")
  case 10...99:
    print("十位数")
  default:
    print("其他数")
}

//MARK:- 区间和元组匹配
var point = (10,15)
switch point {
case (0,0):
    print("坐标原定")
case (1...10, 10...20):
    print("坐标轴的X和Y在1~20之间") // 可以再元组中添加区间
default:
    print("Other")
}


// 值绑定:case (括号里面定义变量会警告⚠️，定义常量ok ✅)
var point2 = (3,10)
switch point2 {
case (let x,10): // 会将point中的值赋值给 x
    print("x = \(x)")
    
default:
    print("默认")
}
print("--------根据条件绑定---------")

// 根据条件绑定
var point3 = (101, 100)
switch point3 {
case let(x,y) where (x > y):
    print("x = \(x) y = \(y)")
default:
    print("Other")
}


// 陈友谅，张士诚，朱元璋。

