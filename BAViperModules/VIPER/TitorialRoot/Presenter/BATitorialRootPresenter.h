//
//  BATitorialRootPresenter.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialRootViewOutput.h"
#import "BATitorialRootInteractorOutput.h"
#import "BATitorialRootModuleInput.h"

@protocol BATitorialRootViewInput;
@protocol BATitorialRootInteractorInput;
@protocol BATitorialRootRouterInput;

@interface BATitorialRootPresenter : NSObject <BATitorialRootModuleInput, BATitorialRootViewOutput, BATitorialRootInteractorOutput>

@property (nonatomic, weak) id<BATitorialRootViewInput> view;
@property (nonatomic, strong) id<BATitorialRootInteractorInput> interactor;
@property (nonatomic, strong) id<BATitorialRootRouterInput> router;

@end
