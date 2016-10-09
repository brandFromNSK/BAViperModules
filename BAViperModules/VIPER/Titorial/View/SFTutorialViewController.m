//
//  SFTutorialViewController.m
//  SFViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFTutorialViewController.h"

#import "SFTutorialViewOutput.h"

@interface SFTutorialViewController () <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) NSArray *myViewControllers;

@end

@implementation SFTutorialViewController


#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы SFTutorialViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    
    self.delegate = self;
    self.dataSource = self;
    
    UIViewController *p1 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"TutorialPageViewController"];
    UIViewController *p2 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"TutorialPageViewController"];
    UIViewController *p3 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"TutorialPageViewController"];
    UIViewController *p4 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"TutorialPageViewController"];
    
    self.myViewControllers = @[p1,p2,p3,p4];
    
    
    [self setViewControllers:@[p1]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO completion:nil];
}


- (UIViewController *)viewControllerAtIndex:(NSUInteger)index {
    return self.myViewControllers[index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
     viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger currentIndex = [self.myViewControllers indexOfObject:viewController];
    
    if (currentIndex == 0) {
        return nil;
    }
    
    currentIndex--;
   // currentIndex = currentIndex % (self.myViewControllers.count);
  //  NSLog(@"%lu", (unsigned long)currentIndex);
    
  //  [self.output didSetPageAtIndex: currentIndex];
    return [self.myViewControllers objectAtIndex:currentIndex];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger currentIndex = [self.myViewControllers indexOfObject:viewController];
    
    if (currentIndex == self.myViewControllers.count - 1) {
        return nil;
    }
    
    currentIndex++;
  //  currentIndex = currentIndex % (self.myViewControllers.count);
 //   NSLog(@"%lu", (unsigned long)currentIndex);
    
 //   [self.output didSetPageAtIndex: currentIndex];
    return [self.myViewControllers objectAtIndex:currentIndex];
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed {
    NSLog(@"did end %lu", (unsigned long)[self.myViewControllers indexOfObject:previousViewControllers [0]]);
}

-(void)pageViewController:(UIPageViewController *)pageViewController willTransitionToViewControllers:(NSArray<UIViewController *> *)pendingViewControllers {
    NSLog(@"will show %lu", (unsigned long)[self.myViewControllers indexOfObject:pendingViewControllers [0]]);
}


- (NSInteger)presentationCountForPageViewController:
(UIPageViewController *)pageViewController {
    return self.myViewControllers.count;
}

- (NSInteger)presentationIndexForPageViewController: (UIPageViewController *)pageViewController {
    return 0;
}

@end
