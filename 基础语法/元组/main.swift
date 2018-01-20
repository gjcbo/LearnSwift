//
//  main.swift
//  Day1元祖
//
//  Created by RaoBo on 2018/1/19.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation

// MARK:- 一 元祖定义
/**
 元祖：将多个相同或者不同类型的值用一个小括号括起来就是一个元祖
 
 一个函数有几个返回值?
 :C 、OC通过指针、结构体、block实现一个返回多个返回值。
 有了元组之后可以实现让一个函数返回多个值
 */
// 元祖其实是组合类型,小括号可以写任意类型
let student = ("guanjianci",30,99.08)
//print(student) // ("guanjianci", 30, 99.079999999999998)
//print(student.0) // guanjianci
//print(student.1)
//print(student.2)

// 指定元祖内的数据类型
let student1:(String, Int, Double) = ("张三",18,98.6)


// 元组其他定义方式一:指明元组元素的名称
let student2 = (name:"波", age:30 ,score:98.5)
//print(student2)

// 元组其他定义方式二:通过指定的名称提取元组对应的值,将对应位置上的值赋值给对应的元素
let (name,age,score) = ("关键词",18,80)
//print(name)
//print(age)
//print("score: \(score)")

// 元组其他定义方式三:如果不关心元组中的某个值可以利用 _通配符 忽略提取
let (name1, age1, _) = ("hello",19, 59.0)
//print(name1)
//print(age1)


// MARK:- 二 元组补充
// 1. 一元元组，编译器会将其优化为实际元素
var t1:(String) = ("hello world")
//var t1:String = "hello world"
//var t1 = "hello world"
//print(t1)
//print(t1.0) // 注意❌报错,由于t1实际为String类型,因此通过t1.0访问会报错。


// 2. 元组支持嵌套
var t_t:(String, (String,Int)) = ("基本信息",("李四",18))
//print(t_t)

// 3.可以对元组类型起别名
typealias namedFinshesType = (first:String, second:String, third:String)
let namedFinshes:namedFinshesType = ("aa","bb","cc")
//print(namedFinshes)
//print(namedFinshes.first) //aa
//print(namedFinshes.1)  //cc

// MARK:- 三 元组的数据访问
// 1.当元素未命名时,采用自然顺序访问,序号从0开始
var t2 = ("波哥",30)
var t2Name = t2.0
var t2Age = t2.1
//print("name:\(t2Name) age:\(t2Age)")

// 2.当指明元组元素名字的时候,可以通过元素名或则小标进行访问
var t3 = (name:"韩非子",age:800)
var t3Name = t3.0 // t3.name 两种访问方式都可以
//print("t3Name:\(t3Name)") // 打印 韩非子

// 3. 可以用多个变量同时进行访问
var t4 = (name:"荀子",1000)
var (name3,age3) = t4 // 即可同时获取 name3 和 age3

//print("name3 : \(name3)") // 荀子
var (name4, _) = t4 // 不需要参数是可以缺省 。 但是感觉没鸟用。找不到应用场景。

// 4.注意:👇的例子说明一个问题: 元组为数值类型,元组的拷贝是值拷贝 什么叫数值类型。
var t5 = (name:"孟子", 1110)
var t5_copy = t5
t5.name = "王二麻子";
//print("t5_copy.name: \(t5_copy.name)") // 孟子


// MARK: - 四 关于元组的访问级别
// 1. 元组的访问级别:
/**
 元组的访问级别取决于他包含的元素,比如元组中元素的访问权限都是 private级别,那么该元组也是 private级别。
 * 遵循最小的原则，比如:一个元组中有两个元素，一个是private， 一个是public 级别，那么该元组遵循最小原则，他的访问级别为private
 */
// 2. 元组的数据不能增删,但是可以修改
var t6 = (bookName:"流血的仕途",38)
t6.bookName = "明朝那些事";
//print("bookName : \(t6.bookName)") // 明朝那些事
t6 = ("草房子",18)
//print("bookName : \(t6.bookName)") // 草房子

// 3. 但是数据类型不能改变
//t6.bookName = 89 // 报错❌ 不能修改数据类型。

// 4.如果定义的是常量元组,元组数据不能改变
let t7 = (name:"饶波",31)
//t7.name = "李四"; // 定义的是 let 常量，元组中元素的值不能改变

// 5, 元素类型指定为 Any类型。则元素可以改变类型
var t_any :(String, Any) = ("饶波",31)
t_any.1 = "可以改变为String"; // Any表示该元素不受类型限制，可以隐式转为其他任意类型。 这也是Swift中不支持隐式类型转换的特例



// MARK: - 五:元组和Array，Dictionary的组合定义
// 1.数组嵌套元组
var dynastyArray:[(String,Int)] = [("唐朝",618), ("宋朝",960), ("元朝",1206), ("明朝",1368), ("清",1616)]
//print(dynastyArray)

// 2.字典嵌套元组
var infoDic:[String:(String,Int)] = ["LiLei":("boy",18), "HanMeiMei":("girl",17)];
//print(infoDic)


// MARK: - 六：元组使用场景
// 1.适用于遍历字典
var userInfoDic = ["name":"苏秦", "gender":"男", "国籍":"魏国", "职业":"纵横家"]
//print("infoDic : \(userInfoDic)")
// 遍历字典
for (key1, value1) in userInfoDic{
    print("\(key1): \(value1)")
}
print("-----分割线1-----")

// 2. 非常适合用于Array的 enumerated()
var suvArr = ["哈佛H2","XRV","VEZEL","东南DX3","宝骏310","宝马X1"];
for (index, value) in suvArr.enumerated(){
    print("Item \(index) : \(value)")
}
print("----分割线2-----")


// 3. 适合函数返回多元数据
func userInfoOne() ->(String, Int) {
    return ("张三",26)
}
// 定义一个元组变量
var t8:(String, Int)
t8 = userInfoOne()
print("t8 : \(t8)")
print("-----分割线3-----")
// 4.不懂 ？？？？ 函数也可以返回可选元组 ，即 可以返回nil ？？？
func userInfoTwo() ->(String, Int)? {
    return nil;
}

// 5. 部分元素可选
func userInfoThree() -> (String?, Int){
    return (nil, 26)
}

// 6.甚至可以给函数传递多远参数
func doSomething(number:Int, text:String){
    print("\(number) : \(text)")
}
// 正确调用方式
doSomething(number: 18, text: "赵六")

print("------ 分割线3 -----")
// MARK: - 六 高级实例
//eg1:数组嵌套元组，可以理解为OC语言的 数组中装字典
// 需求:李四 的年龄+1
var personArr:[(pName:String, pAge:Int)] = [("张三",18), ("李四",19),("王五",20)]
for (index, person) in personArr .enumerated() {
    if person.pName == "李四" {
        // 修改对应数组中元素的值 有点绕，一个词  “对应” 好了就行
        personArr[index] = (pName : person.pName, pAge:person.pAge+1)
    }
}
//print(personArr) // 修改后的值 (pName: "李四", pAge: 20)


// eg2：高级用法，解决同一个问题
//TODO: 1-20 这里用到了map， RxSwift 中有关于map的相关知识。这个不懂，回头看
personArr = personArr.map{
    p in
    if p.pName == "李四" {
        return (pName:p.pName , pAge:p.pAge+1) // 让年龄 + 1 
    }else{
        return p
    }
}
//print(personArr)  // (pName: "李四", pAge: 21)

