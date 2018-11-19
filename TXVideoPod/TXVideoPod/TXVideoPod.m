//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  TXVideoPod.m
//  TXVideoPod
//
//  Created by lcf on 2018/11/19.
//  Copyright (c) 2018 lcf. All rights reserved.
//

#import "TXVideoPod.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>

@interface TADSplashBaseWindow
- (void)hideSplash;
@end

@interface QLChannelRecmdViewCtl

@property(retain, nonatomic) NSArray *aryItems;

@end

CHDeclareClass(QNBPlayerImageAdsViewController)

CHOptimizedMethod5(self, id, QNBPlayerImageAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withPageViewController, id, arg4, withAddToParenViewControllerNow, BOOL, arg5) {
    return nil;
}

CHOptimizedMethod5(self, id, QNBPlayerImageAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withParentEventViewController, id, arg4, withAddToParenViewControllerNow, BOOL, arg5) {
    return nil;
}
CHOptimizedMethod4(self, id, QNBPlayerImageAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withAddToParenViewControllerNow, BOOL, arg4) {
    return nil;
}
CHOptimizedMethod4(self, id, QNBPlayerImageAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withParentEventViewController, id, arg4) {
    return nil;
}

CHOptimizedMethod3(self, id, QNBPlayerImageAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3) {
    return nil;
}

CHDeclareClass(QNBPlayerVideoAdsViewController)

CHOptimizedMethod5(self, id, QNBPlayerVideoAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withPageViewController, id, arg4, withAddToParenViewControllerNow, BOOL, arg5) {
    return nil;
}

CHOptimizedMethod5(self, id, QNBPlayerVideoAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withParentEventViewController, id, arg4, withAddToParenViewControllerNow, BOOL, arg5) {
    return nil;
}
CHOptimizedMethod4(self, id, QNBPlayerVideoAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withAddToParenViewControllerNow, BOOL, arg4) {
    return nil;
}
CHOptimizedMethod4(self, id, QNBPlayerVideoAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3, withParentEventViewController, id, arg4) {
    return nil;
}

CHOptimizedMethod3(self, id, QNBPlayerVideoAdsViewController, initWithEventProxy, id, arg1, withPlayerInfo, id, arg2, withParentViewController, id, arg3) {
    return nil;
}

CHDeclareClass(QNBPlayerSimpleIAPButton)

CHOptimizedMethod1(self, id, QNBPlayerSimpleIAPButton, initWithFrame, CGRect, arg1) {
    return nil;
}

CHDeclareClass(TADVideoAdController)

CHOptimizedMethod0(self, id, TADVideoAdController, init) {
    return nil;
}

/// 列表内广告

CHDeclareClass(QLHollyWoodScrollPlayView)

CHOptimizedMethod1(self, void, QLHollyWoodScrollPlayView, setPosterList, id, posterList) {
    NSMutableArray *arr = [NSMutableArray new];
    [posterList enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop ) {
        if (![obj isKindOfClass:objc_getClass("QLVideoInfoAdPosterItem")]) {
            [arr addObject:obj];
        }
    }];
    CHSuper1(QLHollyWoodScrollPlayView, setPosterList, arr);
}

CHDeclareClass(QLONAGalleryAdPosterView)

CHOptimizedMethod1(self, void, QLONAGalleryAdPosterView, setPosterList, id, posterList) {
    NSMutableArray *arr = [NSMutableArray new];
    [posterList enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (![obj isKindOfClass:objc_getClass("QLJCEAdFocusPoster")]) {
            [arr addObject:obj];
        }
    }];
    CHSuper1(QLONAGalleryAdPosterView, setPosterList, arr);
}

CHDeclareClass(QLChannelRecmdViewCtl)

CHOptimizedMethod1(self, void, QLChannelRecmdViewCtl, setAryItems, NSArray *, items) {
    NSMutableArray *arr = [NSMutableArray new];
    [items enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"obj class = %@ <==>",[obj class]);
        if (![obj isKindOfClass:objc_getClass("QLJCEONAAdPoster")] &&
            ![obj isKindOfClass:objc_getClass("QLJCEONAVideoAdPoster")]){
            
            [arr addObject:obj];
        }
        else {
            if ([obj isKindOfClass:objc_getClass("QLJCEONASplitSpace")]) {
                [arr removeLastObject];
            }
        }
    }];
    CHSuper1(QLChannelRecmdViewCtl, setAryItems, arr);
}

/// 开屏广告
CHDeclareClass(TADSplashBaseWindow)
CHOptimizedMethod0(self, void, TADSplashBaseWindow, showSplash) {
    [self hideSplash];
}

CHConstructor {
    CHLoadLateClass(QNBPlayerImageAdsViewController);
    CHHook5(QNBPlayerImageAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withPageViewController, withAddToParenViewControllerNow);
    CHHook5(QNBPlayerImageAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withParentEventViewController, withAddToParenViewControllerNow);
    CHHook4(QNBPlayerImageAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withAddToParenViewControllerNow);
    CHHook4(QNBPlayerImageAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withParentEventViewController);
    CHHook3(QNBPlayerImageAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController);
    
    CHLoadLateClass(QNBPlayerVideoAdsViewController);
    CHHook5(QNBPlayerVideoAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withPageViewController, withAddToParenViewControllerNow);
    CHHook5(QNBPlayerVideoAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withParentEventViewController, withAddToParenViewControllerNow);
    CHHook4(QNBPlayerVideoAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withAddToParenViewControllerNow);
    CHHook4(QNBPlayerVideoAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController, withParentEventViewController);
    CHHook3(QNBPlayerVideoAdsViewController, initWithEventProxy, withPlayerInfo, withParentViewController);
    
    CHLoadLateClass(QNBPlayerSimpleIAPButton);
    CHHook1(QNBPlayerSimpleIAPButton, initWithFrame);
    
    CHLoadLateClass(TADVideoAdController);
    CHHook0(TADVideoAdController, init);
    
    CHLoadLateClass(QLHollyWoodScrollPlayView);
    CHHook1(QLHollyWoodScrollPlayView, setPosterList);
    
    CHLoadLateClass(QLONAGalleryAdPosterView);
    CHHook1(QLONAGalleryAdPosterView, setPosterList);
    
    CHLoadLateClass(QLChannelRecmdViewCtl);
    CHHook1(QLChannelRecmdViewCtl, setAryItems);
    
    CHLoadLateClass(TADSplashBaseWindow);
    CHHook0(TADSplashBaseWindow, showSplash);
};

