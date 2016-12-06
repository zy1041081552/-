//
//  FirstViewController.m
//  微信添加好友
//
//  Created by qianfeng on 16/11/23.
//  Copyright © 2016年 张也. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tb;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"选择联系人";
    self.tb.delegate = self;
    self.tb.dataSource = self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
