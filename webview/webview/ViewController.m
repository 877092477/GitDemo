//
//  ViewController.m
//  webview
//
//  Created by 吴建良 on 2017/11/8.
//  Copyright © 2017年 wjl. All rights reserved.
//

#import "ViewController.h"

#import "TWoViewController.h"
#import "CustomNavViewController.h"

@interface ViewController ()<UIWebViewDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.view.backgroundColor=[UIColor whiteColor];
    UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(0, 0, 100, 80);
    btn.center=self.view.center;
    btn.backgroundColor=[UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(onbtn) forControlEvents:UIControlEventTouchUpInside];
    


}
-(void)onbtn{
    TWoViewController*twoVC=[[TWoViewController alloc] init];
  
    [self.navigationController pushViewController:twoVC animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
