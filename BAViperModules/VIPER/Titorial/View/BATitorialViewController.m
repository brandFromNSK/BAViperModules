//
//  BATitorialViewController.m
//  BAViperModules
//
//  Created by Andrey Bronnikov on 09/10/2016.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "BATitorialViewController.h"

#import "BATitorialViewOutput.h"

@interface BATitorialViewController () <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) NSArray *myViewControllers;

@end

@implementation BATitorialViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];


    
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы BATitorialViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    
    self.delegate = self;
    self.dataSource = self;
    
    UIViewController *p1 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro1ID"];
    UIViewController *p2 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro1ID"];
    UIViewController *p3 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro1ID"];
    UIViewController *p4 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro1ID"];
    
    self.myViewControllers = @[p1,p2,p3,p4];
    
    
    [self setViewControllers:@[p1]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO completion:nil];
}


-(UIViewController *)viewControllerAtIndex:(NSUInteger)index
{
    return self.myViewControllers[index];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
     viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [self.myViewControllers indexOfObject:viewController];
    
    --currentIndex;
    currentIndex = currentIndex % (self.myViewControllers.count);
    NSLog(@"%lu", (unsigned long)currentIndex);
    return [self.myViewControllers objectAtIndex:currentIndex];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [self.myViewControllers indexOfObject:viewController];
    
    ++currentIndex;
    currentIndex = currentIndex % (self.myViewControllers.count);
    NSLog(@"%lu", (unsigned long)currentIndex);
    return [self.myViewControllers objectAtIndex:currentIndex];
}

-(NSInteger)presentationCountForPageViewController:
(UIPageViewController *)pageViewController
{
    return self.myViewControllers.count;
}

-(NSInteger)presentationIndexForPageViewController:
(UIPageViewController *)pageViewController
{
    return 2;
}

@end
