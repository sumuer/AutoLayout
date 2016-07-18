//
//  ViewController.m
//  AutoLayout
//
//  Created by 姜超 on 14-12-26.
//  Copyright (c) 2014年 姜超. All rights reserved.
//\
/

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
   // [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
   // self.view.translatesAutoresizingMaskIntoConstraints=NO;
    
     view = [UIView new];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];

    CGRect viewFrame = CGRectMake(50.f, 100.f, 150.f, 150.f);
    
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
  viewWidth = [NSLayoutConstraint constraintWithItem:view
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
    [self.view addConstraints:@[viewLeft, viewTop, viewWidth, viewHeight]];
//
//    
//    
//   [viewLeft setPriority:UILayoutPriorityDefaultHigh];
//       // `view` 紧贴着 `self.view` 的左边.
//    NSLayoutConstraint *marginLeft = [NSLayoutConstraint constraintWithItem:view
//                                                                  attribute:NSLayoutAttributeLeading
//                                                                  relatedBy:NSLayoutRelationEqual
//                                                                     toItem:self.view
//                                                                  attribute:NSLayoutAttributeLeading
//                                                                 multiplier:1
//                                                                   constant:0];
//    
//    // 把约束添加到父视图上.
//    [self.view addConstraints:@[viewLeft, viewTop, viewWidth, viewHeight, marginLeft]];
//    // Do any additional setup after loading the view, typically from a nib.
//    
//    
//    
//    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
//    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, view);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
//    
    
    
//    UIView *view = [UIView new];
//    [view setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:view];
//    
//    UIView *view2 = [UIView new];
//    [view2 setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:view2];
//    
//    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [view2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
//    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, view, view2);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
//    
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-[view2(>=50)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view2(>=50)]" options:0 metrics:nil views:views]];
    
    
    
//    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, view, view2);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]-[view2(>=50)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view2(>=50)]" options:0 metrics:nil views:views]];
    
    
    
    
//    UIView *view = [UIView new];
//    [view setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:view];
//    
//    UIView *view2 = [UIView new];
//    [view2 setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:view2];
//    
//    UIView *view3 = [UIView new];
//    [view3 setBackgroundColor:[UIColor orangeColor]];
//    [self.view addSubview:view3];
//    
//    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [view2 setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [view3 setTranslatesAutoresizingMaskIntoConstraints:NO];
//    
//    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, view, view2, view3);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(50)-[view(>=150)]-[view2(>=50)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(100)-[view(>=150)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-[view3(>=50)]" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(100)-[view2(>=50)][view3(>=100)]" options:0 metrics:nil views:views]];
//    
    

//    NSDictionary *views = NSDictionaryOfVariableBindings(self.view, view, view2);
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[view(>=150)]-[view2(>=50)]" options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view(>=150)]" options:0 metrics:nil views:views]];
    
    
//    
//    table=[[UITableView alloc]init];
//    table.translatesAutoresizingMaskIntoConstraints=NO;
//    table.delegate=self;
//    table.dataSource=self;
//    table.alwaysBounceVertical=YES;
//    table.backgroundColor=[UIColor yellowColor];
//    [self.view addSubview:table];
//    
//    
//    NSDictionary* views=NSDictionaryOfVariableBindings(self.view,table);
//    NSNumber *width = [NSNumber numberWithFloat:self.view.frame.size.width];
//    NSNumber *height = [NSNumber numberWithFloat:self.view.frame.size.height];
//   
//    NSDictionary *metrics = @{@"height":height,
//                              
//                              @"width":width,
//                              };
//    
//      [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[table]-30-|" options:0  metrics:metrics views:views]];
//      [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[table]" options:0  metrics:metrics views:views]];
//    
////    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[table(>=300)]" options:0  metrics:metrics views:views]];
//    
//     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[table(>=600)]" options:0 metrics:metrics views:views]];
//    
    
//     [table addObserver:self forKeyPath:@"bounds" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionInitial context:nil];

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 80, 100)];
    [btn setTitle:@"购物车" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor yellowColor];
    // [btn setImage:[UIImage imageNamed:@"购物车.png"] forState:UIControlStateNormal];
    btn.tag=123;
    btn.userInteractionEnabled=YES;
    [btn addTarget:self action:@selector(rightbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    

}

- (void)rightbtnClick:(id)sender {
    
    
    
          [UIView animateWithDuration:1 animations:^{
            [self.view removeConstraint:viewLeft];//先删除原有的对于顶部的约束
            //接下来通过代码添加一个约束
                          [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100]];
    
    
            [self.view layoutIfNeeded];//最后使用layoutifneeded方法来从新定义约束，并且产生动画
        }];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context

{
    
    if (object == table && [keyPath isEqualToString:@"bounds"])
        
    {
        
        NSLog(@"%f",view.frame.size.width);
        
        
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *downCellIdentifier=@"DownloadCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:downCellIdentifier];
    if(cell == nil)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:downCellIdentifier];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        
        cell.accessoryType=UITableViewCellAccessoryNone;

         cell.textLabel.text=@"test";

    }
    return  cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
