#import "SineWaveDemo3ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface SineWaveDemo3ViewController () {
    double renderPhase;
    AudioUnit _ioUnit;
    double frequency;
}
@property (weak, nonatomic) IBOutlet UILabel *frequencylabel;

@end

@implementation SineWaveDemo3ViewController

- (void)dealloc {
    _ioUnit = NULL;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    frequency = 440;
    [self initAudioUnit];
   
}
- (IBAction)playClick:(id)sender {
    AudioOutputUnitStart(_ioUnit);
}
- (IBAction)stopClick:(id)sender {
    AudioOutputUnitStop(_ioUnit);
}
- (IBAction)sliderChange:(UISlider *)sender {
    int value = sender.value;
    self.frequencylabel.text = [NSString stringWithFormat:@"%d Hz",value];
    frequency = value;
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
    callBack.inputProc = t1PlayCallBack;
    callBack.inputProcRefCon = (__bridge void *)self;;
    status = AudioUnitSetProperty(_ioUnit, kAudioUnitProperty_SetRenderCallback, kAudioUnitScope_Output, OUTPUT_BUS, &callBack, sizeof(callBack));
}

OSStatus t1PlayCallBack(    void *                            inRefCon,
                      AudioUnitRenderActionFlags *    ioActionFlags,
                      const AudioTimeStamp *            inTimeStamp,
                      UInt32                            inBusNumber,
                      UInt32                            inNumberFrames,
                      AudioBufferList * __nullable    ioData) {
    
    SineWaveDemo3ViewController *mydemo = (__bridge SineWaveDemo3ViewController *)inRefCon;

    double currentPhase = mydemo->renderPhase;
    
    Float32 * outputBuffer = (Float32 *)ioData->mBuffers[0].mData;
    const double frequency = mydemo->frequency;
    const double phaseStep = (frequency / 44100.) * (M_PI * 2.);
    for(int i = 0; i < inNumberFrames; i++) {
        outputBuffer[i] = sin(currentPhase);
        currentPhase += phaseStep;
    }
    for(int i = 1; i < ioData->mNumberBuffers; i++) {
        memcpy(ioData->mBuffers[i].mData, outputBuffer, ioData->mBuffers[i].mDataByteSize);
    }
    mydemo->renderPhase = currentPhase;
    return noErr;
}

@end