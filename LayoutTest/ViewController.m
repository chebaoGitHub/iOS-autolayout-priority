//
//  ViewController.m
//  LayoutTest
//
//  Created by chebao on 16/4/5.
//  Copyright © 2016年 chebao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UISwitch *_switch;
    
    __weak IBOutlet NSLayoutConstraint *_blueViewConstrain;

    
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self changeTheConstrain];
}



- (void)changeTheConstrain{
    if (_switch.isOn) {
        _blueViewConstrain.priority = UILayoutPriorityDefaultHigh + 1;
    }else{
        _blueViewConstrain.priority = UILayoutPriorityDefaultHigh - 1;
    }
}


- (IBAction)swithTouch:(UISwitch *)sender {
    
    
    [self.view layoutIfNeeded];
    [UIView animateWithDuration:1 animations:^{
        [self changeTheConstrain];
        [self.view layoutIfNeeded];
    }];
    
    
    NSLog(@"%d",sender.isOn);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
