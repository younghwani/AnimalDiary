//
//  DetailViewController.h
//  AnimalDiary
//
//  Created by kimyounghwan on 2022/12/04.
//

#import <UIKit/UIKit.h>
#import "Diary.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Diary* diary;

@end

NS_ASSUME_NONNULL_END
