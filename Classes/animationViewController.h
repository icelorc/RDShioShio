//
//  animationViewController.h
//  ThinkGearTouch
//
//  Created by Huang Ching-Chieh on 8/22/15.
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface animationViewController : UIViewController <AVAudioPlayerDelegate>

@property(nonatomic, retain) UIView *myview;
@property(nonatomic, retain) AVAudioPlayer *theAudio;
@property(nonatomic, retain) UIButton *headButton;
@property(nonatomic, retain) UIButton *handButton;
@property(nonatomic, retain) UIButton *bellyButton;
@property(nonatomic, retain) UIButton *legButton;


- (void)headAction;
- (void)handAction;
- (void)bellyAction;
- (void)legAction;


@end
