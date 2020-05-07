//
//  OPPPollution.m
//  AirQuality ObjC
//
//  Created by Jimmy on 5/6/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import "OPPPollution.h"

@implementation OPPPollution

- (instancetype)initWithInt:(NSInteger)aqi {
    self = [super init];
    if (self) {
        _airQualityIndex = aqi;
    }
    return self;
}
@end

@implementation OPPPollution (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary {
    
    NSInteger aqi = [dictionary[@"aqius"]intValue];
    
    return [self initWithInt:aqi];
}
@end
