//
//  main.swift
//  字符串常用方法
//
//  Created by RaoBo on 2018/1/20.
//  Copyright © 2018年 RaoBo. All rights reserved.
//

import Foundation


//MARK: - 1.计算字符串长度

/**
 C:
 char *str1 = "abc唐";
 printf("长度:%tu \n",strlen(str1));
  打印结果6
 
 OC:
 NSString *str2 = @"abc唐";
 NSLog(@"长度:%tu ",str2.length);
 打印结果4，以UTF16计算
 */

/**
 ASCII表说明
 参考资料 ： https://www.cnblogs.com/kingcat/archive/2012/10/16/2726334.html
  当第一个bit是0时表示之前常用的字符ASCII(American Standard Code for Information Interchange 美国标准信息交换码,最初之后128个)
  0---127
  0---01111111
 
  当第一个bit是1时表示其他补充字符 (IBM后来进行了扩充 比如 160-空格)
  128      --- 255
  10000000 --- 11111111
 */
// 计算字节数
//var stringValue1:String = "abc唐";
//print("字节数utf8:\(stringValue1.lengthOfBytes(using: String.Encoding.utf8))")  // 6 可以C语言一样计算字节数
//print("字节数utf16:\(stringValue1.lengthOfBytes(using: String.Encoding.utf16))") // 8
//print("字节数utf32:\(stringValue1.lengthOfBytes(using: String.Encoding.utf32))") // 16
//print("字符串长度:\(stringValue1.count)") // 4

//MARK: - 2.字符串拼接
/**
 Swift:有点像JS 通过加号 + 拼接。
 
 C:
 char str1[10] = "abc";
 char *str2 = "bcd";
 char *str = strcat(str1, str2);
 printf("%s\n",str); // 打印 abcbcd
 
 OC:
 NSMutableString *mStr1 = [NSMutableString stringWithFormat:@"abc"];
 
 NSString *str2 = @"def";
 [mStr1 appendString:str2];
 NSLog(@"%@",mStr1); // abcdef
 */
var str1 = "abc";
var str2 = "def";
var str = str1 + str2   // abcdef
var str3 = str1 + "def" // abcdef
//print(str)
//print(str3)

//MARK: - 3.格式化字符串
var index = 5
var picUrl = "pict\(index).png";
print("\(picUrl)")


//MARK: - 4.字符串比较
/**
 OC:
 NSString *str1 = @"abc";
 NSString *str2 = @"def";
 if ([str1 compare:str2]) {
 NSLog(@"相等");
 }else{
 NSLog(@"不相等");
 }
 
 if ([str1 isEqualToString:str2]) {
 NSLog(@"相等");
 }else{
 NSLog(@"不相等");
 }
 
 Swift:(== 、!=、 >=、 <= ) 和C语言的strcmp一样是逐个比较的。
 */
var str4 = "abc"
var str5 = "def"
if str4 == str5 {
    print("相等")
}else{
    print("不相等")
}

var str6 = "abc"
var str7 = "def"
if str6 >= str7 {
    print("大于等于")
}else{
    print("不大于等于")
}

//MARK: - 5.判断前后缀
var str8 = "https://www.github.com";
if str8.hasPrefix("https")
{
    print("有前缀https")
}

if str8.hasSuffix("com"){
    print("有后缀com")
}


//MARK: - 6.大小写转换
/**
 OC:
 NSString *str = @"abc.txt";
 NSLog(@"%@",[str uppercaseString]);
 NSLog(@"%@",[str lowercaseString]);
 */
var lowerStr:String = "abc.txt"
print(lowerStr.uppercased())
print(lowerStr.lowercased())

//MARK: - 7.转换为基本数据类型
var numStr = "250"
// 如果numStr不能转换为整数，可选类型为nil
var number:Int? = Int(numStr)
if number != nil {
    print("转换结果:\(number!)")
}else{
    print("不能转换:\(number)")
}



