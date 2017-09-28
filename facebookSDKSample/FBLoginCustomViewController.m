//
//  FBLoginCustomViewController.m
//  facebookSDKSample
//
//  Created by 정다운 on 2017. 9. 18..
//  Copyright © 2017년 daun.joung.ico. All rights reserved.
//

#import "FBLoginCustomViewController.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface FBLoginCustomViewController ()

@end

@implementation FBLoginCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onClickLogin:(id)sender {
    // http://blog.naver.com/PostView.nhn?blogId=dla210&logNo=220718893889&categoryNo=69&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=1&from=postView
    if([FBSDKAccessToken currentAccessToken]){
        // User is logged in, do work such as go to next view controller
        // 로그인 후 액션 지정하기
    } else {
        // 한번이라도 로그인 하지 않은 사용자의 경우
        FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
        [login logInWithReadPermissions:@[@"email"] fromViewController:self handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
            // TODO
            if(error) {
                NSLog(@"Process Error");
            } else if (result.isCancelled){
                NSLog(@"Cancelled");
            } else {
                NSLog(@"Logged in");
                // 로그인 후 액션 지정하기
            }
        }];
    }
}
- (IBAction)onClickLogout:(id)sender {
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];

    [login logOut];
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
