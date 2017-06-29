//
//  ViewController.h
//  VoiceTask
//
//  Created by Sterling Software on 21/11/16.
//  Copyright © 2016 Sterling Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpeechToText/SpeechToText.h>
@interface ViewController : UIViewController
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *txtInput;
- (IBAction)action_Start:(id)sender;
@property (strong, nonatomic) SiriView *waveFormView;


@end

