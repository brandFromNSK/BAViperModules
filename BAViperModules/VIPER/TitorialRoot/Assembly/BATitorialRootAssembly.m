//
//  BATitorialRootAssembly.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialRootAssembly.h"

#import "BATitorialRootViewController.h"
#import "BATitorialRootInteractor.h"
#import "BATitorialRootPresenter.h"
#import "BATitorialRootRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation BATitorialRootAssembly

- (BATitorialRootViewController *)viewTitorialRootModule {
    return [TyphoonDefinition withClass:[BATitorialRootViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTitorialRootModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTitorialRootModule]];
                          }];
}

- (BATitorialRootInteractor *)interactorTitorialRootModule {
    return [TyphoonDefinition withClass:[BATitorialRootInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTitorialRootModule]];
                          }];
}

- (BATitorialRootPresenter *)presenterTitorialRootModule {
    return [TyphoonDefinition withClass:[BATitorialRootPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTitorialRootModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTitorialRootModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTitorialRootModule]];
                          }];
}

- (BATitorialRootRouter *)routerTitorialRootModule {
    return [TyphoonDefinition withClass:[BATitorialRootRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTitorialRootModule]];
                          }];
}

@end
