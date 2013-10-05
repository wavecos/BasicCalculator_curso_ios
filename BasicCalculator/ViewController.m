//
//  ViewController.m
//  BasicCalculator
//
//  Created by Tekhne on 10/5/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button0:(id)sender {
    display.text = [NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction)button1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@1",display.text];
}

- (IBAction)button2:(id)sender {
    display.text = [NSString stringWithFormat:@"%@2",display.text];
}

- (IBAction)button3:(id)sender {
    display.text = [NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction)button4:(id)sender {
    display.text = [NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)button5:(id)sender {
    display.text = [NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)button6:(id)sender {
    display.text = [NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)button7:(id)sender {
    display.text = [NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)button8:(id)sender {
    display.text = [NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)button9:(id)sender {
    display.text = [NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction)buttonPlus:(id)sender {
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)buttonMultiply:(id)sender {
    operation = Multiply;
    storage = display.text;
    display.text = [NSString stringWithFormat:@"%@*", storage];
    //display.text=@"";
}

- (IBAction)buttonDivide:(id)sender {
    operation = Divide;
    storage = display.text;
    display.text=@"";
}

- (IBAction)buttonMinus:(id)sender {
    operation = Minus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)buttonClear:(id)sender {
    display.text = @"";
}

- (IBAction)buttonCalculate:(id)sender {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage
                                                                                 longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val
                                                                                     longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val
                                                                                     longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage
                                                                                 longLongValue]];
        break; }
}


@end
