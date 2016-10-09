//
//  SFTutorialPresenter.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialViewOutput.h"
#import "SFTutorialInteractorOutput.h"
#import "SFTutorialModuleInput.h"

@protocol SFTutorialViewInput;
@protocol SFTutorialInteractorInput;
@protocol SFTutorialRouterInput;

@interface SFTutorialPresenter : NSObject <SFTutorialModuleInput, SFTutorialViewOutput, SFTutorialInteractorOutput>

@property (nonatomic, weak) id<SFTutorialViewInput> view;
@property (nonatomic, strong) id<SFTutorialInteractorInput> interactor;
@property (nonatomic, strong) id<SFTutorialRouterInput> router;

@end
