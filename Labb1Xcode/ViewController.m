//
//  ViewController.m
//  Labb1Xcode
//
//  Created by Mavve on 2017-01-15.
//  Copyright © 2017 Mavve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *sliderOne;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ColorChangeSlider:(id)sender {
    [self refreshColorView];
    
}

- (UIColor*)currentColor{
    return [UIColor colorWithRed:self.sliderOne.value
                           green:self.sliderOne.value
                            blue:self.sliderOne.value
                           alpha:1.0];
}

-(void)refreshColorView{
    self.view.backgroundColor = [self currentColor];
}


@end
