//
//  ZBaseWebViewController.m
//  ZWebKit
//
//  Created by lZackx on 2023/8/3.
//

#import "ZBaseWebViewController.h"

@interface ZBaseWebViewController ()



@end

@implementation ZBaseWebViewController

// MARK: - Variables
- (NSMutableDictionary *)customEngineScriptMessageHandlers {
    if (!_customEngineScriptMessageHandlers) {
        _customEngineScriptMessageHandlers = [NSMutableDictionary dictionary];
    }
    return _customEngineScriptMessageHandlers;
}

// MARK: - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateEngineInfo];
}

// MARK: - User Scripts
- (void)addEngineScriptMessageHandlers:(NSDictionary *)engineScriptMessageHandlers {
    [self.customEngineScriptMessageHandlers addEntriesFromDictionary:engineScriptMessageHandlers];
}

- (void)updateEngineInfo {
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    [info setValue:self.customEngineScriptMessageHandlers forKey:kCDVWebViewEngineScriptMessageHandlers];
    [info setValue:self.customEngineEngineWebViewPreferences forKey:kCDVWebViewEngineWebViewPreferences];
    [info setValue:self.customEngineWKNavigationDelegate forKey:kCDVWebViewEngineWKNavigationDelegate];
    [info setValue:self.customEngineWKUIDelegate forKey:kCDVWebViewEngineWKUIDelegate];
    [self.webViewEngine updateWithInfo:info];
}

// MARK: - Cordova.js User Scripts
- (void)addCordovaUserScript {
    NSURL *userScriptURL = [[NSBundle bundleForClass:[ZBaseWebViewController class]] URLForResource:@"ZWebKit.bundle/cordova" withExtension:@"js"];
    NSError *error = nil;
    NSString *userScriptSource = [[NSString alloc] initWithContentsOfURL:userScriptURL
                                                                encoding:NSUTF8StringEncoding
                                                                   error:&error];
    if (error) {
        return;
    }
    WKUserContentController *contentController = ((WKWebView *)self.webView).configuration.userContentController;
    WKUserScript *userScript = [[WKUserScript alloc] initWithSource:userScriptSource
                                                      injectionTime:WKUserScriptInjectionTimeAtDocumentStart
                                                   forMainFrameOnly:YES];
    [contentController addUserScript:userScript];
}

// MARK: - Override launch releated methods
- (void)createLaunchView {
    // do nothing
}

- (void)showLaunchScreen:(BOOL)visible {
    // do nothing
}

@end
