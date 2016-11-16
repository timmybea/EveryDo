//
//  MasterViewController.h
//  EveryDo
//
//  Created by Tim Beals on 2016-11-15.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end

