//
//  main.m
//  Homework_04_丁云川
//
//  Created by rimi on 16/1/28.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.


#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1、建立一个学生类，增加姓名，年龄，身份证号3个属性；
        /*
        1）给学生类增加一个birthday的NSDate只读属性，其设置方式为，在设置身份证号属性的同时设置出生日期；
        */
//        //1.1.1
        Student *student1 = [[Student alloc]init];
        
        student1.code = @"511023199511143879";
        NSDate *newBirth = [student1 dateOfBirthday:student1.code];
        NSLog(@"code = %@ newBirth = %@",student1.code, newBirth);

//        //1.1.2
//        NSString *code = @"511023199511143879";
//        NSString *birth = [code substringWithRange:NSMakeRange(6, 8)];
//        NSLog(@"birth = %@",birth);
//        //19951114
//        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        [formatter setDateFormat:@"yyyyMMdd"];
//        NSDate *date = [formatter dateFromString:birth];
//        NSLog(@"date = %@",date);
//        [formatter setDateFormat:@"yyyy-MM-dd"];
//        NSString *newBirth = [formatter stringFromDate:date];
//        NSLog(@"newBirth = %@",newBirth);
//   
        //2）给学生类增加一个NSPoint属性，描述学生的座位在几行几列，并计算任意2名学生的距离（假定前后左右相邻的2名同学相拒全部为1米）。
    
        //得到坐标
//        student1.point = NSMakePoint(1, 6);
//        student2.point = NSMakePoint(5, 9);
//        NSLog(@"distance = %f",[student1 distanceWithStudent:student2]);
        /*
         //2.成员变量和属性的区别是什么
         成员变量: 无论是全局还是局部，都只能在本类或当前函数中使用，在其之外的地方无法直接调用(可以通过间接的方式调用)。
         属性:是整个工程所有类都可见，其它类是可以访问得到这个成员变量的。
         
         //3.属性和setter,getter优缺点对比
         属性更加方便快捷, 但是属性涉及到类存线程相关,所以需要考虑的因素更多。
         setter,getter需要更多的代码，考虑没那么多。
         */
    }
    return 0;
}
