//
//  ViewController.m
//  MYDropMenu
//
//  Created by 孟遥 on 2017/2/24.
//  Copyright © 2017年 mengyao. All rights reserved.
//

#import "ViewController.h"
#import "NormalDropViewController.h"
#import "SpreadDropViewController.h"
#import "SpringDropViewController.h"
#import "SuddenDropViewController.h"
#import "ShrinkDropController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray *styleNames;
@end

@implementation ViewController

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 80;
    }
    return _tableView;
}

- (NSArray *)styleNames
{
    if (!_styleNames) {
        _styleNames = @[@"位移动画上拉下拉使用",@"展开动画上下下拉使用",@"弹簧动画上拉下拉使用",@"直接呈现菜单使用",@"收缩小菜单使用"];
    }
    return _styleNames;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"效果列表";
    [self.view addSubview:self.tableView];
    
    
    
    /*
     
     使用说明 : 
     
     1. 原理 : 菜单的原理是模态视图 , 一个正常的模态效果 , 是将被模态的view放置在一个模态的容器中 , 并通过manager实现动画 . 咱们通过自定义被模态的view的大小和手动使用manager实现自己想要的动画.
     
     2. 如何使用 : 创建一个UIViewController 继承于 MYPresentedController ,MYPresentedController即为被模态视图 , MYPresentedController 有presented , clearBack , callback 3个属性 ，且都为public属性，所以你创建的子类控制器，会拥有这三个属性。
        
        presented : 动画页面是否展开. 你可以随时获取当前的动画是否展开 ， 并可以利用该属性做其他的一些逻辑操作
        clearBack : 透明背景 。 某些情景下，菜单获取会需要黑色半透明的蒙板 ， 而有的情况不需要 ， 你可以通过设置是否需要透明背景，来控制蒙板颜色
        callback  : 当你在菜单中进行一些操作时 ， 你会需要将菜单中的操作回调到当前控制器中 ， 并进行一些逻辑处理，所以你只需要实现callback block ， 即可回调出相应的操作 。 该block有一个参数 ， 且为 id 类型，适用于各种情况。
     
     3 . 如何可以让菜单消失 ： （1）点击蒙板，自动消失  （2）在继承于MYPresentedController的菜单控制器中调用 [self dismiss..]方法，也可以手动收回菜单
     
     具体使用请参照  examples 中的具体demo 
     
     最后 ： 因为在不同的项目中 ， 菜单的样式繁多 ， 且大小不一 ，所以没办法写出一个万能且通用的菜单 ， 不过此菜单已经实现了一个整体的模板 ， 你只需根据不同情况，做不同的布局即可。
     
     注意 ： 通常来讲 ， 下拉菜单的导航栏不应被蒙板颜色覆盖，但点击导航栏部分，菜单依旧应该消失，此效果已经实现。
                      而上拉菜单，导航栏部分应该被蒙板颜色所覆盖，此效果也已经实现 。 
     
     如果有更好的建议 ， 欢迎指出 ， 如果觉得有用，请star一下 ，好人一生平安
     */
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.styleNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.font = [UIFont systemFontOfSize:18.f weight:1.f];
    cell.textLabel.textColor = [UIColor redColor];
    cell.textLabel.text = self.styleNames[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    switch (indexPath.row) {
        case 0:
        {
            NormalDropViewController *normalDropVc = [[NormalDropViewController alloc]init];
            [self.navigationController pushViewController:normalDropVc animated:YES];
        }
            break;
        case 1:
        {
            SpreadDropViewController *normalDropVc = [[SpreadDropViewController alloc]init];
            [self.navigationController pushViewController:normalDropVc animated:YES];
        }
            break;
        case 2:
        {
            SpringDropViewController *normalDropVc = [[SpringDropViewController alloc]init];
            [self.navigationController pushViewController:normalDropVc animated:YES];
        }
            break;
        case 3:
        {
            SuddenDropViewController *normalDropVc = [[SuddenDropViewController alloc]init];
            [self.navigationController pushViewController:normalDropVc animated:YES];
        }
            break;
        case 4:
        {
            ShrinkDropController *shrinkDropVc = [[ShrinkDropController alloc]init];
            [self.navigationController pushViewController:shrinkDropVc animated:YES];
        }
        default:
            break;
    }
}




@end
