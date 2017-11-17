# MMSideslipDrawer

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/CheeryLau/MMSideslipDrawer/master/LICENSE)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/v/MMSideslipDrawer.svg?style=flat)](https://cocoapods.org/pods/MMSideslipDrawer)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/p/MMSideslipDrawer.svg?style=flat)](https://cocoapods.org/pods/MMSideslipDrawer)&nbsp;

侧滑菜单，支持滑动和点击，类似滴滴出行(滴滴打车)侧滑栏。

![MMSideslipDrawer](MMSideslipDrawer.gif)

## 安装 [CocoaPods]

1. `pod "MMSideslipDrawer"`;
2. `pod install` / `pod update`;
3. `#import <MMSideslipDrawer.h>`;

## 使用说明

  MMSideslipItem属性介绍：
  
```objc
@interface MMSideslipItem : NSObject

// 头像缩略图本地路径 [若为网络路径，可直接对portraitImageView赋值，具体见MMSideslipDrawer.h]
@property (nonatomic,copy) NSString *thumbnailPath;
// 用户名称
@property (nonatomic,copy) NSString *userName;
// 用户等级
@property (nonatomic,copy) NSString *userLevel;
// 等级图片名称
@property (nonatomic,copy) NSString *levelImageName;
// 列表项名称数组 
@property (nonatomic,copy) NSArray *textArray;
// 列表项图片名称数组 
@property (nonatomic,copy) NSArray *imageNameArray;

@end
```

  创建侧滑抽屉：
  
```objc
MMSideslipItem *item = [[MMSideslipItem alloc] init];
item.thumbnailPath = [[NSBundle mainBundle] pathForResource:@"menu_head@2x" ofType:@"png"];
item.userName = @"LEA";
item.userLevel = @"普通会员";
item.levelImageName = @"menu_vip";
item.textArray = @[@"行程",@"钱包",@"客服",@"设置"];
item.imageNameArray = @[@"menu_0",@"menu_1",@"menu_2",@"menu_3"];

self.slipDrawer = [[MMSideslipDrawer alloc] initWithDelegate:self slipItem:item];
```

  侧滑：
  
```objc
[self.slipDrawer openLeftDrawerSide];
```

  关闭：
  
```objc
[self.slipDrawer colseLeftDrawerSide];
```

   代理：
   
```objc
// 查看列表项信息
- (void)slipDrawer:(MMSideslipDrawer *)slipDrawer didSelectAtIndex:(NSInteger)index;
// 查看用户信息
- (void)didViewUserInformation:(MMSideslipDrawer *)slipDrawer;
// 查看用户等级信息
- (void)didViewUserLevelInformation:(MMSideslipDrawer *)slipDrawer;
```

## END

有问题可以联系我【QQ:1539901764 要备注来源哦】，如果这个工具对你有些帮助，请给我一个star、watch。O(∩_∩)O谢谢

