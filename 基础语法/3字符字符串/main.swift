//
//  main.swift
//  字符和字符串
//
//  Created by RaoBo on 2018/1/20.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation

/**
 字符:
 OC 单引号 char charValue = 'a';
 Swift 双引号 var charValue:Character = "a"
 Swift和OC字符不一样,OC中的字符占一个字节，应为他自包含ASCII中的字符，而Swift中的字符除了可以存储ASCII表中的字符还可以包含Unicode字符。
 这里想起空格的问题，从系统通讯录中调取的手机号中的空格无法删除，其实一个ASCII字符，值为160
 
 OC的字符遵循ASCII标准，Swift的字符遵循Unicode标准，可以存放所有国家的字符(大部分)
 */
var charValeu1:Character = "a"

var charValue2:Character = "波"


/**
 字符串:
 Swift中的字符串和C/OC字符串不一样
 
 C语言字符串是以 \0 结尾，
 char *str2 = "abc\0def";
 printf(":%s\n",str2); // 打印: abc
 
 OC语言中的字符串也是以 \0 结尾的
 NSString *str1 = @"abc\0def";
 NSLog(@":%@",str1); // 打印: abc
 
 */
var stringValue3:String = "ab"
print("stringValue3:\(stringValue3)")

var stringValue4 = "abc\0def" // \0 会被忽略掉
print("stringValue4:\(stringValue4)") // abcdef

var stringValue5 = "abc\ndef" // \n 会被换行
//print("stringValue5:\(stringValue5)")

