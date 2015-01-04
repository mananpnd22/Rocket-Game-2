//
//  Level2GameOver.m
//  GameTutorial
//
//  Created by MANAN PANDYA on 2014-11-11.
//  Copyright (c) 2014 MEGHA GULATI. All rights reserved.
//

#import "Level2GameOver.h"
#import "MyScene.h"
#import "Level2Scene.h"
#import "GameOverScene.h"

@implementation Level2GameOver


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        // 1
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        // 2
        
        extern int counter;
        // self.label.text = [NSString stringWithFormat:@"Game Over: -> %i",count];
        
        if (counter > 10) {
            SKLabelNode *labl = [SKLabelNode labelNodeWithFontNamed:@"chalkduster"];
            labl.text = [NSString stringWithFormat:@"You Won: -> %i",counter];
            labl.fontSize = 40;
            labl.fontColor = [SKColor blackColor];
            labl.position = CGPointMake(self.size.width/2, self.size.height/2);
            [self addChild:labl];
            
            
        }
        
        else
        {
            SKLabelNode *labl = [SKLabelNode labelNodeWithFontNamed:@"chalkduster"];
            labl.text = [NSString stringWithFormat:@"Game Over: -> %i",counter];
            labl.fontSize = 40;
            labl.fontColor = [SKColor blackColor];
            labl.position = CGPointMake(self.size.width/2, self.size.height/2);
            [self addChild:labl];
            
        }
        
        //        NSString * message;
        //        message = @"Game Over";
        //        // 3
        //        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        //        label.text = message;
        //        label.fontSize = 40;
        //        label.fontColor = [SKColor blackColor];
        //        label.position = CGPointMake(self.size.width/2, self.size.height/2);
        //        [self addChild:label];
        
        
        NSString * retrymessage;
        retrymessage = @"Replay Game";
        SKLabelNode *retryButton = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        retryButton.text = retrymessage;
        retryButton.fontColor = [SKColor blackColor];
        retryButton.position = CGPointMake(self.size.width/2, 50);
        retryButton.name = @"retry";
        [retryButton setScale:.5];
        
        [self addChild:retryButton];

        
        
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if ([node.name isEqualToString:@"retry"]) {
        SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
        
        MyScene * scene = [MyScene sceneWithSize:self.view.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        [self.view presentScene:scene transition: reveal];
        
    }
    
    
}


@end
