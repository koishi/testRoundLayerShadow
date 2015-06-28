//
//  ViewController.m
//  testRoundLayerShadow
//
//  Created by bs on 2015/06/27.
//  Copyright (c) 2015年 bs. All rights reserved.
//

#import "ViewController.h"
#import "SampleTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  [self addCellView];
}

- (void)addCellView
{
  SampleTableViewCell *cell = (SampleTableViewCell*)[self uiViewLoadWithNib:@"SampleTableViewCell"];

  cell.lineView.hidden = YES;
  
  [self.view addSubview:cell];
}

- (UIView *)uiViewLoadWithNib:(NSString*)nibNamed
{
  NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:nibNamed owner:self options:nil];
  UIView *aView = nibObjects[0];
  return aView;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
