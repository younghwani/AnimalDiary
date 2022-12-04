//
//  ComposeViewController.m
//  AnimalDiary
//
//  Created by kimyounghwan on 2022/12/04.
//

#import "ComposeViewController.h"
#import "Diary.h"

@interface ComposeViewController ()

- (IBAction)close:(id)sender;
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *diaryTextView;

@end

@implementation ComposeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
    NSString* diary = self.diaryTextView.text;
    
    Diary* newDiary = [[Diary alloc] initWithContent:diary];
    [[Diary dummyDiaryList] addObject:newDiary];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
