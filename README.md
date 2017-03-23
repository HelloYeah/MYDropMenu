# MYDropMenu
上下拉菜单，可随意自定义，随意修改大小，位置，2行代码集成



## 1. 上拉下拉菜单 ，位移动画<p>

<b>创建NormalDropMenu菜单，继承于MYPresentedController ,并自己实现该展示的UI样式
MYPresentedViewShowStyleFromBottomDropStyle  创建从下往上，上拉菜单
<br>
```
    NormalDropMenu *menu = [[NormalDropMenu alloc]initWithShowFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 320, [UIScreen mainScreen].bounds.size.width, 320) ShowStyle:MYPresentedViewShowStyleFromBottomDropStyle callback:^(id callback) {

    NSLog(@"-----------------------操作了--%@",callback);
    }];
    [self presentViewController:menu animated:YES completion:nil];

```
<br>

MYPresentedViewShowStyleFromTopDropStyle 创建从上往下 ， 下拉菜单
```
    NormalDropMenu *menu = [[NormalDropMenu alloc]initWithShowFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 320) ShowStyle:MYPresentedViewShowStyleFromTopDropStyle callback:^(id callback) {

    NSLog(@"---------------操作了-----%@",callback);
    }];
    [self presentViewController:menu animated:YES completion:nil];

```
<br>

![image](https://github.com/coderMyy/MYDropMenu/blob/master/animationGIF/GIF.gif)

## 2. 上拉下拉菜单 ， 展开动画<p>
<b> 创建SpreadDropMenu菜单，继承于MYPresentedController ,并自己实现该展示的UI样式
MYPresentedViewShowStyleFromBottomSpreadStyle 创建从下往上， 上拉菜单
<br>
```
    SpreadDropMenu *menu = [[SpreadDropMenu alloc]initWithShowFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 300, [UIScreen mainScreen].bounds.size.width, 300) ShowStyle:MYPresentedViewShowStyleFromBottomSpreadStyle callback:^(id callback) {

    //在此处获取菜单对应的操作 ， 而做出一些处理
    NSLog(@"-----------------%@",callback);
    }];

    //菜单展示
    [self presentViewController:menu animated:YES completion:nil];

``` 
MYPresentedViewShowStyleFromTopSpreadStyle 创建从上往下，下拉菜单
<br>
```
    SpreadDropMenu *menu = [[SpreadDropMenu alloc]initWithShowFrame:CGRectMake(0,64, [UIScreen mainScreen].bounds.size.width, 300) ShowStyle:MYPresentedViewShowStyleFromTopSpreadStyle callback:^(id callback) {

    //在此处获取菜单对应的操作 ， 而做出一些处理
    NSLog(@"-----------------%@",callback);
    }];

    //菜单展示
    [self presentViewController:menu animated:YES completion:nil];

```
<br>

![image](https://github.com/coderMyy/MYDropMenu/blob/master/animationGIF/GIF1.gif)

## 3. 上拉下拉中间展示菜单 ， 弹簧动画
<b> 创建SpringDropMenu菜单，继承于MYPresentedController ,并自己实现该展示的UI样式
MYPresentedViewShowStyleFromTopSpringStyle 从上往下，下拉弹簧菜单
<br>
```
    SpringDropMenu *menu = [[SpringDropMenu alloc]initWithShowFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 300) ShowStyle:MYPresentedViewShowStyleFromTopSpringStyle callback:nil];
    [self presentViewController:menu animated:YES completion:nil];

```
<br>

MYPresentedViewShowStyleFromBottomSpringStyle 从下往上，上拉弹簧菜单
<br>
```
    SpringDropMenu *menu = [[SpringDropMenu alloc]initWithShowFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 300, [UIScreen mainScreen].bounds.size.width, 300) ShowStyle:MYPresentedViewShowStyleFromBottomSpringStyle callback:nil];
    [self presentViewController:menu animated:YES completion:nil];
```
<br>
MYPresentedViewShowStyleFromTopSpringStyle 从上往下，展示在中间菜单（只需要设定最终的frame即可）
<br>
```
    SpringDropMenu *menu = [[SpringDropMenu alloc]initWithShowFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 300)*0.5, ([UIScreen mainScreen].bounds.size.height - 300)*0.5, 300, 300) ShowStyle:MYPresentedViewShowStyleFromTopSpringStyle callback:nil];
    [self presentViewController:menu animated:YES completion:nil];
```
<br>
MYPresentedViewShowStyleFromBottomSpringStyle 从下往上，展示在中间菜单（只需要设定最终的frame即可）
<br>
```
    SpringDropMenu *menu = [[SpringDropMenu alloc]initWithShowFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 300)*0.5, ([UIScreen mainScreen].bounds.size.height - 300)*0.5, 300, 300) ShowStyle:MYPresentedViewShowStyleFromBottomSpringStyle callback:nil];
    [self presentViewController:menu animated:YES completion:nil];

```
<br>
![image](https://github.com/coderMyy/MYDropMenu/blob/master/animationGIF/GIF2.gif)
<br>

## 4. 直接展示，小菜单效果
<b> 创建SuddenDropMenu菜单，继承于MYPresentedController ,并自己实现该展示的UI样式
<br>
MYPresentedViewShowStyleSuddenStyle 直接展示效果（小菜单，只需修改需要展示的frame即可）
<br>
```
    SuddenDropMenu *menu = [[SuddenDropMenu alloc]initWithShowFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 300) ShowStyle:MYPresentedViewShowStyleSuddenStyle callback:nil];
    [self presentViewController:menu animated:YES completion:nil];

```
<br>
![image](https://github.com/coderMyy/MYDropMenu/blob/master/animationGIF/GIF3.gif)






