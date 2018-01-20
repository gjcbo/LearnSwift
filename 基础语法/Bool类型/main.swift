//
//  main.swift
//  Day1Bool类型
//
//  Created by RaoBo on 2018/1/19.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation

// MARK: - Bool类型
/**
 C、OC 并没有真正的Bool类型
 C语言的Bool类型非0即真
 OC语言的Bool类型是typedef signed char BOOL；
 Swift 引入真正的Bool类型
 Bool true faluse
 */

let isOpen = true;
/**
 let isOpen = true;
 Swift中的if的条件只能是一个Bool的值或者是返回值是一个Bool类型的表达式(==、!=、>、<)
 */
if isOpen
{
    print("开");
}else{
    print("关");
}
