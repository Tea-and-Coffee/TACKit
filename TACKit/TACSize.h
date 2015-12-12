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
FOUNDATION_EXPORT CGFloat statusBarHeight();
FOUNDATION_EXPORT CGFloat statusBarPortraitHeight();
FOUNDATION_EXPORT CGFloat statusBarLandscapeHeight();

// UIStatusBar (InCall)
FOUNDATION_EXPORT CGFloat statusBarInCallHeight();
FOUNDATION_EXPORT CGFloat statusBarInCallPortraitHeight();
FOUNDATION_EXPORT CGFloat statusBarInCallLandscapeHeight();

// UINavigationBar
FOUNDATION_EXPORT CGFloat navigationBarHeight();
FOUNDATION_EXPORT CGFloat navigationBarPortraitHeight();
FOUNDATION_EXPORT CGFloat navigationBarLandscapeHeight();

// UINavigationBar (Prompt)
FOUNDATION_EXPORT CGFloat navigationBarPromptHeight();
FOUNDATION_EXPORT CGFloat navigationBarPromptPortraitHeight();
FOUNDATION_EXPORT CGFloat navigationBarPromptLandscapeHeight();

// UIToolbar
FOUNDATION_EXPORT CGFloat toolbarHeight();
FOUNDATION_EXPORT CGFloat toolbarPortraitHeight();
FOUNDATION_EXPORT CGFloat toolbarLandscapeHeight();

// UIToolbar (Custom)
FOUNDATION_EXPORT CGFloat customToolbarHeight();

// UITabBar
FOUNDATION_EXPORT CGFloat tabBarHeight();


// UITableViewCell
static CGFloat const TABLEVIEWCELL_MAX_HEIGHT   = 2009.0;
