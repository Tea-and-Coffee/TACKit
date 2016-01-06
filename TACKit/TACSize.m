//
//  TACSize.h
//  TACKit
//
//  Created by masato_arai on 2015/04/21.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACSize.h"
#import "TACDevice.h"

#pragma mark UIStatusBar

/**
 *  デバイスの向きや機種から、ステータスバーの高さを返します。
 *  現在表示中の高さを得るには、CGRectGetHeight([UIApplication sharedApplication].statusBarFrame) を使用して下さい。
 *
 *  @return Status bar height.
 */
CGFloat statusBarHeight() {
    if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation)) {
        return statusBarPortraitHeight();
    } else {
        return statusBarLandscapeHeight();
    }
}

CGFloat statusBarPortraitHeight() {
    return 20.0;
}

CGFloat statusBarLandscapeHeight() {
    switch ([TACDevice userInterfaceIdiom]) {
        case TACUserInterfaceIdiomUnspecified:
            return 0;
        case TACUserInterfaceIdiomPhone:
            return 0;
        case TACUserInterfaceIdiomPhablet:
            return 0;
        case TACUserInterfaceIdiomPad:
            return 20.0;
    }
}

#pragma mark UIStatusBar (InCall)

/**
 *  デバイスの向きや機種から、通話中のステータスバーの高さを返します。
 *  現在表示中の高さを得るには、CGRectGetHeight([UIApplication sharedApplication].statusBarFrame) を使用して下さい。
 *
 *  @return Status bar height in calling.
 */
CGFloat statusBarInCallHeight() {
    if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation)) {
        return statusBarInCallPortraitHeight();
    } else {
        return statusBarInCallLandscapeHeight();
    }
}

CGFloat statusBarInCallPortraitHeight() {
    switch ([TACDevice userInterfaceIdiom]) {
        case TACUserInterfaceIdiomUnspecified:
            return 0;
        case TACUserInterfaceIdiomPhone:
            return 40.0;
        case TACUserInterfaceIdiomPhablet:
            return 40.0;
        case TACUserInterfaceIdiomPad:
            return 20.0;
    }
}

CGFloat statusBarInCallLandscapeHeight() {
    switch ([TACDevice userInterfaceIdiom]) {
        case TACUserInterfaceIdiomUnspecified:
            return 0;
        case TACUserInterfaceIdiomPhone:
            return 0;
        case TACUserInterfaceIdiomPhablet:
            return 0;
        case TACUserInterfaceIdiomPad:
            return 20.0;
    }
}


#pragma mark
#pragma mark UINavigationBar

/**
 *  デバイスの向きや機種から、ナビゲーションバーの高さを返します。
 *
 *  @return Navigation bar height.
 */
CGFloat navigationBarHeight() {
    if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation)) {
        return navigationBarPortraitHeight();
    } else {
        return navigationBarLandscapeHeight();
    }
}

CGFloat navigationBarPortraitHeight() {
    return 44.0;
}

CGFloat navigationBarLandscapeHeight() {
    switch ([TACDevice userInterfaceIdiom]) {
        case TACUserInterfaceIdiomUnspecified:
            return 0;
        case TACUserInterfaceIdiomPhone:
            return 32.0;
        case TACUserInterfaceIdiomPhablet:
            return 44.0;
        case TACUserInterfaceIdiomPad:
            return 44.0;
    }
}

#pragma mark UINavigationBar (Prompt)

/**
 *  デバイスの向きや機種から、プロンプト付きのナビゲーションバーの高さを返します。
 *
 *  @return Navigation bar height.
 */
CGFloat navigationBarPromptHeight() {
    if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation)) {
        return navigationBarPromptPortraitHeight();
    } else {
        return navigationBarLandscapeHeight();
    }
}

CGFloat navigationBarPromptPortraitHeight() {
    return 74.0;
}

CGFloat navigationBarPromptLandscapeHeight() {
    switch ([TACDevice userInterfaceIdiom]) {
        case TACUserInterfaceIdiomUnspecified:
            return 0;
        case TACUserInterfaceIdiomPhone:
            return 54.0;
        case TACUserInterfaceIdiomPhablet:
            return 74.0;
        case TACUserInterfaceIdiomPad:
            return 74.0;
    }
}


#pragma mark
#pragma mark UIToolbar

/**
 *  デバイスの向きや機種から、ツールバーの高さを返します。
 *
 *  @return Tool bar height.
 */
CGFloat toolbarHeight() {
    if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation)) {
        return toolbarPortraitHeight();
    } else {
        return toolbarLandscapeHeight();
    }
}

CGFloat toolbarPortraitHeight() {
    return 44.0;
}

CGFloat toolbarLandscapeHeight() {
    switch ([TACDevice userInterfaceIdiom]) {
        case TACUserInterfaceIdiomUnspecified:
            return 0;
        case TACUserInterfaceIdiomPhone:
            return 32.0;
        case TACUserInterfaceIdiomPhablet:
            return 44.0;
        case TACUserInterfaceIdiomPad:
            return 44.0;
    }
}

#pragma mark UIToolbar (Custom)

/**
 *  カスタムツールバーの高さを返します。
 *  あなた自身が画面に追加したツールバーの場合、その高さはデバイスの向きや機種による影響を受けません。
 *
 *  @return Tool bar height.
 */
CGFloat customToolbarHeight() {
    return 44.0;
}


#pragma mark
#pragma mark UITabbar

/**
 *  タブバーの高さを返します。
 *  タブバーの場合、その高さはデバイスの向きや機種による影響を受けません。
 *
 *  @return Tool bar height.
 */
CGFloat tabBarHeight() {
    return 49.0;
}
