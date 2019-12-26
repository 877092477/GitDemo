//
//  TWoViewController.m
//  webview
//
//  Created by 吴建良 on 2017/11/8.
//  Copyright © 2017年 wjl. All rights reserved.
//

#import "TWoViewController.h"
#import "UIViewController+NavigationBarStyle.h"


@interface TWoViewController ()

@end

@implementation TWoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    [self navigationBarStyleWithTitle:@"提取df" titleColor:[UIColor blackColor]  leftTitle:nil leftImageName:@"global_return_arrow.png" leftAction:@selector(popVC) rightTitle:nil rightImageName:nil rightAction:nil];
    NSLog(@"测试demo");
    
}

-(void)popVC{
    [self.navigationController popViewControllerAnimated:YES];
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
