//
//  Node.h
//  ExpandTreeTable
//
//  Created by Cyrilshanway on 2015/8/20.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  每個節點類型
 */
@interface Node : NSObject


@property (nonatomic , assign) int parentId;//父節點的id，如果為-1表示該節點為根節點

@property (nonatomic , assign) int nodeId;//本節點的id

@property (nonatomic , strong) NSString *name;//本節點的名稱

@property (nonatomic , assign) int depth;//該節點的深度

@property (nonatomic , assign) BOOL expand;//該節點是否處於展開狀態


/**
 *快速實例化該對象模型
 */
- (instancetype)initWithParentId : (int)parentId nodeId : (int)nodeId name : (NSString *)name depth : (int)depth expand : (BOOL)expand;
@end
