//
//  WHOJokeView.m
//  make_me_laugh
//
//  Created by dylan on 8/10/14.
//  Copyright (c) 2014 whoisdylan. All rights reserved.
//

#import "WHOJokeView.h"

@interface WHOJokeView ()
@property (nonatomic, strong) UIView *informationView;
@property (nonatomic, strong) UILabel *jokeLabel;
@property (nonatomic, strong) UILabel *authorLabel;
@property (nonatomic, strong) UILabel *laughLabel;
@end

@implementation WHOJokeView

- (instancetype)initWithFrame:(CGRect)frame joke:(WHOJokeModel *)joke {
    if (self = [super initWithFrame:frame]) {
        self.joke = joke;
        [self constructJokeView];
        [self constructInformationView];
    }
    return self;
}

- (void)constructJokeView {
    
}

- (void)constructInformationView {
    CGFloat bottomHeight = 60.f;
    CGRect bottomFrame = CGRectMake(0,
                                    CGRectGetHeight(self.bounds) - bottomHeight,
                                    CGRectGetWidth(self.bounds),
                                    bottomHeight);
    self.informationView = [[UIView alloc] initWithFrame:bottomFrame];
    self.informationView.backgroundColor = [UIColor whiteColor];
    self.informationView.clipsToBounds = YES;
    self.informationView.autoresizingMask = UIViewAutoresizingFlexibleWidth |
                                        UIViewAutoresizingFlexibleTopMargin;
    [self addSubview:self.informationView];

    [self constructAuthorLabel];
    [self constructLaughLabel];
}

- (void)constructAuthorLabel {
    CGFloat leftPadding = 12.f;
    CGFloat topPadding = 17.f;
    CGRect frame = CGRectMake(leftPadding,
                              topPadding,
                              floorf(CGRectGetWidth(self.informationView.frame)/2),
                              CGRectGetHeight(self.informationView.frame)-topPadding);
    self.authorLabel = [[UILabel alloc] initWithFrame:frame];
    self.authorLabel.text = self.joke.author;
    [self.informationView addSubview:self.authorLabel];
}

- (void)constructLaughLabel {
    CGFloat rightPadding = 12.f;
    CGFloat topPadding = 17.f;
    CGRect frame = CGRectMake(floorf(CGRectGetWidth(self.informationView.frame)/2), topPadding, rightPadding, CGRectGetHeight(self.informationView.frame)-topPadding);
    self.laughLabel = [[UILabel alloc] initWithFrame:frame];
    self.laughLabel.text = [NSString stringWithFormat:@"%@", @(self.joke.laughCount)];
    [self.informationView addSubview:self.laughLabel];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
