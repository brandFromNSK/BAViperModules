//
//  BATitorialViewController.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BATitorialViewInput.h"

@protocol BATitorialViewOutput;

@interface BATitorialViewController : UIPageViewController <BATitorialViewInput>

@property (nonatomic, strong) id<BATitorialViewOutput> output;

@end
