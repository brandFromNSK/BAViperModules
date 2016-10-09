//
//  SFTutorialAssembly.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialAssembly.h"

#import "SFTutorialViewController.h"
#import "SFTutorialInteractor.h"
#import "SFTutorialPresenter.h"
#import "SFTutorialRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation SFTutorialAssembly

- (SFTutorialViewController *)viewTutorialModule {
    return [TyphoonDefinition withClass:[SFTutorialViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTutorialModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTutorialModule]];
                          }];
}

- (SFTutorialInteractor *)interactorTutorialModule {
    return [TyphoonDefinition withClass:[SFTutorialInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTutorialModule]];
                          }];
}

- (SFTutorialPresenter *)presenterTutorialModule {
    return [TyphoonDefinition withClass:[SFTutorialPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTutorialModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTutorialModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTutorialModule]];
                          }];
}

- (SFTutorialRouter *)routerTutorialModule {
    return [TyphoonDefinition withClass:[SFTutorialRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTutorialModule]];
                          }];
}

@end
