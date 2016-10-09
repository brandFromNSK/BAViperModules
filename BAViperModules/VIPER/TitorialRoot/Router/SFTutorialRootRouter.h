//
//  SFTutorialRootRouter.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootRouterInput.h"


@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface SFTutorialRootRouter : NSObject <SFTutorialRootRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
