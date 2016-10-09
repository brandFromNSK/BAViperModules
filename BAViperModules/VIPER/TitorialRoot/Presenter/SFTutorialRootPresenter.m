//
//  SFTutorialRootPresenter.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootPresenter.h"

#import "SFTutorialRootViewInput.h"
#import "SFTutorialRootInteractorInput.h"
#import "SFTutorialRootRouterInput.h"

@implementation SFTutorialRootPresenter

#pragma mark - Методы SFTutorialRootModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы SFTutorialRootViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    [self.router showPageViewControllerWithOutput: self];
}

#pragma mark - Методы SFTutorialRootInteractorOutput

- (void)didShowPageAtIndex:(NSInteger)index {
    NSLog(@"hello %ld", (long)index);
}



@end
