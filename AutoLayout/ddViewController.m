//
//  ddViewController.m
//  AutoLayout
//
//  Created by 姜超 on 14-12-30.
//  Copyright (c) 2014年 姜超. All rights reserved.
//

#import "ddViewController.h"

@interface ddViewController ()
{

    NSLayoutConstraint *viewLeft;
    UIView* view;
    CGRect viewFrame;
}
@end

@implementation ddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     view = [UIView new];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
    
    
   
    

    
        viewFrame = CGRectMake(50.f, 100.f, 150.f, 150.f);
    
        // 使用 Auto Layout 布局
        [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    
        // `view` 的左边距离 `self.view` 的左边 50 点.
       viewLeft = [NSLayoutConstraint constraintWithItem:view
                                                                     attribute:NSLayoutAttributeLeading
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeLeading
                                                                   multiplier:1
                                                                     constant:CGRectGetMinX(viewFrame)];
    
    
        // `view` 的顶部距离 `self.view` 的顶部 100 点.
        NSLayoutConstraint *viewTop = [NSLayoutConstraint constraintWithItem:view
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.view
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1
                                                                    constant:CGRectGetMinY(viewFrame)];
        // `view` 的宽度 是 60 点.
        NSLayoutConstraint *viewWidth = [NSLayoutConstraint constraintWithItem:view
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                        toItem:nil
                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                    multiplier:1
                                                                      constant:CGRectGetWidth(viewFrame)];
        // `view` 的高度是 60 点.
        NSLayoutConstraint *viewHeight = [NSLayoutConstraint constraintWithItem:view
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1
                                                                       constant:CGRectGetHeight(viewFrame)];
        // 把约束添加到父视图上.
      //  [self.view addConstraints:@[viewLeft, viewTop, viewWidth, viewHeight]];
    
    
    
//       [viewLeft setPriority:UILayoutPriorityDefaultHigh];
//           // `view` 紧贴着 `self.view` 的左边.
//        NSLayoutConstraint *marginLeft = [NSLayoutConstraint constraintWithItem:view
//                                                                      attribute:NSLayoutAttributeLeading
//                                                                      relatedBy:NSLayoutRelationEqual
//                                                                         toItem:self.view
//                                                                      attribute:NSLayoutAttributeLeading
//                                                                     multiplier:1
//                                                                       constant:0];
    
        // 把约束添加到父视图上.
        [self.view addConstraints:@[viewLeft, viewTop, viewWidth, viewHeight,]];
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
//    
//    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
//   views = NSDictionaryOfVariableBindings(self.view, view);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];
// 
//
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 80, 100)];
    [btn setTitle:@"购物车" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor yellowColor];
    // [btn setImage:[UIImage imageNamed:@"购物车.png"] forState:UIControlStateNormal];
    btn.tag=123;
    btn.userInteractionEnabled=YES;
    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
//- (void)rightbtnClick:(id)sender {
//    
//    
//        [UIView animateWithDuration:3 animations:^{
//            //   [self.view removeConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];//先删除原有的对于顶部的约束
//                //接下来通过代码添加一个约束
//            
//            
////    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100]];
//            
//            
//    // [self.view removeConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[view(>=150)]" options:0 metrics:nil views:views]];//先删除原有的对于顶部的约束
//             [self.view layoutIfNeeded];//最后使用layoutifneeded方法来从新定义约束，并且产生动画
//         }];
//    }
//
-(IBAction)buttonClicked:(id)sender {
    
    
//    [self.view removeConstraint:viewLeft];//先删除原有的对于顶部的约束
//    viewLeft = [NSLayoutConstraint constraintWithItem:view
//                                            attribute:NSLayoutAttributeLeading
//                                            relatedBy:NSLayoutRelationEqual
//                                               toItem:self.view
//                                            attribute:NSLayoutAttributeLeading
//                                           multiplier:1
//                                             constant:200];
    // [self.view addConstraint:viewLeft];
    viewLeft.constant=200;
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
