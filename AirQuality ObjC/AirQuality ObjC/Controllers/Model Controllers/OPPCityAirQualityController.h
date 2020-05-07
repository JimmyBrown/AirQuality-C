//
//  OPPCityAirQualityController.h
//  AirQuality ObjC
//
//  Created by Jimmy on 5/6/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OPPCityAirQuality.h"

NS_ASSUME_NONNULL_BEGIN

@interface OPPCityAirQualityController : NSObject

+ (void)fetchSupportedCountries:(void (^)(NSArray<NSString *> *_Nullable))completion;

+ (void)fetchSupportedStatesInCountry:(NSString *)country
                           completion:(void (^)(NSArray<NSString *> *_Nullable))completion;

+ (void)fetchSupportedCitiesInState:(NSString *)state
                            country:(NSString *)country
                         completion:(void (^)(NSArray<NSString *> *_Nullable))completion;

+ (void)fetchDataForCity:(NSString *)city
                  state:(NSString *)state
                country:(NSString *)country
             completion:(void (^) (OPPCityAirQuality *_Nullable))completion;

@end

NS_ASSUME_NONNULL_END

// test test test test test
