//
//  WHOJokeView.h
//  make_me_laugh
//
//  Created by dylan on 8/10/14.
//  Copyright (c) 2014 whoisdylan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WHOJokeModel.h"

@interface WHOJokeView : UIView

@property (nonatomic, strong) WHOJokeModel *joke;

- (instancetype)initWithFrame:(CGRect)frame joke:(WHOJokeModel *)joke;

@end
