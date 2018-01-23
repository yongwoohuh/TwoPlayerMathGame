//
//  MathGame.m
//  TwoPlayerMathGame
//
//  Created by Yongwoo Huh on 2018-01-22.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "MathGame.h"

@interface MathGame ()
@property (nonatomic, assign) NSInteger number1;
@property (nonatomic, assign) NSInteger number2;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) Player *currentPlayer;
@end

@implementation MathGame
- (instancetype)init
{
    self = [super init];
    if (self) {
        _number1 = arc4random_uniform(20) + 1;
        _number2 = arc4random_uniform(20) + 1;
        _answer = _number1 + _number2;
        _player1 = [[Player alloc] init];
        _player2 = [[Player alloc] init];
        _currentPlayerString = @"Player 1";
        _currentPlayer = _player1;
        
        NSLog(@"answer is : %ld", _answer);
    }
    return self;
}
- (NSString *)startGame
{
    return [NSString stringWithFormat:@"%ld + %ld : ", self.number1, self.number2];
}

- (NSString *)makeNewQuestion
{
    self.number1 = arc4random_uniform(20) + 1;
    self.number2 = arc4random_uniform(20) + 1;
    self.answer = self.number1 + self.number2;
    NSLog(@"answer is : %ld", self.answer);
    return [NSString stringWithFormat:@"%ld + %ld : ", self.number1, self.number2];
}

- (NSString *)changeCurrentPlayer
{
    if ([self.currentPlayerString isEqualToString:@"Player 1"]) {
        self.currentPlayer = self.player2;
        self.currentPlayerString = @"Player 2";
        return self.currentPlayerString;
    } else {
        self.currentPlayer = self.player1;
        self.currentPlayerString = @"Player 1";
        return self.currentPlayerString;
    }
}

- (BOOL)checkAnswer:(NSInteger)answer
{
    if (self.answer == answer) {
        self.currentPlayer.score += 1;
        NSLog(@"score: %ld",self.currentPlayer.score);
    } else {
        self.currentPlayer.lives -= 1;
    }
    
    if (self.currentPlayer.lives == 0)
    {
        NSLog(@"quit app");
        return YES;
    } else {
        [self changeCurrentPlayer];
        return NO;
    }
}
@end
