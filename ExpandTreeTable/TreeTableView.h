//
//  TreeTableView.h
//  ExpandTreeTable
//
//  Created by Cyrilshanway on 2015/8/20.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Node;

@protocol TreeTableCellDelegate <NSObject>

-(void)cellClick : (Node *)node;

@end

@interface TreeTableView : UITableView

@property (nonatomic, strong) id<TreeTableCellDelegate> treeTableCellDelegate;

-(instancetype)initWithFrame:(CGRect)frame withData : (NSArray *)data;
@end
