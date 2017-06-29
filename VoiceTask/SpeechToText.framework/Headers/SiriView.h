//
//  SiriView.h
//  VoiceTask
//
//  Created by Sterling Mac Mini on 28/06/17.
//  Copyright © 2017 Sterling Software. All rights reserved.
//

#import "SCSiriWaveformView.h"
#import <Speech/Speech.h>
#import <AVFoundation/AVFoundation.h>

@protocol SiriViewDelegate
-(void)receiveSpeechText:(NSString*)speechtext viewState:(BOOL)state;


@end


@interface SiriView : UIView
@property (nonatomic,strong)UIButton *btnDone;
@property (nonatomic,strong)SFSpeechRecognizer *speech;
@property (nonatomic,strong)AVAudioEngine *audioEngine;
@property (nonatomic,strong)SFSpeechRecognitionTask *recognitionTask;
@property (nonatomic,strong)SFSpeechAudioBufferRecognitionRequest *recognitionRequest;
@property (nonatomic,strong)AVAudioInputNode *inputNode;
@property (nonatomic,strong)AVAudioSession *audioSession;
@property BOOL isSelected;
@property (nonatomic,strong)NSString *getString;
@property (nonatomic, strong) AVAudioRecorder *recorder;
@property (nonatomic,strong)SCSiriWaveformView *waveView;
@property(nonatomic,weak)id<SiriViewDelegate> delegate;
- (void)doneAction:(id)sender;
@end
