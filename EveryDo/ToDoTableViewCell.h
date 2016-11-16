//
//  ToDoTableViewCell.h
//  EveryDo
//
//  Created by Tim Beals on 2016-11-15.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoTableViewCell : UITableViewCell

@property (nonatomic, strong) NSAttributedString *attributedText;

@property (weak, nonatomic) IBOutlet UILabel *toDoTitle;

- (UILabel *)getToDoTitle;

@end
