//
//  SFButton.m
//  BAViperModules
//
//  Created by Андрей Бронников on 09.10.16.
//  Copyright © 2016 ImproveDigital. All rights reserved.
//

#import "SFButton.h"

@implementation SFButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self layoutIfNeeded];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self layoutIfNeeded];
    }
    return self;
}

- (void)setStyle:(NSString *)style {
    if ([style isEqualToString:@"main"]) {
        self.backgroundColor = [UIColor whiteColor];
        self.titleLabel.textColor = [UIColor colorWithRed:164.f/255.5 green:205.f/255.f blue:255.f/255.f alpha:1.f];
        self.tintColor = [UIColor colorWithRed:164.f/255.5 green:205.f/255.f blue:255.f/255.f alpha:1.f];
    }
    else if ([style isEqualToString:@"clear"]) {
        self.backgroundColor = [UIColor clearColor];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.tintColor = [UIColor whiteColor];
    }
    [self actualConstraints];
    [self layoutIfNeeded];
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = CGRectGetHeight(self.frame)/2;
}

- (void) actualConstraints {
    // Width constraint
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute: NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:240]];
    
    // Height constraint
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute: NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:50]];
}


@end
