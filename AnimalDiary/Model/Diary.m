//
//  Diary.m
//  AnimalDiary
//
//  Created by kimyounghwan on 2022/11/28.
//

#import "Diary.h"

@implementation Diary
static NSMutableArray* _dummyDiaryList = nil;

- (instancetype)initWithContent:(NSString*)content {
    self = [super init];
    if (self != nil) {
        _content = content;
        _insertDate = [NSDate date];
    }
    return self;
}

+ (NSMutableArray*)dummyDiaryList {
    if (_dummyDiaryList == nil) {
        Diary* diary1 = [[Diary alloc] initWithContent:@"말말말말말"];
        Diary* diary2 = [[Diary alloc] initWithContent:@"소소소소소"];
        Diary* diary3 = [[Diary alloc] initWithContent:@"개개개개개"];
        
        _dummyDiaryList =[NSMutableArray arrayWithObjects:diary1, diary2, diary3, nil];
    }
    
    return _dummyDiaryList;
}

@end
