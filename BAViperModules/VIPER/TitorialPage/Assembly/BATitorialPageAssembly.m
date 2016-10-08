//
//  BATitorialPageAssembly.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialPageAssembly.h"

#import "BATitorialPageViewController.h"
#import "BATitorialPageInteractor.h"
#import "BATitorialPagePresenter.h"
#import "BATitorialPageRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation BATitorialPageAssembly

- (BATitorialPageViewController *)viewTitorialPageModule {
    return [TyphoonDefinition withClass:[BATitorialPageViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTitorialPageModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTitorialPageModule]];
                          }];
}

- (BATitorialPageInteractor *)interactorTitorialPageModule {
    return [TyphoonDefinition withClass:[BATitorialPageInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTitorialPageModule]];
                          }];
}

- (BATitorialPagePresenter *)presenterTitorialPageModule {
    return [TyphoonDefinition withClass:[BATitorialPagePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTitorialPageModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTitorialPageModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTitorialPageModule]];
                          }];
}

- (BATitorialPageRouter *)routerTitorialPageModule {
    return [TyphoonDefinition withClass:[BATitorialPageRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTitorialPageModule]];
                          }];
}

@end
