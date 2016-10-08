//
//  BATitorialRootRouter.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialRootRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface BATitorialRootRouter : NSObject <BATitorialRootRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
