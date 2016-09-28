//
//  Student.m
//  Homework_04_丁云川
//
//  Created by rimi on 16/1/28.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSDate *)dateOfBirthday:(NSString *)code{
    NSString *birth = [code substringWithRange:NSMakeRange(6, 8)];
    NSLog(@"brithday = %@", birth);
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyyMMdd"];
    NSDate *date = [formatter dateFromString:birth];
    NSLog(@"date = %@", date);
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *newBirth = [formatter stringFromDate:date];
    NSLog(@"newBirth = %@", newBirth);
    return date;
}

- (float)distanceWithStudent:(Student *)student
{
    NSPoint location = student.point;
    
    float distanceX = _point.x - location.x;
    float distanceY = _point.y - location.y;
    float distance  = sqrt(pow(distanceX, 2) + pow(distanceY, 2));
    
    
    
    return distance;
}

@end
