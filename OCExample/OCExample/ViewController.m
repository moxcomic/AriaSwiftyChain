//
//  ViewController.m
//  OCExample
//
//  Created by 神崎H亚里亚 on 2019/11/27.
//  Copyright © 2019 moxcomic. All rights reserved.
//

#import "ViewController.h"
#import "OCExample-Swift.h"
#import <AriaSwiftyChain/AriaSwiftyChain-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UIButton alloc] init]
    .setTitleForState(@"按钮", UIControlStateNormal)
    .setTitleColorForState(UIColor.redColor, UIControlStateNormal)
    .setTap(^{
        NSLog(@"被点击了...");
        [UIAlertController showWithTitle:@"" message:nil confirmText:@"OK" handler:nil];
    })
    .addToSuperview(self.view)
    .setFrameWithXYWH(100, 100, 50, 50);
    
    [[UILabel alloc] init]
    .setText(@"文本");
    
    self.topViewController;
}


@end
