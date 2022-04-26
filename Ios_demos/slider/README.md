# Slider Demo

This Demo introduces new widget called Slider. The Slider is nothing but a horizontal bar which can be used to adjust values. For example it can be used to adjust volume, frequency etc.

## Code

```
#import "SliderDemoViewController.h"

@interface SliderDemoViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SliderDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)sliderchange:(UISlider *)sender {
    int value = sender.value;
    self.label.text = [NSString stringWithFormat:@"%d",value];
}

@end
```

## Screenshot

Following are few screenshots of this demo.

![1]()
