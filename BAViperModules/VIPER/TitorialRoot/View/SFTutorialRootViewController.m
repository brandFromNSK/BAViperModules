//
//  SFTutorialRootViewController.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialRootViewController.h"

#import "SFTutorialRootViewOutput.h"


@interface SFTutorialRootViewController () 

@property (weak, nonatomic) IBOutlet UIView *embedSegueContainer;

@end

@implementation SFTutorialRootViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.output didTriggerViewReadyEvent];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - Методы SFTutorialRootViewInput

- (void)setupInitialState {

	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

- (UIView*)viewForEmbedIdentifier:(NSString*)embedIdentifier {
    if ([embedIdentifier isEqualToString:@"PageContainerEmbedSegue"]) {
        return self.embedSegueContainer;
    }
    return nil;
}



@end
