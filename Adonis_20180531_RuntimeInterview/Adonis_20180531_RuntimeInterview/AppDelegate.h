//
//  AppDelegate.h
//  Adonis_20180531_RuntimeInterview
//
//  Created by Adonis_HongYang on 2018/5/31.
//  Copyright © 2018年 The Way Of University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

