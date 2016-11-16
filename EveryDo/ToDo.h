//
//  ToDo.h
//  EveryDo
//
//  Created by Tim Beals on 2016-11-15.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *descriptionToDo;
@property (nonatomic) NSString *priority;
@property (nonatomic) BOOL isCompleted;

@end
