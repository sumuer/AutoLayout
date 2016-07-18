//
//  cccViewController.m
//  AutoLayout
//
//  Created by 姜超 on 15-1-6.
//  Copyright (c) 2015年 姜超. All rights reserved.
//

#import "cccViewController.h"
#import "ViewController.h"
#import "ddViewController.h"
#import "FooterView.h"
#import "scrollViewController.h"
//#import "TableViewCell.h"
@interface cccViewController ()

@end

@implementation cccViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"你好";
    table=[[UITableView alloc]init];
    table.translatesAutoresizingMaskIntoConstraints=NO;
    table.delegate=self;
    table.dataSource=self;
    table.alwaysBounceVertical=YES;
    table.backgroundColor=[UIColor clearColor];
    [table setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    [self.view addSubview:table];
    
    
    FooterView* footerView=[[FooterView alloc]init];
    footerView.backgroundColor=[UIColor redColor];
    [footerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:footerView];
    
    NSDictionary* views=NSDictionaryOfVariableBindings(self.view,table,footerView);
    NSNumber *width = [NSNumber numberWithFloat:self.view.frame.size.width];
    NSNumber *height = [NSNumber numberWithFloat:self.view.frame.size.height];
    
    NSDictionary *metrics = @{@"height":height,
                              
                              @"width":width,
                              };

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[table]|" options:0  metrics:metrics views:views]];
    
    
   // [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[table]" options:0  metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[table]" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[table]-100-|" options:0 metrics:metrics views:views]];
    
    
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[table][footerView]" options:0 metrics:nil views:views]];
    
     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[footerView]|" options:0 metrics:nil views:views]];
//     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[footerView]|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[footerView(>=100)]|" options:0 metrics:nil views:views]];
    
//        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[footerView(>=50)]" options:0 metrics:nil views:views]];
//        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[footerView(>=50)]" options:0 metrics:nil views:views]];
    
    
//    
//    BOOL isRunning = NO;
//    do {
//        isRunning = [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
//        
//    }
//    while (isRunning);
//   ;
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *downCellIdentifier=@"DownloadCell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:downCellIdentifier];
    if(cell == nil)
    {
       
         cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:downCellIdentifier];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
         cell.accessoryType=UITableViewCellAccessoryNone;
         cell.textLabel.text=@"test";
        
    }
    return  cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    scrollViewController* vc=[[scrollViewController alloc]initWithNibName:@"scrollViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
       return 80;
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
