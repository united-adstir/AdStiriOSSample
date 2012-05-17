//
//  TestViewController.h
//  AdStirTestApp
//
//  Created by reiji-terasaka on 12/05/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AdStir/ASTAdView.h>
#import <AdStir/ASTDelegateProtocol.h>

@interface TestViewController : UIViewController <ASTDelegateProtocol>{
    ASTAdView * adView_;
}
@property (retain) IBOutlet ASTAdView *adView;

@end
