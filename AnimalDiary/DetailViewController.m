//
//  DetailViewController.m
//  AnimalDiary
//
//  Created by kimyounghwan on 2022/12/04.
//

#import "DetailViewController.h"

@interface DetailViewController () <UITableViewDataSource>

@property (strong, nonatomic) NSDateFormatter* formatter;

@end

@implementation DetailViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"diaryCell" forIndexPath:indexPath];
        
        cell.textLabel.text = self.diary.content;
        
        return cell;
    } else if (indexPath.row == 1) {
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"dateCell" forIndexPath:indexPath];
        
        cell.textLabel.text = [self.formatter stringFromDate: self.diary.insertDate];
        
        return cell;
    }
    
    return [[UITableViewCell alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.formatter = [[NSDateFormatter alloc] init];
    self.formatter.dateStyle = NSDateFormatterLongStyle;
    self.formatter.timeStyle = NSDateFormatterMediumStyle;
    self.formatter.locale = [NSLocale localeWithLocaleIdentifier:@"Ko_kr"];
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
