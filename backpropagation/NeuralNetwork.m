//
//  NeuralNetwork.m
//  backpropagation
//
//  Created by Perk on 2014/01/16.
//  Copyright (c) 2014 santiware. All rights reserved.
//

#import "NeuralNetwork.h"

@implementation NeuralNetwork


@synthesize inputs;
@synthesize ihBiases;
@synthesize ihOutputs;
@synthesize ihSums;
@synthesize ihWeights;

@synthesize hoBiases;
@synthesize hoSums;
@synthesize hoWeights;
@synthesize outputs;

@synthesize oGrads;
@synthesize hGrads;

@synthesize ihPrevBiasesDelta;
@synthesize ihPrevWeightsDelta;

@synthesize hoPrevBiasesDelta;
@synthesize hoPrevWeightsDelta;

-(id)initWith:(int)numInput AndA:(int)numHidden AndB:(int)numOutput{
    
    helper = [[Utils alloc] init];
    inputs = [helper MakeArray:numInput];
    ihWeights = [helper MakeMatrix:numInput And:numHidden];
    ihSums = [helper MakeArray:numHidden];
    ihBiases = [helper MakeArray:numHidden];
    
    hoWeights = [helper MakeMatrix:numHidden And:numOutput];
    hoSums = [helper MakeArray:numOutput];
    hoBiases = [helper MakeArray:numOutput];
    outputs = [helper MakeArray:numOutput];
    
    oGrads = [helper MakeArray:numOutput];
    hGrads = [helper MakeArray:numHidden];
    
    ihPrevWeightsDelta = [helper MakeMatrix:numInput And:numHidden];
    ihPrevBiasesDelta = [helper MakeArray:numHidden];
    
    hoPrevWeightsDelta = [helper MakeMatrix:numHidden And:numOutput];
    hoPrevWeightsDelta = [helper MakeArray:numOutput];
    
    return self;
}

-(double)SigmoidFunction:(double)x{
    if (x < -45.0) {
        return 0.0;
    }else if (x > 45.0){
        return 1.0;
    }else{
        return 1.0/(1.0 + exp(-x));
    }
}
-(double)HyperTanFunction:(double)x{
    if (x < -10.0) {
        return -1.0;
    }else if (x > 10.0){
        return 1.0;
    }else{
       return tanh(x);
    }
}
-(NSMutableArray *)ComputeOutputs:(NSMutableArray *)xValues{

}

@end
