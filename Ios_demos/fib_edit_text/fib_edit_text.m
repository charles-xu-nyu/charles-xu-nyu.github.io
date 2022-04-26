#import "FibonacciViewController.h"

@interface FibonacciViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *enterTF;

@end

@implementation FibonacciViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)generateClick:(id)sender {
    if ([self.enterTF.text intValue] <= 1) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Erron" message:@"Not a valid value of N" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *done = [UIAlertAction actionWithTitle:@"OK" style:(UIAlertActionStyleCancel) handler:nil];
        [alert addAction:done];
        [self presentViewController:alert animated:YES completion:nil];
        self.enterTF.text = nil;
    } else {
        NSArray *array = [self getFibonacciNum:[self.enterTF.text intValue]];
        NSMutableString *mutStr = [NSMutableString string];
        [mutStr appendString:@"["];
        for (NSString *str in array) {
            [mutStr appendFormat:@"%@,",str];
        }
        [mutStr deleteCharactersInRange:NSMakeRange(mutStr.length - 1, 1 )];
        [mutStr appendString:@"]"];
        self.textView.text = mutStr;
        self.textView.textAlignment = NSTextAlignmentLeft;
    }

    
}

- (NSArray *)getFibonacciNum:(int)value {
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < value; i ++) {
        if (array.count == 0 || array.count == 1) {
            [array addObject:@"1"];
            continue;;
        }
        NSInteger num1 = [array.lastObject integerValue];
        NSInteger num2 = [array[array.count - 2] integerValue];
        [array addObject:[NSString stringWithFormat:@"%ld",num1 + num2]];
    }
    return array;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
