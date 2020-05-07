//
//  OPPCityAirQuality.m
//  AirQuality ObjC
//
//  Created by Jimmy on 5/6/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import "OPPCityAirQuality.h"
#import "OPPPollution.h"
#import "OPPWeather.h"

@implementation OPPCityAirQuality

- (instancetype)initWithCity:(NSString *)city
                       state:(NSString *)state
                     country:(NSString *)country
                     weather:(OPPWeather *)weather
                   pollution:(OPPPollution *)pollution {
    
    self = [super init];
    if (self) {
        _city = city;
        _state = state;
        _country = country;
        _weather = weather;
        _pollution = pollution;
    }
    return self;
}
@end

@implementation OPPCityAirQuality (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    NSString *city = dictionary[@"city"];
    NSString *state = dictionary[@"state"];
    NSString *country = dictionary[@"country"];
    
    NSDictionary *current = dictionary[@"current"];
    
    OPPWeather *weather = [[OPPWeather alloc] initWithDictionary:current[@"weather"]];
    OPPPollution *pollution = [[OPPPollution alloc] initWithDictionary:current[@"pollution"]];
    
    
    return [self initWithCity:city state:state country:country weather:weather pollution: pollution];
}
@end
