//
//  ViewController.m
//  MasonryTest
//
//  Created by yy on 2017/3/22.
//  Copyright © 2017年 com.yasuo. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

#define MAS_SHORTHAND
//可以自动装箱基本数据类型,//使用后可以不适用前缀mas_
#define MAS_SHORTHAND_GLOBALS


#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    [redView makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view).offset(0);
        make.width.height.equalTo(200);
    }];
    Person *person = [[Person alloc] init];
    [person.eat1 eat];
    [[person run1] eat1];
    [person eat];
    [person run];
    [person run2]();
    person.run2();
    person.run3().eat3().run3().eat3();
    
    person.eat4(@"麻辣火锅").run4(4).eat4(@"黄焖鸡米饭").run4(10);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
