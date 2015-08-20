//
//  ViewController.m
//  ExpandTreeTable
//
//  Created by Cyrilshanway on 2015/8/20.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"
#import "TreeTableView.h"

@interface ViewController ()<TreeTableCellDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initData];
    
}

-(void)initData
{
    //創建data
    //----------------------------------台灣的縣市關係圖3,2,1--------------------------------------------
    Node *country1 = [[Node alloc] initWithParentId:-1 nodeId:0 name:@"台灣" depth:0 expand:YES];
    Node *province1 = [[Node alloc] initWithParentId:0 nodeId:1 name:@"台北市" depth:1 expand:NO];
    Node *city1 = [[Node alloc] initWithParentId:1 nodeId:2 name:@"信義區" depth:2 expand:NO];
    //Node *subCity1 = [[Node alloc] initWithParentId:2 nodeId:100 name:@"通州" depth:3 expand:NO];
    //Node *subCity2 = [[Node alloc] initWithParentId:2 nodeId:101 name:@"如东" depth:3 expand:NO];
    Node *city2 = [[Node alloc] initWithParentId:1 nodeId:3 name:@"大同區" depth:2 expand:NO];
    Node *city3 = [[Node alloc] initWithParentId:1 nodeId:4 name:@"大安區" depth:2 expand:NO];
    
    Node *province2 = [[Node alloc] initWithParentId:0 nodeId:5 name:@"台中市" depth:1 expand:NO];
    Node *city4 = [[Node alloc] initWithParentId:5 nodeId:6 name:@"中區" depth:2 expand:NO];
    Node *city5 = [[Node alloc] initWithParentId:5 nodeId:7 name:@"西區" depth:2 expand:NO];
    
    Node *province3 = [[Node alloc] initWithParentId:0 nodeId:8 name:@"高雄市" depth:1 expand:NO];
    Node *city6 = [[Node alloc] initWithParentId:8 nodeId:9 name:@"左營" depth:2 expand:NO];
    //----------------------------------美國關係圖0,1,2--------------------------------------------
    Node *country2 = [[Node alloc] initWithParentId:-1 nodeId:10 name:@"美國" depth:0 expand:YES];
    Node *province4 = [[Node alloc] initWithParentId:10 nodeId:11 name:@"紐約州" depth:1 expand:NO];
    
    Node *province5 = [[Node alloc] initWithParentId:10 nodeId:12 name:@"德州" depth:1 expand:NO];
    Node *city7 = [[Node alloc] initWithParentId:12 nodeId:13 name:@"休斯頓" depth:2 expand:NO];
    
    Node *province6 = [[Node alloc] initWithParentId:10 nodeId:14 name:@"加州" depth:1 expand:NO];
    Node *city8 = [[Node alloc] initWithParentId:14 nodeId:15 name:@"洛杉磯" depth:2 expand:NO];
    Node *city9 = [[Node alloc] initWithParentId:14 nodeId:16 name:@"舊金山" depth:2 expand:NO];
    
    //----------------------------------日本關係圖0,1,2--------------------------------------------
    Node *country3 = [[Node alloc] initWithParentId:-1 nodeId:17 name:@"日本" depth:0 expand:YES];
    Node *province7 = [[Node alloc] initWithParentId:17 nodeId:18 name:@"東京" depth:1 expand:NO];
    
    Node *province8 = [[Node alloc] initWithParentId:17 nodeId:19 name:@"沖繩" depth:1 expand:NO];
    
    Node *province9 = [[Node alloc] initWithParentId:17 nodeId:20 name:@"大阪" depth:1 expand:NO];
    
    
    //NSArray *data = [NSArray arrayWithObjects:country1,country2,country3, nil];
    
    //NSArray *data = [NSArray arrayWithObjects:country1,province1,province2,province3,country2,province4,province5,province6,country3, nil];
    
    NSArray *data = [NSArray arrayWithObjects:country1,province1,city1,city2,city3,province2,city4,city5,province3,city6,country2,province4,province5,city7,province6,city8,city9,country3,province7,province8,province9, nil];
    
    
    TreeTableView *tableview = [[TreeTableView alloc] initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-20) withData:data];
    tableview.treeTableCellDelegate = self;
    [self.view addSubview:tableview];
}

#pragma mark - TreeTableCellDelegate
-(void)cellClick:(Node *)node
{
    NSLog(@"%@",node.name);
}

@end
