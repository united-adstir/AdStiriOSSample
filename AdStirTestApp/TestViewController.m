//
//  TestViewController.m
//  AdStirTestApp
//
//  Created by reiji-terasaka on 12/05/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

@synthesize adView = adView_;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.adView = [ASTAdView requestWithAppId:@"MEDIA-ID" andSpotNo:@"SPOT-NO" andDelegate:self];
    self.adView = [ASTAdView requestWithAppId:@"73743886" andSpotNo:@"2" andDelegate:self];
    [self.view addSubview:self.adView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.adView = nil;
}

- (void)didFailToInitView:(NSString *)appId{
}
- (UIViewController *)currentViewController{
    return self;
}
- (void)didFailToLoadAdView{
    [self.adView nextAd];
}
- (CGPoint)originOfAdView{
    return CGPointMake(0, 0);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
