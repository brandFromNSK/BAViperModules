//
//  BATitorialRootViewController.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BATitorialRootViewInput.h"

@protocol BATitorialRootViewOutput;

@interface BATitorialRootViewController : UIViewController <BATitorialRootViewInput>

@property (nonatomic, strong) id<BATitorialRootViewOutput> output;

@end
