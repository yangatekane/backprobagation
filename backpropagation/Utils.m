//
//  Utils.m
//  backpropagation
//
//  Created by Perk on 2014/01/16.
//  Copyright (c) 2014 santiware. All rights reserved.
//

#import "Utils.h"

@implementation Utils
-(NSMutableArray *)MakeMatrix:(int)rows And:(int)cols{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int i=0; i < rows; i++) {
        NSMutableArray *column = [[NSMutableArray alloc] init];
        for (int j = 0; j < cols; j++) {
            [column insertObject:[NSNumber numberWithDouble:0.0] atIndex:j];
        }
        [result insertObject:column atIndex:i];
    }
    return result;
}
-(NSMutableArray *)MakeArray:(int)rows{
    NSMutableArray *rws = [[NSMutableArray alloc] init];
    for (int j = 0; j < rows; j++) {
        [rws insertObject:[NSNumber numberWithDouble:0.0] atIndex:j];
    }
    return rws;
}
@end
