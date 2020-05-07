//
//  OPPPollution.h
//  AirQuality ObjC
//
//  Created by Jimmy on 5/6/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OPPPollution : NSObject

@property (nonatomic, readonly) NSInteger airQualityIndex;

// MARK: - Property Initilizer
- (instancetype)initWithInt:(NSInteger) aqi;

@end

@interface OPPPollution (JSONConvertable)

// MARK: - JSON Dictionary
-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
