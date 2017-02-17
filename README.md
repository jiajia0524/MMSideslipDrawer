# MMSideslipDrawer

  滴滴出行(滴滴打车)侧滑栏的实现过程

![MMSideslipDrawer](screenshot.gif)


### 使用

  1.引入`UIView+Category.h`,`UIView+Category.m`，用于视图frame的改变，简单快捷；

  2.引入侧滑栏视图`MMSideslipDrawer.h`,`MMSideslipDrawer.m`，使用方式如下：

  创建视图：
```objc

   MMSideslipItem *item = [[MMSideslipItem alloc] init];
   item.thumbnailPath = [[NSBundle mainBundle] pathForResource:@"menu_head@2x" ofType:@"png"];
   item.name = @"LEA";
   item.vip = @"普通会员";
   item.vipImageName = @"menu_vip";
   item.textArray = @[@"行程",@"钱包",@"客服",@"设置"];
   item.imageNameArray = @[@"menu_0",@"menu_1",@"menu_2",@"menu_3"];

   self.slipDrawer = [[MMSideslipDrawer alloc] initWithDelegate:self slipItem:item];

```
   侧滑：
```objc

   [self.slipDrawer openLeftDrawerSide:self.view.window];

```

   关闭：
```objc

   [self.slipDrawer colseLeftDrawerSide];

```

   代理：
```objc

  //查看列表项信息
  - (void)slipDrawer:(MMSideslipDrawer *)slipDrawer didSelectAtIndex:(NSInteger)index;
  //查看用户信息
  - (void)didViewUserInformation:(MMSideslipDrawer *)slipDrawer;
  //查看会员等级信息
  - (void)didViewVIPInformation:(MMSideslipDrawer *)slipDrawer;

```
