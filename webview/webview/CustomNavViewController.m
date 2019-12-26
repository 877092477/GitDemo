//
//  CustomNavViewController.m
//  webview
//
//  Created by 吴建良 on 2017/11/8.
//  Copyright © 2017年 wjl. All rights reserved.
//

#import "CustomNavViewController.h"

@interface CustomNavViewController ()

@end

@implementation CustomNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //将系统的代理保存（在view 加载在完毕就赋值）
//    self.popDelegate =self.interactivePopGestureRecognizer.delegate;
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
        self.interactivePopGestureRecognizer.delegate = nil;
    {
        
        viewController.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[self imageWithOriImageName:@"global_return_arrow"] style:0 target:self action:@selector(back)];
    }
    [super pushViewController:viewController animated:YES];
}

-(void)back
{
    [self popViewControllerAnimated:YES];
}

- (UIImage *)imageWithOriImageName:(NSString *)imageName
{
    //传入一张图片,返回一张不被渲染的图片
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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
