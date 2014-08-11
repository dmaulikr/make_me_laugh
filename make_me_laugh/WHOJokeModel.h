//
//  WHOJokeModel.h
//  make_me_laugh
//
//  Created by dylan on 8/10/14.
//  Copyright (c) 2014 whoisdylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WHOJokeModel : NSObject

@property (nonatomic, strong) NSString *jokeText;
@property (nonatomic, strong) NSString *author;
@property (nonatomic) NSInteger laughCount;
@property (nonatomic) NSInteger mehCount;

- (instancetype) initWithJokeText:(NSString *)jokeText author:(NSString *)author laughCount:(NSInteger)laughCount mehCount:(NSInteger)mehCount;

@end
