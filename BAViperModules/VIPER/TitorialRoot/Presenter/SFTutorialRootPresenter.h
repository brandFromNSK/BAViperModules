//
//  SFTutorialRootPresenter.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootViewOutput.h"
#import "SFTutorialRootInteractorOutput.h"
#import "SFTutorialRootModuleInput.h"
#import "SFTutorialModuleOutput.h"

@protocol SFTutorialRootViewInput;
@protocol SFTutorialRootInteractorInput;
@protocol SFTutorialRootRouterInput;

@interface SFTutorialRootPresenter : NSObject <SFTutorialRootModuleInput, SFTutorialRootViewOutput, SFTutorialRootInteractorOutput, SFTutorialModuleOutput>

@property (nonatomic, weak) id<SFTutorialRootViewInput> view;
@property (nonatomic, strong) id<SFTutorialRootInteractorInput> interactor;
@property (nonatomic, strong) id<SFTutorialRootRouterInput> router;

@end
