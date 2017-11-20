//
//  BeerChipSDKViewController.m
//  BeerChipSDK_ObjectiveC
//
//  Created by Vmoksha on 20/11/17.
//  Copyright © 2017 vmoksha. All rights reserved.
//

#import "BeerChipSDKViewController.h"

@interface BeerChipSDKViewController ()<UIWebViewDelegate>

@end

@implementation BeerChipSDKViewController
{
    UIActivityIndicatorView * activityIndicator ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)butonPressedInBeerProjectVC:(UIViewController *)viewController
{
    UIView * mainView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, viewController.view.frame.size.width , viewController.view.frame.size.height)];
    mainView.backgroundColor = [UIColor whiteColor];
    [viewController.view addSubview:mainView];
    
    activityIndicator = [[UIActivityIndicatorView alloc] init];
    activityIndicator.transform = CGAffineTransformMakeScale(2.00, 2.00);
    activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    activityIndicator.color = [UIColor darkGrayColor];
    activityIndicator.alpha = 1.0;
    activityIndicator.center = mainView.center ;
    [activityIndicator startAnimating];
    
    [[UIApplication sharedApplication].keyWindow addSubview:activityIndicator];
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:activityIndicator];
    
    
    UIView * subView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, mainView.frame.size.width-30,mainView.frame.size.height-60)];
    subView.backgroundColor = [UIColor whiteColor];
    [mainView addSubview:subView];
    
    
    UIWebView * webView = [[UIWebView alloc]initWithFrame:CGRectMake(30, 60, subView.frame.size.width-30, subView.frame.size.height-60)];
    NSString *urlString = @"http://d2z3o9iciufzel.cloudfront.net/1033/21";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
    [subView addSubview:webView];
    subView.clipsToBounds = YES;
    webView.delegate = self;
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"start");
    [activityIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"Finish");
    [activityIndicator stopAnimating];
    
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"Error for WEBVIEW: %@", [error description]);
}



@end
