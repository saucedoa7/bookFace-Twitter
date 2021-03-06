//
//  ViewController.m
//  Twitter_FB_ObjC
//
//  Created by Albert Saucedo on 11/11/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import <Twitter/Twitter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.29 green:0.4 blue:0.62 alpha:1];

    [btnTwitter setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [btnTwitter setTitle:@"tweet it" forState:UIControlStateNormal];
    [btnTwitter setFrame:CGRectMake(250, 542, 125, 125)];

    [btnFB setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [btnFB setTitle:@"post to\nfacebook" forState:UIControlStateNormal];
    btnFB.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    btnFB.titleLabel.textAlignment = NSTextAlignmentCenter;

    [btnFB setFrame:CGRectMake(0, 542, 125, 125)];
}

- (IBAction)onFBButtonPressed:(UIButton *)sender {
    faceBookPost = [SLComposeViewController new];
    faceBookPost = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [faceBookPost setInitialText:@"bookface"];
    [self presentViewController:faceBookPost animated:YES completion:nil];
}

- (IBAction)onTwitterButtonPressed:(UIButton *)sender {

    tweetPost = [SLComposeViewController new];
    tweetPost = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [tweetPost setInitialText:@""];
    [self presentViewController:tweetPost animated:YES completion:nil];

}
@end
