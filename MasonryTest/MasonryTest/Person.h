//
//  Person.h
//  MasonryTest
//
//  Created by yy on 2017/3/22.
//  Copyright © 2017年 com.yasuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)eat;
- (void)run;

- (Person *)eat1;
- (Person *)run1;

- (void(^)())run2;

- (Person *(^)())run3;
- (Person *(^)())eat3;

- (Person *(^)(int))run4;
- (Person *(^)(NSString *))eat4;


@end
