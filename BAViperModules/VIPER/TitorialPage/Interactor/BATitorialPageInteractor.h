//
//  BATitorialPageInteractor.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialPageInteractorInput.h"

@protocol BATitorialPageInteractorOutput;

@interface BATitorialPageInteractor : NSObject <BATitorialPageInteractorInput>

@property (nonatomic, weak) id<BATitorialPageInteractorOutput> output;

@end
