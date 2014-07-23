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
#import "AdstirMraidView.h"

@interface ViewController ()
@property (nonatomic, retain) AdstirMraidView* adView;
@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.adView = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    self.adView = [[[AdstirMraidView alloc] initWithAdSize:kAdstirAdSize320x50 media:@"MEDIA-ID" spot:0 /* Spot No as NSUInteger */] autorelease];

	[[self.view viewWithTag:100] addSubview:self.adView];
}

- (void)viewDidUnload
{
    [self destroyAdView];
}

- (void)dealloc
{
    [self destroyAdView];

    [super dealloc];
}

-(void)viewWillAppear:(BOOL)animated {
    [self.adView start];
}

-(void)viewWillDisappear:(BOOL)animated {
    [self.adView stop];
}

- (void)destroyAdView
{
    if (nil != self.adView) {
        self.adView.delegate = nil;
        [self.adView removeFromSuperview];
        self.adView = nil;
    }
}

@end
