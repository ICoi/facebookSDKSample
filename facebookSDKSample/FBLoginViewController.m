//
//  FBLoginViewController.m
//  facebookSDKSample
//
//  Created by 정다운 on 2017. 9. 17..
//  Copyright © 2017년 daun.joung.ico. All rights reserved.
//

#import "FBLoginViewController.h"

#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface FBLoginViewController ()

@end

@implementation FBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    if([FBSDKAccessToken currentAccessToken]){
        // User is logged in, do work such as go to next view controller
        FBSDKAccessToken *nowAccessToken = [FBSDKAccessToken currentAccessToken];
        NSLog(@"Already logged in : %@",nowAccessToken.userID);
    }
    
    // add login button
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    // 권한 요청 리스트 전달.
    loginButton.readPermissions = @[@"public_profile", @"email",@"user_friends"];
    [self.view addSubview:loginButton];
    
    
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
