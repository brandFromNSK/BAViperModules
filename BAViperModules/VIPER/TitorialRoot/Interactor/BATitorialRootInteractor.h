//
//  BATitorialRootInteractor.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialRootInteractorInput.h"

@protocol BATitorialRootInteractorOutput;

@interface BATitorialRootInteractor : NSObject <BATitorialRootInteractorInput>

@property (nonatomic, weak) id<BATitorialRootInteractorOutput> output;

@end
