//
//  Student.h
//  Homework_04_丁云川
//
//  Created by rimi on 16/1/28.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) NSInteger age;
@property(nonatomic,copy) NSString *code;
@property(nonatomic,copy,readonly) NSDate *birthday;
@property(nonatomic,assign) NSPoint point;

- (NSDate *)dateOfBirthday:(NSString *)code;

- (float)distanceWithStudent:(Student *)student;

@end
