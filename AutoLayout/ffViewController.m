//
//  ffViewController.m
//  AutoLayout
//
//  Created by jiangchao on 15/11/3.
//  Copyright © 2015年 姜超. All rights reserved.
//

#import "ffViewController.h"

@interface ffViewController ()
{

    UIView *view;

}
@end

@implementation ffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIView *view = [UIView new];
//    [view setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:view];
//    
//    CGRect viewFrame = CGRectMake(50.f, 100.f, 150.f, 150.f);
//    
//    
//    // 使用 Auto Layout 布局
//    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
//
//    // `view` 的左边距离 `self.view` 的左边 50 点.
//    NSLayoutConstraint *viewLeft = [NSLayoutConstraint constraintWithItem:view
//                                                                attribute:NSLayoutAttributeLeading
//                                                                relatedBy:NSLayoutRelationEqual
//                                                                   toItem:self.view
//                                                                attribute:NSLayoutAttributeLeading
//                                                               multiplier:1
//                                                                 constant:CGRectGetMinX(viewFrame)];
//    // `view` 的顶部距离 `self.view` 的顶部 100 点.
//    NSLayoutConstraint *viewTop = [NSLayoutConstraint constraintWithItem:view
//                                                               attribute:NSLayoutAttributeTop
//                                                               relatedBy:NSLayoutRelationEqual
//                                                                  toItem:self.view
//                                                               attribute:NSLayoutAttributeTop
//                                                              multiplier:1
//                                                                constant:CGRectGetMinY(viewFrame)];
//    // `view` 的宽度 是 60 点.
//    NSLayoutConstraint *viewWidth = [NSLayoutConstraint constraintWithItem:view
//                                                                 attribute:NSLayoutAttributeWidth
//                                                                 relatedBy:NSLayoutRelationGreaterThanOrEqual
//                                                                    toItem:nil
//                                                                 attribute:NSLayoutAttributeNotAnAttribute
//                                                                multiplier:1
//                                                                  constant:CGRectGetWidth(viewFrame)];
//    // `view` 的高度是 60 点.
//    NSLayoutConstraint *viewHeight = [NSLayoutConstraint constraintWithItem:view
//                                                                  attribute:NSLayoutAttributeHeight
//                                                                  relatedBy:NSLayoutRelationGreaterThanOrEqual
//                                                                     toItem:nil
//                                                                  attribute:NSLayoutAttributeNotAnAttribute
//                                                                 multiplier:1
//                                                                   constant:CGRectGetHeight(viewFrame)];
//    // 把约束添加到父视图上.
//    [self.view addConstraints:@[viewLeft, viewTop, viewWidth, viewHeight]];
  
    
   view = [UIView new];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
    
    UIView *view2 = [UIView new];
    [view2 setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:view2];
    
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, view, view2);
    
    
     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view2(>=150)]" options:NSLayoutFormatAlignAllTop metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-300-[view2(>=50)]" options:0 metrics:nil views:views]];
    
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:NSLayoutFormatAlignAllTop metrics:nil views:views]];
    //
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];

//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]-[view2(>=50)]" options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
    

//        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]-[view2(>=50)]" options:NSLayoutFormatAlignAllTop metrics:nil views:views]];
//            [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
//        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view2(>=50)]" options:0 metrics:nil views:views]];
    
    
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 80, 100)];
    [btn setTitle:@"购物车" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor yellowColor];
    // [btn setImage:[UIImage imageNamed:@"购物车.png"] forState:UIControlStateNormal];
    btn.tag=123;
    btn.userInteractionEnabled=YES;
    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)replacePickerContainerViewTopConstraintWithConstant:(CGFloat)constant
{
    for (NSLayoutConstraint *constraint in self.view.constraints) {
        if (constraint.firstItem == view && constraint.firstAttribute == NSLayoutAttributeLeading) {
            constraint.constant = constant;
            
            
            [UIView animateWithDuration:0.25 animations:^{
                [self.view layoutIfNeeded];
            }];
        }
        
    }
}
-(IBAction)buttonClicked:(id)sender {
    
    [self replacePickerContainerViewTopConstraintWithConstant:200];
    //    [self.view removeConstraint:viewLeft];//先删除原有的对于顶部的约束
    //    viewLeft = [NSLayoutConstraint constraintWithItem:view
    //                                            attribute:NSLayoutAttributeLeading
    //                                            relatedBy:NSLayoutRelationEqual
    //                                               toItem:self.view
    //                                            attribute:NSLayoutAttributeLeading
    //                                           multiplier:1
    //                                             constant:200];
    // [self.view addConstraint:viewLeft];
   
    
    
    [UIView animateWithDuration:3 animations:^{
        
        //接下来通过代码添加一个约束
        
        
        
        
        [self.view layoutIfNeeded];//最后使用layoutifneeded方法来从新定义约束，并且产生动画
    }];
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

@end
