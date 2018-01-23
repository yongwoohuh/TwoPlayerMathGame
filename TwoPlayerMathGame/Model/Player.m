//
//  Player.m
//  TwoPlayerMathGame
//
//  Created by Yongwoo Huh on 2018-01-22.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "Player.h"


@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _lives = 3;
        _score = 0;
    }
    return self;
}

@end
