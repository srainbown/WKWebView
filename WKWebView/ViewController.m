//
//  ViewController.m
//  WKWebView
//
//  Created by 李自杨 on 17/3/27.
//  Copyright © 2017年 View. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<WKNavigationDelegate,WKUIDelegate>//前者是加载状态的回调，后者是处理web界面的三种提示框(警告框、确认框、输入框)

@property (nonatomic, strong) WKWebView *wkWebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *urlStr = @"https://www.tmall.com/?ali_trackid=2:mm_26632258_3504122_55934697:1490595491_210_1415363025&upsid=94bc012f013288b60bfe4be331d65ef0&clk1=94bc012f013288b60bfe4be331d65ef0";
//    @"https:api.dangcdn.com/haqucom/about?version=1.3.0";
    
    self.wkWebView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 20)];
    [_wkWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]]];
    [self.view addSubview:_wkWebView];
    _wkWebView.UIDelegate = self;
    _wkWebView.navigationDelegate = self;
    
}

#pragma mark -- WKNavigationDelegate
//*
//加载状态的回调方法
//*

//页面开始加载时调用
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{

    NSLog(@"%s",__FUNCTION__);
    NSLog(@"");

}

//当内容开始返回时调用
-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    
}

//页面加载完成之后调用
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{

}

//页面加载失败时调用
-(void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error{

}

//*
//页面跳转的代理方法
//*

////接收到服务器跳转请求之后的调用
//-(void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation{
//
//}
//
////接收到响应后，决定是否跳转
//-(void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
//    
//    //如果是百度，则允许跳转
//    if ([navigationResponse.response.URL.host.lowercaseString isEqualToString:@"www.baidu.com"]) {
//        // 允许跳转
//        decisionHandler(WKNavigationResponsePolicyAllow);
//        return;
//    }
//    //不允许跳转
//    decisionHandler(WKNavigationResponsePolicyCancel);
//}
//
////在发送请求之前，决定是否跳转
//-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
//
//}

#pragma mark -- WKUIDelegate

/**
 *  web界面中有弹出警告框时调用
 *
 *  @param webView           实现该代理的webview
 *  @param message           警告框中的内容
 *  @param frame             主窗口
 *  @param completionHandler 警告框消失调用
 */

-(void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(nonnull NSString *)message initiatedByFrame:(nonnull WKFrameInfo *)frame completionHandler:(nonnull void (^)(void))completionHandler{

}

















@end
