//
//  BATitorialPageRouter.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialPageRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface BATitorialPageRouter : NSObject <BATitorialPageRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
