//
//  ZBaseWebViewController.h
//  ZWebKit
//
//  Created by lZackx on 2023/8/3.
//

#import <Cordova/CDV.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZBaseWebViewController : CDVViewController

@property (nonatomic, readwrite, strong) NSMutableDictionary *customEngineScriptMessageHandlers;
@property (nonatomic, readwrite, strong) NSMutableDictionary *customEngineEngineWebViewPreferences;
@property (nonatomic, readwrite, weak) id<WKNavigationDelegate> customEngineWKNavigationDelegate;
@property (nonatomic, readwrite, weak) id<WKUIDelegate> customEngineWKUIDelegate;

- (void)addCordovaUserScript;

@end

NS_ASSUME_NONNULL_END
