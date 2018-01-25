//
//  main.swift
//  类class
//
//  Created by RaoBo on 2018/1/25.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation
//参考资料  The Swift Programming Language (Swift 4.0.3)
// https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID82


//MARK:- 类
/**
class 类是具有相同属性和方法的抽象
 格式：
 class 类名 {
 类的属性和方法
 }
 */

//创建struct 和 class
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaved = false
    var frameRate = 0.0
    var name:String?
}

// 创建结构体和类 instance
var someResolution = Resolution()
var someVideoMode = VideoMode()

// access:使用
// assign:分配

// access访问属性
print(someResolution.width)
print(someVideoMode.resolution.width)

someResolution.width = 200
print(someResolution.width)
// Swift 可以直接修改结构体的某一个属性，但是OC不可以，先修改结构体中的某一个然后重新修改。
someVideoMode.resolution.width = 300
print(someVideoMode.resolution.width)


// 初始化结构体成员
let vga = Resolution(width:100, height:110)
print("width:\(vga.width) height:\(vga.height)")

// value type 值类型:在传递的过程中会被拷贝一份
// 结构体、枚举是值类型, 其他基础类型basic type:Int,Float,Double,String,Bool,Array,Dictionary 都是值类型
//A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function.
//值类型是这样一种类型:当他赋值给一个变量或常量或者当他在一个函数中进行传递的时候他的值会被 拷贝一份。
// 值类型:拷贝一份，各是个的。


let hd = Resolution(width:1920, height:1080)
print("hd     :\(hd)")
var cinema = hd
print("cinema :\(cinema)")

// 值传递,hd 和 cinema 是两个完全不同的实例。真假美猴王。
// The end result is two completely separate instances,
cinema.width = 2048
print("cinema is now \(cinema.width) pixel wide")
print("hd is stil \(hd.width) pixel wide")


// 枚举也是值类型
enum CompassPoint {
    case north, south, east, west
}
var currentDirection = CompassPoint.west // 这是一个instance
let rememberedDirection = currentDirection // copy一份这也是一个instance
//currentDirection 和 rememberedDirection 是两个完全不同的instance。见
// 将currentDirection赋值给rememberedDirection 然后在改变currentDirection的值不会印象rememberedDirection的值。
currentDirection = .east
if rememberedDirection == .west {
    print("The remembered direction is still .west")
}


//MARK:- 类是引用类型 Classes Are Reference Types
//Rather than a copy, a reference to the same existing instance is used instead.
// class类是引用类型，名字不一样但是指向的是同一个东西，修改一个变量的的值，也会改变另外一个变量的值
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaved = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

// assign
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("\(tenEighty.frameRate)") // 没有直接修改tenEighty的值，但是他的值却发生了改变,这就是引用类型，指向的是同一个对象，同一个东西
tenEighty.frameRate = 48.9
print("\(alsoTenEighty.frameRate)") // 没有直接修改alsoTenEighty的值，但是他的值却发生了改变。

//MARK:-  Identity Operators
//
/**
 区别
 Identity to(三个等号): 对象类型 class type
 “Identical to” means that two constants or variables of class type refer to exactly the same class instance.
 
 equal to(两个等号):
 “Equal to” means that two instances are considered “equal” or “equivalent” in value, for some appropriate meaning of “equal”, as defined by the type’s designer.
 相等   ===
 不相等 !===
 */
if tenEighty === alsoTenEighty {
    print("tenEight and alsoTenEight refer to the same VideoMode instance.")
}


//MARK:-  Pointers 指针
/**
 大致意思是有点像，当时不是的。
 A Swift constant or variable that refers to an instance of some reference type is similar to a pointer in C, but is not a direct pointer to an address in memory, a
 */


//MARK:- 如何在Class和Struct之间进行选择
/*** 总结一下:
 structure instances  passed by value:值传递
 class instances  passed by reference:引用传递
 还是和C、OC搞到一块去了，一个是传的是值，一个传的是地址。只是不这么叫了，作用是一样的
 
 使用结构体(struct)的情况：
 1.结构体的首要作用是存储一些简答的值.
 2.assign or pass 时 希望copy一份而不是referenced
 3.不需要继承其他类的属性(properties)、行为(behavior)
 
 4.类比OC的CGRect(x,y,width,height)，CGPoint(x,y)都是结构体
 
 使用类的情况:希望 passed by reference. 自定义数据都使用classes
 */




