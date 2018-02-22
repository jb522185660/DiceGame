//
//  BeeOneExplainViewController.m
//  6个六斋
//
//  Created by Ji_YuFeng on 2018/2/8.
//  Copyright © 2018年 GD_Bee. All rights reserved.
//

#import "BeeOneExplainViewController.h"

@interface BeeOneExplainViewController ()

@property (nonatomic,strong)UILabel *contentLabel;

@end

@implementation BeeOneExplainViewController

- (UILabel *)contentLabel
{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc]init];
        _contentLabel.font = SYSTEMFONT(16);
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.text = @"    右上角开光控制手机是否可以进行摇晃操作; \n\n    点击下方\"摇\"按钮或者摇晃手机可达到投掷骰子的效果;";
        _contentLabel.textAlignment = 0;
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
    
    UIButton *leftbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftbtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [leftbtn addTarget:self action:@selector(leftButtonAction) forControlEvents:UIControlEventTouchUpInside];
    leftbtn.frame = CGRectMake(0, 0, 35, 35);
    [leftbtn setImageEdgeInsets:UIEdgeInsetsMake(10, -5, 5, 20)];
    leftbtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:leftbtn];
    self.navigationItem.leftBarButtonItem = leftItem;
    
}

- (void)leftButtonAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"操作说明";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.contentLabel];
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(BeeNavigationHeight + 30);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
    }];
    
    
}



@end
