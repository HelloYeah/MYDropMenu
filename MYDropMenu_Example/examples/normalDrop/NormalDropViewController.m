//
//  NormalDropViewController.m
//  MYDropMenu
//
//  Created by 孟遥 on 2017/2/24.
//  Copyright © 2017年 mengyao. All rights reserved.
//

#import "NormalDropViewController.h"
#import "NormalDropMenu.h"

@interface NormalDropViewController ()

@end

@implementation NormalDropViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"常规下拉菜单" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 200, 80);
    [button addTarget:self action:@selector(normalFromTopMenu) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setTitle:@"常规上拉拉菜单" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button1.frame = CGRectMake(100, 200, 200, 80);
    [button1 addTarget:self action:@selector(normalFromBottomMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self.view addSubview:button1];
}


#pragma mark - 常规位移动画,从下往上 . 上拉菜单
- (void)normalFromBottomMenu
{
    NormalDropMenu *menu = [[NormalDropMenu alloc]initWithShowFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 320, [UIScreen mainScreen].bounds.size.width, 320) ShowStyle:MYPresentedViewShowStyleFromBottomDropStyle callback:^(id callback) {
        
        NSLog(@"-----------------------操作了--%@",callback);
    }];
    [self presentViewController:menu animated:YES completion:nil];
}

#pragma mark - 常规位移动画,从上往下 , 下拉菜单
- (void)normalFromTopMenu
{
    NormalDropMenu *menu = [[NormalDropMenu alloc]initWithShowFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 320) ShowStyle:MYPresentedViewShowStyleFromTopDropStyle callback:^(id callback) {
        
        NSLog(@"---------------操作了-----%@",callback);
    }];
    [self presentViewController:menu animated:YES completion:nil];
}


@end
