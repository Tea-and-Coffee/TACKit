//
//  TACURL.h
//  MobileMessenger
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TACURL : NSObject

- (void)openURLLog:(NSURL *)url;
- (NSDictionary *)dictionaryFromQueryString:(NSString *)query;

@end
