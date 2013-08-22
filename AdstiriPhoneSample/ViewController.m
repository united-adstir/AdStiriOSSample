/*
 Copyright 2012-2013 UNITED, inc.
 
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
#import "AdstirWebView.h"

@interface ViewController ()
@property (nonatomic, retain) AdstirWebView* adview;
@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
	self.adview = [[[AdstirWebView alloc]initWithFrame:CGRectMake(0, 0, 320, 50) media:@"MEDIA-ID" spot:@"SPOT-NO"]autorelease];
	[[self.view viewWithTag:100] addSubview:self.adview];
}

-(void)viewWillDisappear:(BOOL)animated{
	[self.adview removeFromSuperview];
	self.adview = nil;
}

@end
