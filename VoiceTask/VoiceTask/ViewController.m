//
//  ViewController.m
//  VoiceTask
//
//  Created by Sterling Software on 21/11/16.
//  Copyright © 2016 Sterling Software. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()<SiriViewDelegate>
{
}

@end
@implementation ViewController
@synthesize txtInput,waveFormView;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    waveFormView=[[SiriView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-100, self.view.frame.size.width, 100)];
    waveFormView.delegate =self;
    [self.view addSubview:waveFormView];
    
    waveFormView.hidden=YES;
    waveFormView.waveView.backgroundColor=[UIColor groupTableViewBackgroundColor];
    [waveFormView.btnDone setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];

    
}
-(void)receiveSpeechText:(NSString *)speechtext viewState:(BOOL)state
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.txtInput.text=speechtext;
        waveFormView.hidden=state;
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)action_Start:(id)sender
{
    waveFormView.hidden=NO;
    [waveFormView doneAction:0];
}



@end
