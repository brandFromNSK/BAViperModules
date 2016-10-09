//
//  SFTutorialRootInteractor.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootInteractorInput.h"

@protocol SFTutorialRootInteractorOutput;

@interface SFTutorialRootInteractor : NSObject <SFTutorialRootInteractorInput>

@property (nonatomic, weak) id<SFTutorialRootInteractorOutput> output;

@end
