//
//  NeuralNetwork.h
//  backpropagation
//
//  Created by Perk on 2014/01/16.
//  Copyright (c) 2014 santiware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utils.h"

@interface NeuralNetwork : NSObject{
    NSInteger numInput;
    NSInteger numHidden;
    NSInteger numOutput;
    Utils *helper;
    
}

@property NSMutableArray *inputs;
@property NSMutableArray *ihWeights;
@property NSMutableArray *ihSums;
@property NSMutableArray *ihBiases;
@property NSMutableArray *ihOutputs;

@property NSMutableArray *hoWeights;
@property NSMutableArray *hoSums;
@property NSMutableArray *hoBiases;
@property NSMutableArray *outputs;

@property NSMutableArray *oGrads;
@property NSMutableArray *hGrads;

@property NSMutableArray *ihPrevWeightsDelta;
@property NSMutableArray *ihPrevBiasesDelta;
@property NSMutableArray *hoPrevWeightsDelta;
@property NSMutableArray *hoPrevBiasesDelta;

-(id) initWith: (int) numInput AndA: (int) numHidden AndB: (int) numOutput;
-(void) UpdateWeights: (NSMutableArray *) tValues AndB: (double) eta AndC: (double) alpha;
-(void) SetWeights: (int) weigts;
-(NSMutableArray *) GetWeights;
-(NSMutableArray *) ComputeOutputs: (NSMutableArray *) xValues;
-(double) SigmoidFunction: (double) x;
-(double) HyperTanFunction: (double) x;

@end
