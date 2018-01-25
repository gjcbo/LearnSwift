//
//  main.swift
//  构造方法1
//
//  Created by RaoBo on 2018/1/25.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

//MARK:- 一构造方法
/**
 构造方法:
 作用: 对实例对象的内容进行初始化
 原因: Swift要求类或者结构体中的存储属性在对象构造完毕后必须要有初始化值
 
 语法:
 init(参数列表){初始化代码}
 
 注意事项:
 1.Swift中类、结构体、枚举都需要构造方法
 2.构造方法的作用仅仅是用于初始化属性，而不是分配内存，分配内存是系统帮我们做的。
 3.构造方法是隐式调用的，通过 类名()创建一个对象的时候就会隐式调用 init()构造方法方法。在不通过位置打两个断点就，在init(){} 打一个断点，在 Person()处在打一个断点，通过代码调用顺序可以验证这句话。
 4、5 条看不懂。
 */
class Person{
    var name:String
    var age:Int
    
    // 定属性的时候必须初始化，不然会报错:Class 'Person' has no initializers
    // 解决方式有三种:1.添加？是成为可选类型，可有可无就不报错
    // 2.申明属性的时候赋一个初始值， 像这样 var name:String = "李四"
    // 3.使用构造方法 init(){}
    init() {
        name = "张三";
        age = 18
    }
}

var aP = Person()
print(aP.age)
print("===============")

//MARK:- 二 带有参数的构造方法
class Phone{
    var brand:String
    var price:Float
    init(brand:String, price:Float) {
        self.brand = brand
        self.price = price
    }
    
    func rb_Description() -> String {
        return "brand:\(brand) price:\(price)"
    }
    
    // 重新赋值方法
    func rb_setBrandAndPrice(brand:String, price:Float){
        self.brand = brand;
        self.price = price
    }
}

var iphone5s = Phone(brand:"5S", price:1599.0)
print(iphone5s.rb_Description())
iphone5s.rb_setBrandAndPrice(brand: "iPhoneX", price: 7999.0)
print(iphone5s.rb_Description())
print("===============")

//MARK:- 三 值类型的构造器代理
/**
 构造器代理:构造方法之间的相互调用
 构造方法可以调用其他构造器方法来完成实例的构造，称为构造器代理。
 好处:复用代码
 */
struct Rect1 {
    var width:Double, height:Double
    init(w:Double, h:Double) {
        self.width = w
        self.height = h
    }
    
    init() {
        // 构造器代理
        self.init(w: 3, h: 5)
        
//        self.width = 50
//        self.height = 8
    }
    
    func show() {
        print("width = \(width) height:\(height)")
    }
}

var aR = Rect1()
aR.show()




