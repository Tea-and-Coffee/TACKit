//
//  TACSize.h
//  TACKit
//
//  Created by masato_arai on 2015/04/21.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

// Margin
static CGFloat const MARGIN         = 8.0;
static CGFloat const FULL_MARGIN    = MARGIN;
static CGFloat const HALF_MARGIN    = MARGIN / 2;
static CGFloat const QUARTER_MARGIN = MARGIN / 4;
static CGFloat const EIGHTH_MARGIN  = MARGIN / 8;


// UIStatusBar
UIKIT_EXTERN CGFloat statusBarHeight();
UIKIT_EXTERN CGFloat statusBarPortraitHeight();
UIKIT_EXTERN CGFloat statusBarLandscapeHeight();

// UIStatusBar (InCall)
UIKIT_EXTERN CGFloat statusBarInCallHeight();
UIKIT_EXTERN CGFloat statusBarInCallPortraitHeight();
UIKIT_EXTERN CGFloat statusBarInCallLandscapeHeight();

// UINavigationBar
UIKIT_EXTERN CGFloat navigationBarHeight();
UIKIT_EXTERN CGFloat navigationBarPortraitHeight();
UIKIT_EXTERN CGFloat navigationBarLandscapeHeight();

// UINavigationBar (Prompt)
UIKIT_EXTERN CGFloat navigationBarPromptHeight();
UIKIT_EXTERN CGFloat navigationBarPromptPortraitHeight();
UIKIT_EXTERN CGFloat navigationBarPromptLandscapeHeight();

// UIToolbar
UIKIT_EXTERN CGFloat toolbarHeight();
UIKIT_EXTERN CGFloat toolbarPortraitHeight();
UIKIT_EXTERN CGFloat toolbarLandscapeHeight();

// UIToolbar (Custom)
UIKIT_EXTERN CGFloat customToolbarHeight();

// UITabBar
UIKIT_EXTERN CGFloat tabBarHeight();


// UITableViewCell
static CGFloat const TABLEVIEWCELL_MAX_HEIGHT   = 2009.0;
