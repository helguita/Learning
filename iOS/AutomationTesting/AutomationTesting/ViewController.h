//
//  ViewController.h
//  AutomationTesting
//
//  Created by Helga Alvarez on 1/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/* Properties */
@property (weak, nonatomic) IBOutlet UITextField *shoutOutTextField;
@property (weak, nonatomic) IBOutlet UIButton *sayButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UILabel *messageTextField;
/* Methods */
- (IBAction)shoutMessage:(id)sender;
- (IBAction)reset:(id)sender;

@end
