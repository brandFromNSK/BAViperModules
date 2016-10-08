//
//  BATitorialPageViewController.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BATitorialPageViewInput.h"

@protocol BATitorialPageViewOutput;

@interface BATitorialPageViewController : UIViewController <BATitorialPageViewInput>

@property (nonatomic, strong) id<BATitorialPageViewOutput> output;

@end
