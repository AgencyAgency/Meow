//
//  AAViewController.m
//  Meow
//
//  Created by Kyle Oba on 10/15/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface AAViewController ()

@end

@implementation AAViewController

- (IBAction)kitten1Pressed:(UIButton *)sender
{
    [self playMeow:@"meow1"];
}

- (void)playMeow:(NSString *)meow
{
    SystemSoundID soundID;
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:meow ofType:@"caf"];
    NSURL *soundUrl = [NSURL fileURLWithPath:soundPath];
    
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundUrl, &soundID);
    AudioServicesPlaySystemSound(soundID);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
