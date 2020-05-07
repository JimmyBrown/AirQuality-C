//
//  OPPCityAirQuality.h
//  AirQuality ObjC
//
//  Created by Jimmy on 5/6/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OPPWeather.h"
#import "OPPPollution.h"

NS_ASSUME_NONNULL_BEGIN

@interface OPPCityAirQuality : NSObject

@property (nonatomic, copy, readonly) NSString *city;
@property (nonatomic, copy, readonly) NSString *state;
@property (nonatomic, copy, readonly) NSString *country;
@property (nonatomic, copy, readonly) OPPWeather *weather;
@property (nonatomic, copy, readonly) OPPPollution *pollution;

// MARK: - Property Initilizer
- (instancetype)initWithCity:(NSString *)city state:(NSString *)state country:(NSString *)country weather:(OPPWeather *)weather pollution:(OPPPollution *)pollution;
@end

@interface OPPCityAirQuality (JSONConvertable)

// MARK: - JSON Dictionary
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end

NS_ASSUME_NONNULL_END
