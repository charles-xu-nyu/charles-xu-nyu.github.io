# Sine Wave Demo 4

This is demo builds on top of `Sine Wave Demo - 3` which supported changing frequency of sine wave using Slider. In this demo a new Slider is added to adjust the gain.

## Code

```
#import "SineWaveDemo4ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface SineWaveDemo4ViewController ()
{
    double renderPhase;
    AudioUnit _ioUnit;
    double frequency;
    double gain;
}
@property (weak, nonatomic) IBOutlet UILabel *freqLabel;
@property (weak, nonatomic) IBOutlet UILabel *ganinLabel;

@end

@implementation SineWaveDemo4ViewController
- (IBAction)playBtnClick:(id)sender {
    AudioOutputUnitStart(_ioUnit);
}
- (IBAction)stopBtnClick:(id)sender {
    AudioOutputUnitStop(_ioUnit);
}
- (IBAction)freqSlider:(UISlider *)sender {
    int value = sender.value;
    self.freqLabel.text = [NSString stringWithFormat:@"Frequency: %d Hz",value];
    frequency = value;
}
- (IBAction)gainSlider:(UISlider *)sender {
    int value = sender.value;
    self.ganinLabel.text = [NSString stringWithFormat:@"Gain: %d",value];
    gain = value;
}

- (void)dealloc {
    _ioUnit = NULL;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    frequency = 440;
    gain = 1;
    [self initAudioUnit];
}

- (void)initAudioUnit {
    
    AudioComponentDescription acd;
    acd.componentType = kAudioUnitType_Output;
    acd.componentSubType = kAudioUnitSubType_RemoteIO;
    acd.componentManufacturer = kAudioUnitManufacturer_Apple;
    acd.componentFlags = 0;
    acd.componentFlagsMask = 0;
    
    AudioComponent ioUnitRef = AudioComponentFindNext(NULL, &acd);
    OSStatus status = AudioComponentInstanceNew(ioUnitRef, &_ioUnit);
    
    UInt32   OUTPUT_BUS = 0;
    UInt32 flag = 1;
    if (flag) {
        status = AudioUnitSetProperty(_ioUnit, kAudioOutputUnitProperty_EnableIO, kAudioUnitScope_Output, OUTPUT_BUS, &flag, sizeof(flag));
    }
    
    AudioStreamBasicDescription asbd;
    asbd.mSampleRate = 44100;
    asbd.mFormatID         = kAudioFormatLinearPCM;
    asbd.mFormatFlags      = kLinearPCMFormatFlagIsSignedInteger;
    asbd.mFramesPerPacket  = 1; 
    asbd.mChannelsPerFrame = 1; 
    asbd.mBytesPerFrame    = sizeof(Float32); 
    asbd.mBytesPerPacket   = sizeof(Float32); 
    asbd.mBitsPerChannel   = sizeof(Float32) * 8; 
    
    UInt32   AOUTPUT_BUS = 0;
    AudioUnitSetProperty(_ioUnit, kAudioUnitProperty_StreamFormat, kAudioUnitScope_Input, AOUTPUT_BUS, &asbd, sizeof(asbd));
    
    AURenderCallbackStruct callBack;
    callBack.inputProc = t2PlayCallBack;
    callBack.inputProcRefCon = (__bridge void *)self;;
    status = AudioUnitSetProperty(_ioUnit, kAudioUnitProperty_SetRenderCallback, kAudioUnitScope_Output, OUTPUT_BUS, &callBack, sizeof(callBack));
}

OSStatus t2PlayCallBack(    void *                            inRefCon,
                      AudioUnitRenderActionFlags *    ioActionFlags,
                      const AudioTimeStamp *            inTimeStamp,
                      UInt32                            inBusNumber,
                      UInt32                            inNumberFrames,
                      AudioBufferList * __nullable    ioData) {
    
    SineWaveDemo4ViewController *mydemo = (__bridge SineWaveDemo4ViewController *)inRefCon;

    double currentPhase = mydemo->renderPhase;
    
    Float32 * outputBuffer = (Float32 *)ioData->mBuffers[0].mData;
    const double frequency = mydemo->frequency;
    const double phaseStep = (frequency / 44100.) * (M_PI * 2.);
    for(int i = 0; i < inNumberFrames; i++) {
        outputBuffer[i] = (mydemo->gain *0.000001 * sin(currentPhase));
        currentPhase += phaseStep;
    }
    for(int i = 1; i < ioData->mNumberBuffers; i++) {
        memcpy(ioData->mBuffers[i].mData, outputBuffer, ioData->mBuffers[i].mDataByteSize);
    }
    mydemo->renderPhase = currentPhase;
    return noErr;
}
@end

```

## Screenshot

Following are the screenshots of this demo’s interface.

