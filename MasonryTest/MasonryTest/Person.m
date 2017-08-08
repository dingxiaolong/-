//
//  Person.m
//  MasonryTest
//
//  Created by yy on 2017/3/22.
//  Copyright © 2017年 com.yasuo. All rights reserved.
//

#import "Person.h"

@implementation Person


- (int)text {
    return 1;
}

- (void)text1 {
    NSLog(@"我是测得text1");
}

- (void)eat {
    NSLog(@"人在吃");
}

- (void)run {
    NSLog(@"%s",__func__);
}

- (Person *)eat1 {
    NSLog(@"人在吃1");
    return self;
}
- (Person *)run1 {
    NSLog(@"人在跑1");
    return self;
}

- (void(^)())run2 {
    void(^block)() = ^() {
        NSLog(@"人在跑2");
    };
    return block;
}

- (Person *(^)())run3 {
    Person* (^block)() = ^() {
        NSLog(@"人在跑3");
        return self;
    };
    return block;
}
- (Person *(^)())eat3 {
    Person* (^block)() = ^() {
        NSLog(@"人在吃2");
        return self;
    };
    return block;
}

- (Person *(^)(NSString *))eat4 {
    Person *(^block)(NSString *) = ^(NSString *foodName) {
        NSLog(@"人在吃4");
        return self;
    };
    return block;
}
- (Person *(^)(int))run4 {
    Person *(^block)(int) = ^(int juLi) {
        NSLog(@"人在跑4");
        return self;
    };
    return block;
}



@end
