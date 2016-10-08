//
//  BATitorialPresenter.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialViewOutput.h"
#import "BATitorialInteractorOutput.h"
#import "BATitorialModuleInput.h"

@protocol BATitorialViewInput;
@protocol BATitorialInteractorInput;
@protocol BATitorialRouterInput;

@interface BATitorialPresenter : NSObject <BATitorialModuleInput, BATitorialViewOutput, BATitorialInteractorOutput>

@property (nonatomic, weak) id<BATitorialViewInput> view;
@property (nonatomic, strong) id<BATitorialInteractorInput> interactor;
@property (nonatomic, strong) id<BATitorialRouterInput> router;

@end
