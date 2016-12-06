//
//  ViewController.m
//  微信添加好友
//
//  Created by qianfeng on 16/11/23.
//  Copyright © 2016年 张也. All rights reserved.
//

#import "ViewController.h"
#import "XTPopView.h"
#import "FirstViewController.h"

@interface ViewController () <selectIndexPathDelegate> {
    XTPopView *_popView;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"微信";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rightButtonClick)];
    self.view.backgroundColor = [UIColor blackColor];
}

-(void)rightButtonClick{
    CGPoint point = CGPointMake(385,66);
    _popView = [[XTPopView alloc]initWithOrigin:point Width:140 Height:180 Type:XTTypeOfUpRight Color:[UIColor colorWithRed:225/255.0 green:232/255.0 blue:224/255.0 alpha:1]];
    _popView.dataArray = @[@"发起群聊",@"添加朋友",@"扫一扫",@"收付款"];
    _popView.images = @[@"add",@"change",@"add",@"change"];
    _popView.fontSize = 13;
    _popView.titleTextColor = [UIColor blackColor];
    _popView.delegate = self;
    [_popView popView];
}

-(void)selectIndexPathRow:(NSInteger)index {
    [_popView dismiss];
    if (index == 0) {
        FirstViewController *fv = [[FirstViewController alloc]init];
        [self.navigationController pushViewController:fv animated:YES];
    }
    if (index == 1) {
        NSLog(@"%d",2);
    }

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
