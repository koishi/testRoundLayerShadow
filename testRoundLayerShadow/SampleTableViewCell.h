//
//  SampleTableViewCell.h
//  testRoundLayerShadow
//
//  Created by bs on 2015/06/28.
//  Copyright (c) 2015年 bs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *cardView;
@property (weak, nonatomic) IBOutlet UIView *shadowView;
@property (weak, nonatomic) IBOutlet UIView *lineView;

@end
