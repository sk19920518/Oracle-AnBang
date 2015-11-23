//
//  Denglu.m
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/20.
//  Copyright © 2015年 sk. All rights reserved.
//

#import "Denglu.h"
#import "AFNetworking/AFHTTPRequestOperationManager.h"
#import "SBJSON/SBJsonWriter.h"
#import "Chaxun.h"
@interface Denglu ()
@property (weak, nonatomic) IBOutlet UITextField *xluser;
@property (weak, nonatomic) IBOutlet UITextField *xlmima;
- (IBAction)genghuanshebei:(UIButton *)sender;
- (IBAction)denglu:(UIButton *)sender;

@end

@implementation Denglu

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)genghuanshebei:(UIButton *)sender {
   
    UIAlertController *alert =  [UIAlertController alertControllerWithTitle:@"提示" message:@"更换登录设备,需要联系系统管理员,是否要拨打电话?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction*action=[UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://0451-88888888"]];
        
        
    }];
    UIAlertAction*action0=[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alert addAction:action];
    [alert addAction:action0];
    [self presentViewController:alert animated:YES completion:nil];
}


- (IBAction)denglu:(UIButton *)sender {
    Chaxun*cha=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"chaxun"];
    [self.navigationController pushViewController:cha animated:YES];
    
    
}
@end
