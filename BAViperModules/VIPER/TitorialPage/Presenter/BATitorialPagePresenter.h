//
//  BATitorialPagePresenter.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialPageViewOutput.h"
#import "BATitorialPageInteractorOutput.h"
#import "BATitorialPageModuleInput.h"

@protocol BATitorialPageViewInput;
@protocol BATitorialPageInteractorInput;
@protocol BATitorialPageRouterInput;

@interface BATitorialPagePresenter : NSObject <BATitorialPageModuleInput, BATitorialPageViewOutput, BATitorialPageInteractorOutput>

@property (nonatomic, weak) id<BATitorialPageViewInput> view;
@property (nonatomic, strong) id<BATitorialPageInteractorInput> interactor;
@property (nonatomic, strong) id<BATitorialPageRouterInput> router;

@end
