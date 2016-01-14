//
//  TACRuntimeUtilitiesTests.m
//  TACKitExample
//
//  Created by masato_arai on 2015/11/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TACRuntimeUtilities.h"

@interface AObject : NSObject
- (void)print;
@end

@implementation AObject
- (void)print {
    NSLog(@"Print A, My Name is %@", NSStringFromClass([self class]));
}
@end

@interface BObject : NSObject
- (void)print;
@end

@implementation BObject
- (void)print {
    NSLog(@"Print B, My Name is %@", NSStringFromClass([self class]));
}
@end


@interface TACRuntimeUtilitiesTests : XCTestCase

@end

@implementation TACRuntimeUtilitiesTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

/// インスタンス生成後に、Method Swizzlingする場合
- (void)testSwizzle_pattern1 {
    AObject *a = [AObject new];
    BObject *b = [BObject new];
    
    [a print]; // "Print A, My Name is AObject"
    [b print]; // "Print B, My Name is BObject"
    
    [TACRuntimeUtilities swizzleImplementations:[a class] selector:@selector(print) class:[b class] selector:@selector(print)]; // Swizzling
    
    [a print]; // "Print B, My Name is AObject"
    [b print]; // "Print A, My Name is BObject"
    
    //
    [TACRuntimeUtilities swizzleImplementations:[a class] selector:@selector(print) class:[b class] selector:@selector(print)]; // Restore
}

/// インスタンス生成前に、Method Swizzlingする場合
- (void)testSwizzle_pattern2 {
    [TACRuntimeUtilities swizzleImplementations:[AObject class] selector:@selector(print) class:[BObject class] selector:@selector(print)]; // Swizzling
    
    AObject *a = [AObject new];
    BObject *b = [BObject new];
    
    [a print]; // "Print B, My Name is AObject"
    [b print]; // "Print A, My Name is BObject"
    
    [TACRuntimeUtilities swizzleImplementations:[AObject class] selector:@selector(print) class:[BObject class] selector:@selector(print)]; // Restore
}

@end
