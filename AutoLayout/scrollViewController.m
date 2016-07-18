//
//  scrollViewController.m
//  AutoLayout
//
//  Created by 姜超 on 15-1-7.
//  Copyright (c) 2015年 姜超. All rights reserved.
//

#import "scrollViewController.h"

@interface scrollViewController ()

@end

@implementation scrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIScrollView* scrollview=[[UIScrollView alloc]init];
    [scrollview setTranslatesAutoresizingMaskIntoConstraints:NO ];
     scrollview.backgroundColor=[UIColor yellowColor];
    //[scrollview setContentSize:CGSizeMake(800, 800)];
     scrollview.alwaysBounceVertical=YES;
    [self.view addSubview:scrollview];
    
    UIView* temp=[[UIView alloc]init];
    temp.translatesAutoresizingMaskIntoConstraints=NO;
    temp.backgroundColor=[UIColor greenColor];
    [scrollview addSubview:temp];
    
    
    UIView* ma=[[UIView alloc]init];
    ma.translatesAutoresizingMaskIntoConstraints=NO;
    ma.backgroundColor=[UIColor redColor];
    [scrollview addSubview:ma];
    
//
    NSDictionary* views=NSDictionaryOfVariableBindings(scrollview,temp,ma);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollview]|" options:0 metrics:nil views:views ]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollview]|" options:0 metrics:nil views:views ]];
    
    
//    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[temp(325)]|" options:0 metrics:nil views:views ]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[temp(800)]|" options:0 metrics:nil views:views ]];
    
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[ma]-10-|" options:0 metrics:nil views:views ]];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[ma(30)]" options:0 metrics:nil views:views ]];
    
    
    
    
    
    
    
    // [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[scrollview(>=200)]-700-|" options:0 metrics:nil views:views ]];
    
//    
//    return;
//  //  [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
//    // self.view.translatesAutoresizingMaskIntoConstraints=NO;
//    
//     view = [UIView new];
//    [view setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:view];
//    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
//    views = NSDictionaryOfVariableBindings(self.view, view);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];
//    
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
//    
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 80, 100)];
//    [btn setTitle:@"购物车" forState:UIControlStateNormal];
//    btn.backgroundColor=[UIColor yellowColor];
//    // [btn setImage:[UIImage imageNamed:@"购物车.png"] forState:UIControlStateNormal];
//    btn.tag=123;
//    btn.userInteractionEnabled=YES;
//    [btn addTarget:self action:@selector(rightbtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    
    
}
- (void)rightbtnClick:(id)sender {
    
//    
//    [self.view removeConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];
//     [self.view removeConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
    
   // [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-200-[view(>=150)]" options:0 metrics:nil views:views]];//
    
   //  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-200-[view(>=150)]" options:0 metrics:nil views:views]];
////
//     [self.view layoutIfNeeded];
//
//    [UIView animateWithDuration:3 animations:^{
//        [self.view removeConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];//先删除原有的对于顶部的约束
//        //接下来通过代码添加一个约束
//        //              [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100]];
//        
//        
//       [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-150-[view(>=150)]" options:0 metrics:nil views:views]];
//        [self.view layoutIfNeeded];//最后使用layoutifneeded方法来从新定义约束，并且产生动画
//    }];
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
