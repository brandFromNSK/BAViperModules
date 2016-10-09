//
//  SFTutorialRootViewController.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SFTutorialRootViewInput.h"

#import <RamblerSegues/RamblerSegues.h>



@protocol SFTutorialRootViewOutput;

@interface SFTutorialRootViewController : UIViewController <SFTutorialRootViewInput, RamblerEmbedSegueViewContainer>

@property (nonatomic, strong) id<SFTutorialRootViewOutput> output;



@end
