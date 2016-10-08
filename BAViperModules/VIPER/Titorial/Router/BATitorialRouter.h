//
//  BATitorialRouter.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface BATitorialRouter : NSObject <BATitorialRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
