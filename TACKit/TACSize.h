//
//  TACSize.h
//  TACKit
//
//  Created by masato_arai on 2015/04/21.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

// Margin
static CGFloat const MARGIN         = 8.0;
static CGFloat const FULL_MARGIN    = MARGIN;
static CGFloat const HALF_MARGIN    = MARGIN / 2;
static CGFloat const QUARTER_MARGIN = MARGIN / 4;
static CGFloat const EIGHTH_MARGIN  = MARGIN / 8;


// UIStatusBar
OBJC_EXPORT CGFloat statusBarHeight();
OBJC_EXPORT CGFloat statusBarPortraitHeight();
OBJC_EXPORT CGFloat statusBarLandscapeHeight();

// UIStatusBar (InCall)
OBJC_EXPORT CGFloat statusBarInCallHeight();
OBJC_EXPORT CGFloat statusBarInCallPortraitHeight();
OBJC_EXPORT CGFloat statusBarInCallLandscapeHeight();

// UINavigationBar
OBJC_EXPORT CGFloat navigationBarHeight();
OBJC_EXPORT CGFloat navigationBarPortraitHeight();
OBJC_EXPORT CGFloat navigationBarLandscapeHeight();

// UINavigationBar (Prompt)
OBJC_EXPORT CGFloat navigationBarPromptHeight();
OBJC_EXPORT CGFloat navigationBarPromptPortraitHeight();
OBJC_EXPORT CGFloat navigationBarPromptLandscapeHeight();

// UIToolbar
OBJC_EXPORT CGFloat toolbarHeight();
OBJC_EXPORT CGFloat toolbarPortraitHeight();
OBJC_EXPORT CGFloat toolbarLandscapeHeight();

// UIToolbar (Custom)
OBJC_EXPORT CGFloat customToolbarHeight();

// UITabBar
OBJC_EXPORT CGFloat tabBarHeight();


// UITableViewCell
static CGFloat const TABLEVIEWCELL_MAX_HEIGHT   = 2009.0;
