//
//  BATitorialViewOutput.h
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BATitorialViewOutput <NSObject>

/**
 @author Andrey Bronnikov

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
