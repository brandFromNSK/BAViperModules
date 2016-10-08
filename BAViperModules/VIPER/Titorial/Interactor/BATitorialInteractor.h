//
//  BATitorialInteractor.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialInteractorInput.h"

@protocol BATitorialInteractorOutput;

@interface BATitorialInteractor : NSObject <BATitorialInteractorInput>

@property (nonatomic, weak) id<BATitorialInteractorOutput> output;

@end
