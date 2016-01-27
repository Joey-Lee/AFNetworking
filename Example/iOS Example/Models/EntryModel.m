//
//  EntryModel.m
//  AFNetworking Example
//
//  Created by Joey on 16/1/27.
//
//

#import "EntryModel.h"

@implementation EntryModel

- (void)setNilValueForKey:(NSString *)key {
    
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"objectId"]) {
        self.objectId = value;
    }
}

- (id)copyWithZone:(NSZone *)zone {
    EntryModel *model = [[[self class] allocWithZone:zone] init];
    model.objectId = [NSString stringWithFormat:@"%@", self.objectId];
    model.title = [NSString stringWithFormat:@"%@", self.title];
    model.urlStr = [NSString stringWithFormat:@"%@", self.urlStr];
    
    return model;
}

@end
