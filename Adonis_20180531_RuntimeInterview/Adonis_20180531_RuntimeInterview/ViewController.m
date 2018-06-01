//
//  ViewController.m
//  Adonis_20180531_RuntimeInterview
//
//  Created by Adonis_HongYang on 2018/5/31.
//  Copyright © 2018年 The Way Of University. All rights reserved.
//

#import "ViewController.h"
#import <Objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

void toBeBindedMethod(id self, SEL _cmd, NSString *string) {
    NSLog(@"%s--%@", __func__, string);
}

///动态解析
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(ivarInvocation:)) {
        bool success = class_addMethod([self class], sel, (IMP)toBeBindedMethod, "V@:");
        return success;
    }
    return [super resolveInstanceMethod:sel];
}





//- (void)ivarInvocation:(NSString *)string {
//    NSLog(@"%s\n-----------------\n%@\n------------------", __func__, string);
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self ivarInvocation:@"hello world!"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
