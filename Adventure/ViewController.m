//
//  ViewController.m
//  Adventure
//
//  Created by Robert D. Brown on 5/13/14.
//  Copyright (c) 2014 BobBrown. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sourceLabel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    UIViewController *nextViewController = segue.destinationViewController;

    nextViewController.title = sender.currentTitle;
}

-(IBAction)unwindFromViewController:(UIStoryboardSegue *)sender
{
    ViewController *x = sender.sourceViewController;

    if( [x.title isEqualToString:@"Eat Boxes"] )
        self.sourceLabel.text = @"Ryan ended up in Hospital";
    else if( [x.title isEqualToString:@"Ryan clean up by himself"] )
        self.sourceLabel.text = @"Ryan is unlucky in love";
    else
        self.sourceLabel.text = @"Ryan got Married";
}

@end
