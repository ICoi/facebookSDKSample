//
//  FBShareViewController.m
//  facebookSDKSample
//
//  Created by 정다운 on 2017. 9. 17..
//  Copyright © 2017년 daun.joung.ico. All rights reserved.
//

#import "FBShareViewController.h"
#import <FBSDKShareKit/FBSDKShareKit.h>
@interface FBShareViewController ()

@end

@implementation FBShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FBSDKShareLinkContent * content = [[FBSDKShareLinkContent alloc] init];
    content.contentURL = [NSURL URLWithString:@"http://www.naver.com"];
    
    FBSDKShareButton *button = [[FBSDKShareButton alloc] init];
    button.shareContent = content;

    CGRect btFrame = button.frame;
    btFrame.origin.x = 90;
    btFrame.origin.y = 150;
    button.frame = btFrame;
    [self.view addSubview:button];
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
