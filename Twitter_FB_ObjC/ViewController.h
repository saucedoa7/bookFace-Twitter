//
//  ViewController.h
//  Twitter_FB_ObjC
//
//  Created by Albert Saucedo on 11/11/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    IBOutlet UIButton *btnFB;
    IBOutlet UIButton *btnTwitter;

    SLComposeViewController *faceBookPost;
    SLComposeViewController *tweetPost;

}
- (IBAction)onFBButtonPressed:(UIButton *)sender;

- (IBAction)onTwitterButtonPressed:(UIButton *)sender;


@end

