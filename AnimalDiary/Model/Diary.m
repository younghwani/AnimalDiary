//
//  Diary.m
//  AnimalDiary
//
//  Created by kimyounghwan on 2022/11/28.
//

#import "Diary.h"

@implementation Diary

- (instancetype)initWithContent:(NSString*)content {
    self = [super init];
    if (self != nil) {
        _content = content;
        _insertDate = [NSDate date];
    }
    return self;
}

+ (NSArray*)dummyDiaryList {
    Diary* diary1 = [[Diary alloc] initWithContent:@"말말말말말"];
    Diary* diary2 = [[Diary alloc] initWithContent:@"소소소소소"];
    Diary* diary3 = [[Diary alloc] initWithContent:@"개개개개개"];
    
    return [NSArray arrayWithObjects:diary1, diary2, diary3, nil];
}

@end
