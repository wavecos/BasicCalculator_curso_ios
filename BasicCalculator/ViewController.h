//
//  ViewController.h
//  BasicCalculator
//
//  Created by Tekhne on 10/5/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{Plus, Minus, Multiply, Divide} CalcOperation;

@interface ViewController : UIViewController {
    NSString *storage;
    CalcOperation operation;
}

@property (weak, nonatomic) IBOutlet UILabel *display;

-(IBAction)button0:(id)sender;
-(IBAction)button1:(id)sender;
-(IBAction)button2:(id)sender;
-(IBAction)button3:(id)sender;
-(IBAction)button4:(id)sender;
-(IBAction)button5:(id)sender;
-(IBAction)button6:(id)sender;
-(IBAction)button7:(id)sender;
-(IBAction)button8:(id)sender;
-(IBAction)button9:(id)sender;

-(IBAction)buttonPlus:(id)sender;
-(IBAction)buttonMinus:(id)sender;
-(IBAction)buttonMultiply:(id)sender;
-(IBAction)buttonDivide:(id)sender;

-(IBAction)buttonClear:(id)sender;
-(IBAction)buttonCalculate:(id)sender;


@end
