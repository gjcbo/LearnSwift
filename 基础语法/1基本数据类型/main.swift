//
//  main.swift
//  1基本数据类型
//
//  Created by RaoBo on 2018/1/20.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation

//MARK: - 一 基本数据类型
/**基本数据类型
 OC:
 整型 var intValue:Int = 10;

 浮点 double(64) float(32) var doubleValue:Double = 7.8       var floatValue:Float = 7.09

 长 long
 短 short
 有符号 signed
 无符号 unsigned
 注意：Swift 关键字首字母大写。
 */
// 整型
var intValue:Int = 10;
var int8Value:Int8 = 10;
var int16Value:Int16 = 10;
var int32Value:Int32 = 10

// 浮点
var doubleValue:Double = 7.8 // 表示64位浮点数
var floatValue:Float = 7.09 // 32位浮点数

// 无符号有符号(默认都是有符号的)
var uintValue:UInt = 10
// 注意:无符号的数比有符号的取值范围更大,因为符号位也用来存值

// MARK:- 二 Swift是类型安全的语言
// Swift是类型安全的语言,取值错误会直接报错。
/*
 取值不对
 OC:unsigned int intValue = -10; 不会报错
 Swift : var intValue3:UInt = -10 // ❌
 
 // 溢出:
 OC:int intValue = INT_MAX + 1; 不会报错
 Swift : var intValue4:UInt = UInt.max + 1 // 报错
 */

//var uintValue2:UInt = -10 //报错❌ Negative integer '-10' overflows when stored into unsigned type 'UInt'


// MARK: - 三 Swift 不支持隐式类型转换
/**
 OC可以
 int intValue = 10;
 double doubleValue = intValue;

 
 Swift不支持隐式类型转换报错
 ❌ Cannot convert value of type 'Float' to specified type 'Double'
 var floatValue4:Float = 30.8
 var doubleValue4:Double = floatValue4
 */






