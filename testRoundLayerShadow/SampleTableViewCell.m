//
//  SampleTableViewCell.m
//  testRoundLayerShadow
//
//  Created by bs on 2015/06/28.
//  Copyright (c) 2015年 bs. All rights reserved.
//

#import "SampleTableViewCell.h"

@implementation SampleTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
  [super layoutSubviews];

  self.cardView.layer.cornerRadius = 20.0;
  self.cardView.layer.masksToBounds = YES;

  CALayer *layer = self.shadowView.layer;
  layer.backgroundColor = [UIColor blackColor].CGColor;
  layer.cornerRadius = 20.0;
  layer.shadowColor = [[UIColor blackColor] CGColor];
  layer.shadowOpacity = 2.0;
  layer.shadowRadius = 2.0;
  layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
  
  if (self.lineView.hidden) {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, 40);
    self.cardView.frame = CGRectMake(self.cardView.frame.origin.x, 0, self.cardView.frame.size.width, self.cardView.frame.size.height);
  } else {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, 60);
    self.cardView.frame = CGRectMake(self.cardView.frame.origin.x, 20, self.cardView.frame.size.width, self.cardView.frame.size.height);
  }
  self.shadowView.frame = self.cardView.frame;
}

@end
