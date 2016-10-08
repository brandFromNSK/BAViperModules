//
//  BATitorialPresenter.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialPresenter.h"

#import "BATitorialViewInput.h"
#import "BATitorialInteractorInput.h"
#import "BATitorialRouterInput.h"

@implementation BATitorialPresenter

#pragma mark - Методы BATitorialModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы BATitorialViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы BATitorialInteractorOutput

@end
