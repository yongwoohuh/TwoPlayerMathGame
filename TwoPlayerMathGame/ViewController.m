//
//  ViewController.m
//  TwoPlayerMathGame
//
//  Created by Yongwoo Huh on 2018-01-22.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "ViewController.h"
#import "MathGame.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *mathProblem;
@property (weak, nonatomic) IBOutlet UILabel *answer;
@property (weak, nonatomic) IBOutlet UILabel *p1_score;
@property (weak, nonatomic) IBOutlet UILabel *p2_score;
@property (nonatomic, strong) MathGame *mathgame;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mathgame = [[MathGame alloc] init];
    self.mathProblem.text = [NSString stringWithFormat:@"%@: %@", self.mathgame.currentPlayerString, [self.mathgame startGame]];
    self.p1_score.text = [NSString stringWithFormat:@"%ld", self.mathgame.player1.score];
    self.p2_score.text = [NSString stringWithFormat:@"%ld", self.mathgame.player2.score];
    self.answer.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inputNum_1:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"1"];
}
- (IBAction)inputNum_2:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"2"];
}
- (IBAction)inputNum_3:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"3"];
}
- (IBAction)inputNum_4:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"4"];
}
- (IBAction)inputNum_5:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"5"];
}
- (IBAction)inputNum_6:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"6"];
}
- (IBAction)inputNum_7:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"7"];
}
- (IBAction)inputNum_8:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"8"];
}
- (IBAction)inputNum_9:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"9"];
}
- (IBAction)inputNum_0:(UIButton *)sender
{
    self.answer.text = [self.answer.text stringByAppendingString:@"0"];
}
- (IBAction)enter:(UIButton *)sender
{
    [self.mathgame checkAnswer:[self.answer.text integerValue]];
    [self updateView];
}
- (void)updateView
{
    self.mathProblem.text = [NSString stringWithFormat:@"%@: %@", self.mathgame.currentPlayerString, self.mathgame.makeNewQuestion];;
    self.answer.text = @"";
    self.p1_score.text = [NSString stringWithFormat:@"%ld", self.mathgame.player1.score];
    self.p2_score.text = [NSString stringWithFormat:@"%ld", self.mathgame.player2.score];
}

@end