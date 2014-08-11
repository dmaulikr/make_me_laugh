//
//  WHOJokeModel.m
//  make_me_laugh
//
//  Created by dylan on 8/10/14.
//  Copyright (c) 2014 whoisdylan. All rights reserved.
//

#import "WHOJokeModel.h"

@implementation WHOJokeModel

- (instancetype) initWithJokeText:(NSString *)jokeText author:(NSString *)author laughCount:(NSInteger)laughCount mehCount:(NSInteger)mehCount {
    if (self = [super init]) {
        self.jokeText = jokeText;
        self.author = author;
        self.laughCount = laughCount;
        self.mehCount = mehCount;
    }
    return self;
}

@end
