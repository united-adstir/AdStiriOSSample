/*
 Copyright 2012 motionBEAT Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "ViewController.h"
#import <AdStir/ASTAdView.h>

@interface ViewController () <ASTDelegateProtocol>
@property (nonatomic, retain) ASTAdView* adview;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
	self.adview = [ASTAdView requestWithAppId:@"MEDIA-ID" andSpotNo:@"SPOT-NO" andDelegate:self];
	[[self.view viewWithTag:100] addSubview:self.adview];
}

-(void)viewWillDisappear:(BOOL)animated{
	[self.adview stop];
	[self.adview removeFromSuperview];
	self.adview = nil;
}

// ASTDelegateProtocol

- (void) didFailToInitView:(NSString *)appId{
	[self.adview stop];
	[self.adview removeFromSuperview];
	self.adview = nil;
}

- (UIViewController *) currentViewController{
	return self;
}

- (void) didFailToUpdateConfig{
	NSLog(@"didFailToUpdateConfig");
}

- (void) didLoadAdView{
	NSLog(@"didLoadAdView");
}
- (void) didFailToLoadAdView{
	NSLog(@"didFailToLoadAdView");
	[self.adview nextAd];
}

- (CGPoint) originOfAdView{
	return CGPointMake(0, 0);
}

@end
