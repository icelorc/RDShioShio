//
//  animationViewController.m
//  ThinkGearTouch
//
//  Created by Huang Ching-Chieh on 8/22/15.
//
//

#import "animationViewController.h"

@interface animationViewController () {
}

@end

@implementation animationViewController

@synthesize myview = _myview;
@synthesize theAudio = _theAudio;
@synthesize headButton = _headButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    self.myview.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 350, 600)];
    imageView.image = [UIImage imageNamed:@"sexy.png"];
    
    self.headButton = [[UIButton alloc] initWithFrame:CGRectMake(200, 100, 70, 50)];
    self.headButton.backgroundColor = [UIColor clearColor];
    [self.headButton addTarget:self action:@selector(headAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.handButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 200, 50, 50)];
    self.handButton.backgroundColor = [UIColor clearColor];
    [self.handButton addTarget:self action:@selector(handAction) forControlEvents:UIControlEventTouchUpInside];
    
    self.bellyButton = [[UIButton alloc] initWithFrame:CGRectMake(130, 350, 130, 50)];
    self.bellyButton.backgroundColor = [UIColor clearColor];
    [self.bellyButton addTarget:self action:@selector(bellyAction) forControlEvents:UIControlEventTouchUpInside];
    
    self.legButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 430, 200, 120)];
    self.legButton.backgroundColor = [UIColor clearColor];
    [self.legButton addTarget:self action:@selector(legAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.myview];
    [self.myview addSubview:imageView];
    [self.myview addSubview:self.headButton];
    [self.myview addSubview:self.handButton];
    [self.myview addSubview:self.bellyButton];
    [self.myview addSubview:self.legButton];
    
    [self.myview release];
 
}

- (void)buttonsLock {
    self.headButton.enabled = false;
    self.handButton.enabled = false;
    self.legButton.enabled = false;
    self.bellyButton.enabled = false;
}

- (void)headAction {
    NSLog(@"Head");
    
    [self buttonsLock];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"head" ofType:@"mp3"];
    self.theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    self.theAudio.delegate = self;
    [self.theAudio play];
    
}

- (void)handAction {
    [self buttonsLock];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"hand" ofType:@"mp3"];
    self.theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    self.theAudio.delegate = self;
    [self.theAudio play];
    [self.theAudio release];
}

- (void)bellyAction {
    [self buttonsLock];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"belly" ofType:@"mp3"];
    self.theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    self.theAudio.delegate = self;
    [self.theAudio play];
    [self.theAudio release];
}

- (void)legAction {
    [self buttonsLock];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"leg" ofType:@"mp3"];
    self.theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    self.theAudio.delegate = self;
    [self.theAudio play];
}

- (void)viewDidAppear:(BOOL)animated {

    NSString *path = [[NSBundle mainBundle] pathForResource:@"New Recording 10" ofType:@"mp3"];
    self.theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    [self.theAudio play];
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
    NSLog(@"播放完畢");
    self.headButton.enabled = true;
    self.handButton.enabled = true;
    self.legButton.enabled = true;
    self.bellyButton.enabled = true;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) dealloc {
    

    [super dealloc];
}

@end
