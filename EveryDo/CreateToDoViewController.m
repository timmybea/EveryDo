//
//  CreateToDoViewController.m
//  EveryDo
//
//  Created by Tim Beals on 2016-11-15.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "CreateToDoViewController.h"
#import "ToDo.h"

@interface CreateToDoViewController () <UITextFieldDelegate>

@property (strong, nonatomic) ToDo *toDo;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;
@property (weak, nonatomic) IBOutlet UISwitch *completeSwitch;

@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;

@end

@implementation CreateToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.toDo = [[ToDo alloc] init];

    self.titleTextField.delegate = self;
    self.descriptionTextField.delegate = self;
    self.priorityTextField.delegate = self;
    
    self.titleTextField.tag = 1;
    self.descriptionTextField.tag = 2;
    self.priorityTextField.tag = 3;
    
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)];
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveToDo)];
    self.navigationItem.rightBarButtonItem = saveButton;
}

- (void)saveToDo
{
    [self textFieldDidEndEditing:self.titleTextField];
    [self textFieldDidEndEditing:self.descriptionTextField];
    [self textFieldDidEndEditing:self.priorityTextField];
    NSDictionary *saveToDo = @{@"newToDo": self.toDo};
    NSNotification *notification = [[NSNotification alloc] initWithName:@"ToDoChanged" object:nil userInfo:saveToDo];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField.tag == 1)
    {
        self.toDo.title = textField.text;
        
    }
    else if(textField.tag == 2)
    {
        self.toDo.descriptionToDo = textField.text;
    }
    else if(textField.tag == 3)
    {
        self.toDo.priority = textField.text;
    }
}

- (void)dismissKeyboard:(UITapGestureRecognizer *)sender
{
    [self.view endEditing:YES];
}

@end
