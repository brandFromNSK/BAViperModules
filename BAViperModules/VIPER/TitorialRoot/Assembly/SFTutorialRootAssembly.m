//
//  SFTutorialRootAssembly.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootAssembly.h"

#import "SFTutorialRootViewController.h"
#import "SFTutorialRootInteractor.h"
#import "SFTutorialRootPresenter.h"
#import "SFTutorialRootRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation SFTutorialRootAssembly

- (SFTutorialRootViewController *)viewTutorialRootModule {
    return [TyphoonDefinition withClass:[SFTutorialRootViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTutorialRootModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTutorialRootModule]];
                          }];
}

- (SFTutorialRootInteractor *)interactorTutorialRootModule {
    return [TyphoonDefinition withClass:[SFTutorialRootInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTutorialRootModule]];
                          }];
}

- (SFTutorialRootPresenter *)presenterTutorialRootModule {
    return [TyphoonDefinition withClass:[SFTutorialRootPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTutorialRootModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTutorialRootModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTutorialRootModule]];
                          }];
}

- (SFTutorialRootRouter *)routerTutorialRootModule {
    return [TyphoonDefinition withClass:[SFTutorialRootRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTutorialRootModule]];
                          }];
}

@end
