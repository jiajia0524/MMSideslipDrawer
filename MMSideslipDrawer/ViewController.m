//
//  ViewController.m
//  MMSideslipDrawer
//
//  Created by LEA on 2017/2/17.
//  Copyright © 2017年 LEA. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface ViewController ()<MMSideslipDrawerDelegate>

//侧滑菜单
@property (nonatomic, strong) MMSideslipDrawer *slipDrawer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //1.标题栏
    self.navigationItem.title = @"DEMO";
    //2.左边按钮
    MMBarButtonItem *leftItem = [[MMBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu_left"] target:self action:@selector(leftDrawerButtonPress:)];
    self.navigationItem.leftBarButtonItem = leftItem;
    MMBarButtonItem *rightItem = [[MMBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu_right"] target:self action:@selector(rightDrawerButtonPress:)];
    self.navigationItem.rightBarButtonItem = rightItem;
    //3.地图
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:mapView];
}

- (MMSideslipDrawer *)slipDrawer
{
    if (!_slipDrawer)
    {
        MMSideslipItem *item = [[MMSideslipItem alloc] init];
        item.thumbnailPath = [[NSBundle mainBundle] pathForResource:@"menu_head@2x" ofType:@"png"];
        item.name = @"LEA";
        item.vip = @"普通会员";
        item.vipImageName = @"menu_vip";
        item.textArray = @[@"行程",@"钱包",@"客服",@"设置"];
        item.imageNameArray = @[@"menu_0",@"menu_1",@"menu_2",@"menu_3"];
        
        _slipDrawer = [[MMSideslipDrawer alloc] initWithDelegate:self slipItem:item];
    }
    return _slipDrawer;
}

#pragma mark - 侧滑点击
- (void)leftDrawerButtonPress:(id)sender
{
    [self.slipDrawer openLeftDrawerSide:self.view.window];
}

- (void)rightDrawerButtonPress:(id)sender
{
    NSLog(@"右边点击");
}

#pragma mark - MMSideslipDrawerDelegate
- (void)slipDrawer:(MMSideslipDrawer *)slipDrawer didSelectAtIndex:(NSInteger)index
{
    [slipDrawer colseLeftDrawerSide];
    NSLog(@"点击的index:%ld",(long)index);
}

- (void)didViewUserInformation:(MMSideslipDrawer *)slipDrawer
{
    [slipDrawer colseLeftDrawerSide];
    NSLog(@"点击头像");
}

- (void)didViewVIPInformation:(MMSideslipDrawer *)slipDrawer
{
    [slipDrawer colseLeftDrawerSide];
    NSLog(@"点击会员");
}

#pragma mark -
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
