//
//  DetailViewController.h
//  EveryDo
//
//  Created by Tim Beals on 2016-11-15.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic)  ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

