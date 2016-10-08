//
//  BATitorialRootModuleInput.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol BATitorialRootModuleInput <RamblerViperModuleInput>

/**
 @author Andrey Bronnikov

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
