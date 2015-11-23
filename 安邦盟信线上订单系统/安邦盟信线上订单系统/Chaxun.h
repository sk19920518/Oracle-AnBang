//
//  Chaxun.h
//  安邦盟信线上订单系统
//
//  Created by oracle on 15/11/20.
//  Copyright © 2015年 sk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Chaxun : UIViewController<UITableViewDataSource,UITableViewDelegate>

- (IBAction)fenduan:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end
