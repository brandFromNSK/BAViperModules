//
//  BATitorialPagePresenter.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialPagePresenter.h"

#import "BATitorialPageViewInput.h"
#import "BATitorialPageInteractorInput.h"
#import "BATitorialPageRouterInput.h"

@implementation BATitorialPagePresenter

#pragma mark - Методы BATitorialPageModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы BATitorialPageViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы BATitorialPageInteractorOutput

@end
