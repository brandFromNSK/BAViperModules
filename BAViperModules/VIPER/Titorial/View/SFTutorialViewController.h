//
//  SFTutorialViewController.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SFTutorialViewInput.h"

@protocol SFTutorialViewOutput;

@interface SFTutorialViewController : UIPageViewController <SFTutorialViewInput>

@property (nonatomic, strong) id<SFTutorialViewOutput> output;

@end
