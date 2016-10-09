//
//  SFTutorialInteractor.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialInteractorInput.h"

@protocol SFTutorialInteractorOutput;

@interface SFTutorialInteractor : NSObject <SFTutorialInteractorInput>

@property (nonatomic, weak) id<SFTutorialInteractorOutput> output;

@end
