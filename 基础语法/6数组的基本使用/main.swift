//
//  main.swift
//  数组的基本使用
//
//  Created by RaoBo on 2018/1/21.
//  Copyright © 2018年 RaoBo. All rights reserved.
//
import Foundation

// MARK:- 一数组定义
// 有值数组
var arr0 = [1,2,3]
var arr1:Array = [1,2,3]
var arr2:Array<Int> = [1,2,3]
var arr3:[Int] = [1,2,3]

// 空数组
var arr5 = [Int]()
var arr6 = Array<Int>()
arr6 = [1,2,3];
//print(arr6) //打印 [1, 2, 3]

// 不可变数组:let 修饰表示常量，不可变
// let 定义的数组是不可变数组，不能更新、插入、删除
let arr8:[Int] = [1,2,3]
var arr9:[String] = ["张三","李四","王五"] // 打印  ["张三", "李四", "王五"]
//print(arr9)

/** 元素类型
 OC: 数组中只能装对象，类型可以不一致
 NSArray *arr = @[@1,@"hellow",@1.75];
 NSLog(@":%@",arr);
 
 Swift 中数组类型需要保持一致，不一致时，需要使用 as [Any] 申明，不然报错
 可以这样
 var arr10 = [1,"zhangsan",2.65] as [Any]
 
 也可以在定义的时候明确说明 <Any>
 var arr11:Array<Any> = [1,"zhangsan",2.65]
 */
var arr10 = [1,"zhangsan",2.65] as [Any]
//print(arr10) // [1, "zhangsan", 2.6499999999999999]
//print(arr10[2]) // 2.65

//使用 Any关键字 明确说明数组中存放的是不同类型的数据
var arr11:Array<Any> = [1,"zhangsan",2.65]
//print(arr11)

// MARK:- 二数组操作

// MARK:- 二数组操作 1.获取长度
var arr12 = [1,2,3]
//print(arr11.count)

// MARK:- 二数组操作 2.判断是否为空
var arr13 = [1,23,34]
//print(arr13.isEmpty) // false

// MARK:- 二数组操作 3.检索
var arr14 = [1,2,3,4,5]
//print(arr14[1]) // 2


// MARK:- 二数组操作 4.追加
var arr15 = [1,2]
arr15.append(4)
//print(arr15)

var arr16 = [1,2,3];
arr16 += [4]
//print(arr16) // [1, 2, 3, 4]

// 也可借助自己数组元素追加，注意防止数据越界，数组越界会冬至奔溃。
arr16 += arr16[0...2]
//print(arr16) // [1, 2, 3, 4, 1, 2, 3]

// MARK:- 二数组操作 5.插入
var arr17 = [1,2]
arr17.insert(4, at: 0)
//print(arr17) //  [4, 1, 2]


// MARK:- 二数组操作 6.更新、修改数组中的元素
var arr18 = [1,2,3]
arr18[0] = 0
//print(arr18)

// MARK:- 二数组操作 7.删除
var arr19 = [1,2,3]
arr19.remove(at: 0) // 删除指定位置的元素
//print(arr19)

var arr20 = [1,2,3,4]
arr20.removeLast()  // 删除最后一个元素
//print(arr20)

var arr21 = [1,2,3,4]
arr21.removeFirst() // 删除第一个元素
//print(arr21)

var arr22 = [1,2,3]
//arr22.removeAll(keepingCapacity: true) // 是否保存容量，如果为true，保存容量 容量的含义有待进一步加深理解。
//arr22.removeAll()
//print(arr22)
//print(arr22.capacity)


// MARK:- 二数组操作 8.移除某区间位置的数组元素
var arr23 = [1,2,3]
arr23.removeSubrange(0...1)
//print(arr23) // 打印: [3]

var arr24 = [1,2,3]
arr24.replaceSubrange(0..<1, with: [8])
//print(arr24) // 打印  [8, 2, 3]

// MARK:- 二数组操作 9.range
// CountableClosedRange<Int>
var range = 0...5
//range = 99
//print(range) // 打印  0...5

var range1:Range<Int> = 0..<5 // [0,5)
var range2:CountableClosedRange<Int> = 0...5 // [0,5]
//var range3:Range<Int> = Range(start:0,end:5)

var range4:Range<Int> = 0..<5
//print(range4)


// MARK:- 三数组的其他操作 10.数组的批量操作
var arr30 = [1,2,3];

//arr30[0...1] = [99,111]
//arr30[0...1] = [99,111,222]

// 等价于上面的代码，个数大于区间的长度，就相当于在后面进行拼接
//arr30.replaceSubrange(0...1, with: [99,111])
//print(arr30)


// MARK:- 三数组的其他操作 11.遍历
var arr32 = [1,2,3]
// 方式一
for i in 0..<arr32.count {
    print(arr32[i])
}
print("----分割线----")

// 方式二
for number in arr32{
    print(number)
}

print("----分割线----")
// 取出数组中某个区间范围的值
var arr33 = [1,2,3];
for number in arr33[0..<2]{
    print(number)
}








