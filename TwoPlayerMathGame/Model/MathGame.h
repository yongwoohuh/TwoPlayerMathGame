//
//  MathGame.h
//  TwoPlayerMathGame
//
//  Created by Yongwoo Huh on 2018-01-22.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface MathGame : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic, copy) NSString *currentPlayerString;

- (NSString *)startGame;
- (BOOL)checkAnswer:(NSInteger)answer;
- (NSString *)makeNewQuestion;
- (NSString *)changeCurrentPlayer;

@end
