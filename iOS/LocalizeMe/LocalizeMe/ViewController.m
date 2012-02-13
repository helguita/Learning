//
//  ViewController.m
//  LocalizeMe
//
//  Created by Helga Alvarez on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize localizableLabel;
@synthesize label1;
@synthesize label2;
@synthesize label3;
@synthesize label4;
@synthesize label5;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    // NSLocale works similar to a Dictionary
    NSLocale *locale = [NSLocale currentLocale]; 
    NSString *displayNameString = [locale 
                                   displayNameForKey:NSLocaleIdentifier value:[locale localeIdentifier]];
    localizableLabel.text = displayNameString;
//    label1.text = NSLocalizedString(@"One", @"The number 1");
//    label2.text = NSLocalizedString(@"Two", @"The number 2");
//    label3.text = NSLocalizedString(@"Three", @"The number 3");
//    label4.text = NSLocalizedString(@"Four", @"The number 4");
//    label5.text = NSLocalizedString(@"Five", @"The number 5");
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLocalizableLabel:nil];
    [self setLabel1:nil];
    [self setLabel2:nil];
    [self setLabel3:nil];
    [self setLabel4:nil];
    [self setLabel5:nil];
    
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    
    [localizableLabel release];
    [label1 release];
    [label2 release];
    [label3 release];
    [label4 release];
    [label5 release];
    
    [super dealloc];
}
@end
