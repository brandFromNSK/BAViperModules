//
//  SFTutorialPresenter.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialPresenter.h"

#import "SFTutorialViewInput.h"
#import "SFTutorialInteractorInput.h"
#import "SFTutorialRouterInput.h"

#import "SFTutorialModuleOutput.h"

@interface SFTutorialPresenter ()

@property (strong, nonatomic) id<SFTutorialModuleOutput> moduleOutput;

@end

@implementation SFTutorialPresenter

#pragma mark - Методы SFTutorialModuleInput

- (void)setModuleOutput:(id<RamblerViperModuleOutput>)moduleOutput {
    _moduleOutput = (id<SFTutorialModuleOutput>)moduleOutput;
}

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы SFTutorialViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы SFTutorialInteractorOutput
- (void)didSetPageAtIndex:(NSInteger)index {
    [self.moduleOutput didShowPageAtIndex: index];
}
@end
