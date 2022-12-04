//
//  Diary.h
//  AnimalDiary
//
//  Created by kimyounghwan on 2022/11/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Diary : NSObject

@property (strong, nonatomic) NSString* content;
@property (strong, nonatomic) NSDate* insertDate;

- (instancetype)initWithContent:(NSString*)content;

// + (NSMutableArray*)dummyDiaryList;
@property (strong, nonatomic, readonly, class) NSMutableArray* dummyDiaryList;

@end

NS_ASSUME_NONNULL_END
