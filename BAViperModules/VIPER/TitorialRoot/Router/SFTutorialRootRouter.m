//
//  SFTutorialRootRouter.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation SFTutorialRootRouter

#pragma mark - Методы SFTutorialRootRouterInput
- (void)showPageViewControllerWithOutput:(id)output {
    [[self.transitionHandler openModuleUsingSegue:@"PageContainerEmbedSegue"] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<RamblerViperModuleInput> moduleInput) {
        return output;
    }];
}
@end
