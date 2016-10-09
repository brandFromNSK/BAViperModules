//
//  SFTutorialRouter.h
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface SFTutorialRouter : NSObject <SFTutorialRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
