//
//  Chaxun.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/20.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "Chaxun.h"
#import "Xiadan.h"

@interface Chaxun ()
{
    CGFloat width;
    CGFloat height;
}

@end

@implementation Chaxun

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    self.tableview.rowHeight = 138;
    self.tableview.showsVerticalScrollIndicator = NO;
    
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
    [self left];
    [self right];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

-(void)left{
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_127.png"]style:UIBarButtonItemStylePlain target:self action:@selector(wode)];
    self.navigationItem.leftBarButtonItem=left;

}

-(void)xiadan{
    Xiadan *xiandan = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"xiadan"];
    [self.navigationController pushViewController:xiandan animated:YES];
}

-(void)right{
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"@2x_127.png"]style:UIBarButtonItemStylePlain target:self action:@selector(xiadan)];
    self.navigationItem.rightBarButtonItem = right;

}

-(void)wode{
    NSLog(@"我的");
      
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;//每个section高30
}
- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *viewForHeader = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 30)];
    viewForHeader.backgroundColor = [UIColor orangeColor];
    UILabel *groupName = [[UILabel alloc]initWithFrame:CGRectMake(10, 3, 200, 30)];
    groupName.text = @"订单信息";
    groupName.textColor = [UIColor whiteColor];
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(width-55-10, 3, 55, 30)];
    lab.textColor = [UIColor whiteColor];
    lab.text = @"待审核";
    [viewForHeader addSubview:groupName];
    [viewForHeader addSubview:lab];
    return viewForHeader;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    }
    else if (section == 1 ){
        return 5;
    }
    
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *id1 =@"mycell";
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath ];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id1];
    }
    UIView *di = [[UIView alloc]initWithFrame:CGRectMake(20, 10, width-40, 118)];
    [di.layer setCornerRadius:5.0];
    [di.layer setBorderWidth:1];

    UILabel *name = [[UILabel alloc]initWithFrame:CGRectMake(25, 7, 73, 21)];
    name.text = @"商品名称:";
    UILabel *name1 = [[UILabel alloc]initWithFrame:CGRectMake(10+name.frame.size.width+16, 7, width-10-25-16-name.frame.size.width-8, 21)];
    UILabel *number = [[UILabel alloc]initWithFrame:CGRectMake(25, 48, 73, 21)];
     number.text = @"商品数量:";
    UILabel *number1 = [[UILabel alloc]initWithFrame:CGRectMake(10+name.frame.size.width+16, 48, width-10-25-16-name.frame.size.width-8, 21)];
    UILabel *price = [[UILabel alloc]initWithFrame:CGRectMake(25, 89, 73, 21)];
     price.text = @"商品价格:";
    UILabel *price1 = [[UILabel alloc]initWithFrame:CGRectMake(10+name.frame.size.width+16, 89, width-10-25-16-name.frame.size.width-8, 21)];
//    UIView *xian = [[UIView alloc]initWithFrame:CGRectMake(20, 138, width-40, 1)];
//    xian.backgroundColor = [UIColor grayColor];
    
    [di addSubview:name];
    [di addSubview:name1];
    [di addSubview:number];
    [di addSubview:number1];
    [di addSubview:price];
    [di addSubview:price1];
//    [cell.contentView addSubview:xian];
    [cell.contentView addSubview:di];
    
    self.tableview.separatorStyle=UITableViewCellAccessoryNone;
    cell.userInteractionEnabled = NO;
    return cell;
}


- (IBAction)fenduan:(id)sender {
}
@end
