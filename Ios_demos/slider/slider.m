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