//
//  cccViewController.h
//  AutoLayout
//
//  Created by 姜超 on 15-1-6.
//  Copyright (c) 2015年 姜超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
@interface cccViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    UITableView* table;
    UIView *view ;
}
@end
