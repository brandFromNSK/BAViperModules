//
//  BATitorialAssembly.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialAssembly.h"

#import "BATitorialViewController.h"
#import "BATitorialInteractor.h"
#import "BATitorialPresenter.h"
#import "BATitorialRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation BATitorialAssembly

- (BATitorialViewController *)viewTitorialModule {
    return [TyphoonDefinition withClass:[BATitorialViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTitorialModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTitorialModule]];
                          }];
}

- (BATitorialInteractor *)interactorTitorialModule {
    return [TyphoonDefinition withClass:[BATitorialInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTitorialModule]];
                          }];
}

- (BATitorialPresenter *)presenterTitorialModule {
    return [TyphoonDefinition withClass:[BATitorialPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTitorialModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTitorialModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTitorialModule]];
                          }];
}

- (BATitorialRouter *)routerTitorialModule {
    return [TyphoonDefinition withClass:[BATitorialRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTitorialModule]];
                          }];
}

@end
