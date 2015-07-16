//
//  TACURL.h
//  MobileMessenger
//
//  Created by companion_ios on 20150427.
//  Copyright (c) 2015年 companion_ios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TACURL : NSObject

- (void)openURLLog:(NSURL *)url;
- (NSDictionary *)dictionaryFromQueryString:(NSString *)query;

@end
