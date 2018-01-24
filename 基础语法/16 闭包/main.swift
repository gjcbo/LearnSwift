// 闭包 2018-1-24

import Foundation


//MARK-: 闭包
/**
 闭包可以在其定义的上下文捕获常量或者变量。即使定义这些常量或变量的原作用域已经不存在，闭包任然可以在闭包函数体内引用和修改这些值。
 Swift最简单的闭包形式是嵌套函数，也就是定义在其他函数的函数体内的函数。
 嵌套函数可以捕获其外部函数所有的参数以及定义的常量和变量。
 
 闭包是引用类型，
 
 */
/**
 Swift 闭包一般形式
 {
    (parameters) -> returnType in
    statements
 }
 
 Swift函数的定义格式
 func funcname(形参) -> returntype
 {
    Statement1
    return parameters
 }
 乍一看看不懂，再一看感觉比OC的block好看，最后在一看就还是看不懂，in的解释太抽象。
 */
let addToNum:(Int, Int) -> (Int) = {
    (a:Int, b:Int) -> Int in
    return a + b;
}

print(addToNum(100,500));

// 定义一个闭包
let addToNumber2:(Int, Int) -> (Int) = {
    (a:Int, b:Int) -> Int in
    return a+b
}
var sum1 = addToNum(2,3)
print("sum1:\(sum1)")

let addToNumber3:(Int, Int) -> (Int) = {
    a, b in
    return a + b
}

// 太简洁了，有点看不懂了不建议这种写法。
let addTwoNumber3:(Int, Int) -> (Int) = {
    (a,b) in a + b
}

let addTwoNumber4:() -> Int = {return 100}
print("addTwoNumber4 \(addTwoNumber4())")

// 给闭包起别名
typealias AddBlock = (Int, Int) -> (Int)
let addTwoNumber5:AddBlock = {
//    (a:Int, b:Int) in // ✅
    (a, b) in // ✅ 两种方式都可以
    return a + b
}
print("起别名后的block: \(addTwoNumber5(20,30))")


// 尾随闭包:不明白？？？？
func weiSuiBiBao(testBlock:() -> Void){
    testBlock()
}
weiSuiBiBao {
    print("尾随闭包写法")
}

// 闭包:可以从上下文中捕获常量或者变量 ； 可以根据上下文环境捕获值。
func captureValue(sum amount:Int) -> ()-> Int {
    var total = 0
    func incrementer() -> Int {
        total += amount
        return total
    }
   
    return incrementer
}
print(captureValue(sum: 10)())

//MARK:- 尾随闭包
/**
 云里雾里，
 什么叫闭包？
 作用？能干什么？
 有哪些类型？变种？
 怎么用？
 */
// 尾随闭包:是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。
let names = ["LT","AE","D","S","BE"]
var reversed = names.sorted(){$0 < $1}
print(reversed)
// sort() 后的 { $0 > $1} 为尾随闭包。


func someFunctionThatTakesAClosure(clouser:() -> Void) {
    // 函数体
    print("尾随闭包")
}
someFunctionThatTakesAClosure(clouser: {
    print("不使用尾随闭包进行函数调用")
})
someFunctionThatTakesAClosure {
    print("使用尾随闭包进行函数调用")
}

//MARK-: 捕获值
// 函数的返回值是 ()-> Int 应该是一个函数把。
func makeIncrementor(forIncrement amount:Int) -> ()->Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    // 返回一个函数
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())


let alsoIncrementByTen  = incrementByTen
print(alsoIncrementByTen())

//MARK:- 参考资料
// cocoachina Swift闭包 http://www.cocoachina.com/ios/20161201/18250.html
// 菜鸟:Swift 闭包 http://www.runoob.com/swift/swift-closures.html


