//
//  ViewController.h
//  AutoLayout
//
//  Created by 姜超 on 14-12-26.
//  Copyright (c) 2014年 姜超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    UITableView* table;
    UIView *view ;
    NSLayoutConstraint *viewLeft ;
    NSLayoutConstraint *viewWidth;
}
@end

