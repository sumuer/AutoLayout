//
//  FooterView.m
//  AutoLayout
//
//  Created by 姜超 on 15-1-7.
//  Copyright (c) 2015年 姜超. All rights reserved.
//

#import "FooterView.h"

@implementation FooterView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
       
        
        namelabel=[[UILabel alloc]init];
        [namelabel setTranslatesAutoresizingMaskIntoConstraints:NO ];
        namelabel.backgroundColor=[UIColor clearColor];
        namelabel.textColor=[UIColor whiteColor];
        namelabel.text=@"消息人士称，苹果已经完成了Apple Watch软件的开发。苹果计划3月底正式发售 Apple Watch。此前，苹果提到Apple Watch将于2015年初正式发售。苹果零售高级副总裁 Angela Ahrendts 曾告知员工，Apple Watch 将于今年春季发售，也就是中国新年之后。根据很多消息人士，苹果目前正计划为Apple Store 零售店员工提供专门的培训计划。美国地区多家 Apple Store 的代表会去苹果Cupertino 或Austin营地办公室，了解Apple Watch相关信息。消息称，培训计划将于在2月9日至2月16日之间进行。";
        namelabel.lineBreakMode = NSLineBreakByWordWrapping;
        namelabel.numberOfLines = 100;
        namelabel.preferredMaxLayoutWidth = 1024; //Notice! important, label not init from xib, must be set this property!
        [self addSubview:namelabel];
        
        titlelabel=[[UILabel alloc]init];
        [titlelabel setTranslatesAutoresizingMaskIntoConstraints:NO ];
        titlelabel.backgroundColor=[UIColor clearColor];
        titlelabel.textColor=[UIColor whiteColor];
        titlelabel.text=@"标题";
        titlelabel.lineBreakMode = NSLineBreakByWordWrapping;
        titlelabel.textAlignment=UIControlContentHorizontalAlignmentLeft;
        titlelabel.numberOfLines = 1;
        titlelabel.preferredMaxLayoutWidth = 1024; //Notice! important, label not init from xib, must be set this property!
        [self addSubview:titlelabel];
    }
    return self;

}

- (void)drawRect:(CGRect)rect {
    
    
    
    
}

- (void)updateConstraints {
    
    
    [self setupConstraints];
    [super updateConstraints];
}
-(void)setupConstraints{

    
     NSDictionary* views=NSDictionaryOfVariableBindings(self,namelabel,titlelabel);
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[titlelabel]|" options:0 metrics:nil views:views]];
    
     [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[namelabel]|" options:0 metrics:nil views:views]];
    
   [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[titlelabel(>=30)]-10-[namelabel]" options:0 metrics:nil views:views]];


//    
//    NSDictionary *metrics = @{@"height": @"20",
//                              
//                              @"width": @"50",
//                              };
//    
//    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[namelabel(>=width)]" options:0 metrics:metrics views:views]];
//    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[namelabel(>=height)]" options:0 metrics:metrics views:views]];

}
@end
