//
//  main.swift
//  运算符
//
//  Created by RaoBo on 2018/1/20.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation

//var result = 10 % 3 // 1
//print("\(result)")


/**
 Swift 会在编译的时候检查是否溢出 但是只会检查字面量，不会检查变量，在Swift中要注意隐式溢出

 可以检测
 var num1:UInt8 = 255 + 1 // 报错❌提示溢出
 
 // 使用溢出运算符
 var num1:UInt8 = 255 &- 1 // ✅ 可以进行运算
 print(num1) // 254
  遇到这种问题可以利用溢出运算符解决该问题:http://www.yiibai.com/swift/overflow_operators.html
 
 无法检测
 var num3:UInt8 = 250
 var result = num2 + num3
 print("\(result)")
 */



// MARK:- 一 取模运算
// truncate  截断的
// remainder 余数、剩余
/**
 
 OC :只对整数取模
 NSLog(@"%tu", 10 % 3)
 Swift : 支持小数取模
        2.0支持，3.0不支持
 */
let value1 = 5.6
let value2 = 2.4
let result = value1.truncatingRemainder(dividingBy: value2)
//print(value2)
//result = value1 % value2 // 不支持


//MARK: - 二 自增、自减
var b = 1
//b++  ❌报错，旧版Swift可以， Swift3.0之后就会报错。
//b = b +  1 或者 b += 1 (建议写法)

//MARK:- 三 赋值运算符 = += -= /= *= %=
var num3 = 10
num3 = 20
num3 += 10
num3 -= 10
num3 *= 10
num3 /= 10
num3 %= 5
print(num3)

/**
 注意表达式的值
 OC: 表达式的结合方向是从左至右 ，可以连续赋值
 NSInteger a ;
 NSInteger b;
 a = b = 4;   // ✅
 
 NSLog(@"%tu",a); // 4
 
 
 Swift：不允许连续赋值 ，Swift中的整个表达式是没有值，主要是避免 if (a == 5) 误写成  if (a = 5), a = 5 是一个表达式，表达式是没有值的，所以  if (a = 5)不成立
 */
var num4:Int
var num5:Int
//num5 = num4 = 10 // Swift中不允许连续赋值
num4 = 3
if (num4 == 2)
{
    print("真")
}else {
    print("假")
}

// MARK:- 四 关系运算符
var result2:Bool = 250 > 256
//print(result2) // 打印：false
//var result3 = (5 > 2) ? 5 : 2 // 打印:5
//var result4 = 250 > 100 ? 250 : 100 // 打印:250

// MARK:- 五 逻辑运算符
/**
 注意：swift 中的逻辑运算符只能操作Bool类型数据 ，OC可以操作整型(非0即真)
 
 ! && ||
 */
var open = false
if !open {
    print("打开")
}

var age = 20
var height = 180
var weight = 60
if (age > 25 && age < 35 && height>175 || weight > 50){
    print("ok")
}


// MARK:- 六 区间
/**
 区间
 闭区间：包含区间内所有的值 a...b
 半闭区间:包含头不包含为   a..<b
 注意：1，区间只能用于整数， 写小数会报错
 应用场景:遍历，数组等
 */
//for i in 1...5 { // 含5
//    print("i : \(i)")
//}

for i in 1..<5{ // 不含5
    print(i)
}

