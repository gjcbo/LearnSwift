//
//  main.swift
//  14 函数参数
//
//  Created by RaoBo on 2018/1/23.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

// MARK:- 观点/感想
/**
 1.没必要搞那么复杂，学习语法简单看一下就可以了，千万不要太细，最多一周把语法大致过一遍。剩下之后coding，编码练习，在写代码过程中加深理解。这才是一个正确的学习方法。
 
 2.老是说我态度不好，MMP 你思维不正常，什么都搞那么复杂，我态度能好吗？去NDY
 */
// MARK:- 一 外部参数
func divisionOperation1(a:Double, b:Double) -> Double {
    return (a / b)
}

func divisionOperation2(dividend:Double, divisior:Double) -> Double {
    return dividend / divisior
}

// 个人觉得这种方式是最好的，别人调用你的方法，一看就知道是什么意思，你写个 a、b鬼知道是什么意思。
/**
 外部参数
 why : 调用函数时，给每个参数命名是非常有用的，可以说明该参数的作用
 what: 函数调用者在调用函数时可以显示参数名字，这个时候就可以给每个 “局部参数” 在添加一个 ”外部参数“
 how : 外部参数写在局部参数名之前 ，用空格分割。
 注意 : 方便别人阅读你的代码，如果你起得参数名，别人一看就明白就不需要定义外部参数。
 我的理解:就是给参数起个别名，方便阅读。
 */
func divisionOperation3(dividend a:Double, divisior b:Double) -> Double {
    return a / b
}

print(divisionOperation1(a: 4, b: 2))
print(divisionOperation2(dividend: 10, divisior: 3.5))
print(divisionOperation3(dividend: 10, divisior: 6))



// 默认值. 没感觉出有什么鸟用。不用纠结，过。在coding中学习，写demo
func joinString(s1:String, toString s2:String, joiner s3:String = "你好") -> String {
    return s1 + s2 + s3
}

print(joinString(s1: "hello", toString: "Swift"))
print("-------分割线-------")

// 不要起和系统重名的函数名。
func swapTwoNumber(a:Int, b:Int) {
    var a = a;
    var b = b;
    print("交换前 a=\(a), b=\(b)")
    
    let temp = a
    a = b
    b = temp
    print("交换后 a=\(a). b=\(b)")
}
//swapTwoNumber(a: 10, b: 20)

//MARK:- 二 inout 指针传递
/**
 参考 ：Swift中两种参数传递方式 https://www.jianshu.com/p/6b858cb0b55d
 如果希望一个函数修改外部变量的时候就需要使用指针传递，使用 inout关键字， Swift3.0后才出现
 1. 把参数的内存地址传递过去，会影响原始数据
 2. class 是指针传递，其他的如:Int、Float、Double、Bool、Array 都是值传递
 3. inout修饰的参数是不能有默认值的。有范围的参数集合也不能被修饰
 4. 一个参数一旦被inout修饰，就不能再被let 和 var 修饰
 5. 监测属性 willSet:用来监测新值的 didSet: 监测旧值
 6.
 */
// eg1: inout 指针传递
func swap2(a: inout Int, b:inout Int){
    let temp = a
    a = b
    b = temp
}

var x1 = 10
var y1 = 20
print("交换前 x1=\(x1), y1=\(y1)")
swap2(a: &x1, b: &y1)
print("交换后 x1=\(x1), y1=\(y1)")
print("--------分割线--------")

// MARK:- inout🌰 1
// 🌰1:函数修改外部变量的值
var value = 50
print("修改前的数据: \(value)")
func increment(value:inout Int, length:Int) {
    value += length
}
increment(value: &value, length: 22)
print("修改后的数据: \(value)")
print("------分割线------")

// MARK:- inout🌰 2
// 🌰2:
class Circle{
    lazy var area:Double = 0.0
    var r:Double = 0.0 {
        willSet {
            print("有新值")
            area = Double.pi * newValue * newValue
        }
    }
}

let circle = Circle()
circle.r = 3
func calculate(r:inout Double) {
    print("函数执行开始")
    r = 2.0
    print("函数执行结束")
}
calculate(r: &circle.r)
print(circle.r)
print("--------------")

//MARK:- 四 变参函数
func add1(num1:Int, num2:Int, num3:Int) -> Int {
    let sum = num1 + num2 + num3
    
    return sum
}
print(add1(num1: 1, num2: 2, num3: 3))


// 调用的时候可以传入多个参数
/**
 写法太多了
 func add2(nums:[Int]) -> Int
 调用：
 print(add2(nums: [1,2,3]))

 func add3(nums:Int...) -> Int
 调用
 print(add3(nums:1,2,3))

 */

func add2(nums:[Int]) -> Int {
    var sum = 0
    for n in nums {
        sum += n
    }
    return sum
}
print(add2(nums: [1,2,3]))



func add3(nums:Int...) -> Int {
    var sum = 0
    for n in nums {
        sum += n
    }
    return sum
}
print(add3(nums:1,2,3))
print("--------------")


func add4(nums:Int...) -> Int {
    var sum = 0
    for n in nums {
        sum += n
    }
    return sum
}

print(add4(nums:10,20,30 ))
print("----------------")

func add5(otherNum:Int, nums:Int...) -> Int {
    var sum = 0
    for n in nums {
        sum += n
    }
    
    return otherNum + sum
}

//第一个参数otherNum 第二个参:一个集合
print(add5(otherNum: 100, nums: 1,2,3))



