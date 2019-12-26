//
//  UIViewController+NavigationBarStyle.m
//  TXHConductFinancialTransactions
//
//  Created by wwt on 15/11/3.
//  Copyright (c) 2015年 rongyu. All rights reserved.
//

#import "UIViewController+NavigationBarStyle.h"


@implementation UIViewController (NavigationBarStyle)

- (void)navigationBarStyleWithTitle:(NSString *)titleStr titleColor:(UIColor *)titleColor leftTitle:(NSString *)leftTitle leftImageName:(NSString *)leftImageName leftAction:(SEL)leftAction rightTitle:(NSString *)rightTitle rightImageName:(NSString *)rightImageName rightAction:(SEL)rightAction{
    
    //设置标题
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100 ,100)];
    titleLabel.text = titleStr;
    titleLabel.textColor = titleColor;
    titleLabel.textAlignment = NSTextAlignmentCenter;
//    titleLabel.font = [UIFont fontWithName:FontName size:18];
    self.navigationItem.titleView = titleLabel;
    
    //设置左右button
    
    if (leftTitle && !leftImageName) {
        
//        UIButton *leftBtn = [[UIButton alloc] createBtnWithFrame:CGRectMake(0, 0, 50, 30) text:leftTitle textColor:[UIColor orangeColor]];
        UIButton*leftBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50,30)];
        [leftBtn setTitle:leftTitle forState:UIControlStateNormal];
        [leftBtn addTarget:self action:leftAction forControlEvents:UIControlEventTouchUpInside];
        [leftBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        
        //如果左是纯文本
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
        
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"navigation_back_normal"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonDidClicked:)];
        
        self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"global_return_arrow"] style:(UIBarButtonItemStyle)UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonDidClicked:)];
                                           
        
        
    }else if (!leftTitle && leftImageName){
//
//        UIButton *leftBtn = [[FactoryManager shareManager] createBtnWithFrame:CGRectMake(-5, 0, 40, 30) text:nil textColor:nil];
        UIButton*leftBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50,30)];
        [leftBtn setTitle:leftTitle forState:UIControlStateNormal];
//        leftBtn.backgroundColor=[UIColor redColor];
   leftBtn.imageEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);

        [leftBtn setImage:[UIImage imageNamed:leftImageName] forState:UIControlStateNormal];
//        leftBtn.imageView.contentMode = UIViewContentModeLeft;
        [leftBtn addTarget:self action:leftAction forControlEvents:UIControlEventTouchUpInside];
        
        //如果左是纯图片
        
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
      
    }
    
    if (rightTitle && !rightImageName) {
        
        UIButton*rightBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50,30)];
        
        [rightBtn setTitle:leftTitle forState:UIControlStateNormal];
        [rightBtn addTarget:self action:rightAction forControlEvents:UIControlEventTouchUpInside];
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
        
    }else if (!rightTitle && rightImageName) {
        
        UIButton*rightBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50,30)];
        [rightBtn setTitle:leftTitle forState:UIControlStateNormal];
        [rightBtn setImage:[UIImage imageNamed:rightImageName] forState:UIControlStateNormal];
        rightBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [rightBtn addTarget:self action:rightAction forControlEvents:UIControlEventTouchUpInside];
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
        
    }
    
}

- (void)clearNavigationBar {
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor clearColor]];
    [self.navigationController.navigationBar setTranslucent:YES];
    
    //navigationController与navigationBar之间的横线置空
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
}

@end
