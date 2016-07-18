//
//  TableViewCell.m
//  AutoLayout
//
//  Created by 姜超 on 15-1-7.
//  Copyright (c) 2015年 姜超. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
      //  [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        imageview=[[UIImageView alloc]init];
        [imageview setTranslatesAutoresizingMaskIntoConstraints:NO];
        [imageview setImage:[UIImage imageNamed:@"天气预报图标下载.png"]];
        [self addSubview:imageview];
        
//        NSDictionary* views=NSDictionaryOfVariableBindings(self,imageview);
//        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[imageview(>=22)]" options:0 metrics:nil views:views]];
//        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[imageview(>=22)]" options:0 metrics:nil views:views]];
        
    }
    
    return self;
    
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
- (void)updateConstraints {

    [self setupConstraints];
    [super updateConstraints];
}
-(void)setupConstraints{

    NSDictionary* views=NSDictionaryOfVariableBindings(self,imageview);

    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[imageview(>=22)]" options:0 metrics:nil views:views]];
     [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[imageview(>=22)]" options:0 metrics:nil views:views]];
    
}
@end
