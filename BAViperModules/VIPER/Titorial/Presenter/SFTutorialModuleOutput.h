//
//  SFTutorialModuleOutput.h
//  BAViperModules
//
//  Created by Андрей Бронников on 09.10.16.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol SFTutorialModuleOutput <NSObject>

- (void)didShowPageAtIndex: (NSInteger)index;

@end
