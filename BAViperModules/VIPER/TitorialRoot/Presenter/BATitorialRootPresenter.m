//
//  BATitorialRootPresenter.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialRootPresenter.h"

#import "BATitorialRootViewInput.h"
#import "BATitorialRootInteractorInput.h"
#import "BATitorialRootRouterInput.h"

@implementation BATitorialRootPresenter

#pragma mark - Методы BATitorialRootModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы BATitorialRootViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы BATitorialRootInteractorOutput

@end
