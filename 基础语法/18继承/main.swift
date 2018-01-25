//
//  main.swift
//  继承
//
//  Created by RaoBo on 2018/1/25.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

//MARK:- 一 继承
// 不会很爽，很痛苦
class Person {
    // 定义类必须初始化不然报错,使用可选类型?可有可无解决报错问题。
    var name:String?
    var age:Int?
    
    func working(){
        print("劳动光荣")
    }
}
class Teacher: Person {
    var teachCourse:String = "语文"
    func teachKnowledge(){
        print("语文老师教语文")
    }
}

// 父类
var p1 = Person()
p1.working()

// 子类化
var chineseTeach = Teacher()
chineseTeach.teachKnowledge()
chineseTeach.working()
print("===========================")

//MARK:- 二 super关键字
class Animal {
    // 可选类型，不使用可选类型就必须初始化
    var name:String?
    var age:Int?
    func huntForFood(){
        print("动物在寻找食物")
    }
}
class Dog:Animal {
    var gender = "雄性"
    func eatBones() {
        print("狗在吃骨头")
    }
    func run() {
        print("狗跑的很快")
    }
    
    func eatAndRun() {
        eatBones()
//        huntForFood()
        
        // 如果没有写supe，就在当前类中查找，找不到在去父类中查找。
        // 如果写了super，就直接到父类中查找。
        super.huntForFood()
    }
}

var aGrayDog = Dog()
aGrayDog.eatAndRun()
print("===========================")

//MARK:- 三 方法重写:override关键字
/**
 跟OC一样一样的:需要添加  super.重写的方法
 完全重写： 不调用父类的实现
 不完全重写: 不会修改父类的实现
 */
class Computer{
    var operationSystem:String? //操作系统
    var brand:String? // 品牌
    var price:Float? //价格
    
    func helpHumanWorkingEfficient(){
        print("电脑帮助人类更高效的工作")
    }
}

class MacComputer: Computer {
    var model:String = "Mac pro" //型号
    
    override func helpHumanWorkingEfficient() {
        super.helpHumanWorkingEfficient() //调用父类的方法
    
        print("Mac 电脑很贵,但是反应速度也很快")
    }
    
    func learn(){
        print("电脑可以帮你学习")
    }
    
    func surfTheInternet(){
        print("使用电脑上网")
    }
    
    func learnAndSurfTheInternet() {
        learn()
        helpHumanWorkingEfficient()
    }
}

var aMac = MacComputer()
aMac.helpHumanWorkingEfficient()
print("===========================")


//TODO:- 四 重写属性 ？？？？
/**
 总会时不时的蹦来一些新名词:
 计算属性
 存储属性
 */


//MARK:- 五 willSet和didSet
class Man{
    var name:String = "关键词"
    var age:Int = 0{
        willSet{
            print("super new:\(newValue)")
        }
        didSet{
            print("super old:\(oldValue)")
        }
    }
    
    var height:Double {
        get{
            print("super get")
            return 100.0
        }
        set{
            print("super set")
        }
    }
}

class ChengXuYuan: Man {
    override var age: Int{
        willSet{
            print("child new: \(newValue)")
        }
        didSet{
            print("child old: \(oldValue)")
        }
    }
    
    override var height:Double {
        willSet{
            print("child height willSet:\(newValue)")
        }
        didSet{
            print("child height didSet:")
        }
    }
}

var aChengXuYuan = ChengXuYuan()
aChengXuYuan.age = 50
print(aChengXuYuan.age)
aChengXuYuan.height = 20.0
print("===========================")

//MARK:- 六 final关键字防止重写
/**
 1.final可以修饰属性、方法、类
 2.被final修饰的属性、方法不能被重写
 3.被final修饰的类不能被继承。
 */

final class Book{
    var name:String = "考研英语"
    var price:Int = 37
}

// 报错: Inheritance from a final class 'Book'
//class EnglishBook:Book{
//
//}


