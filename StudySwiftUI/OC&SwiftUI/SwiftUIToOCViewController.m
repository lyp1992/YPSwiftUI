//
//  SwiftUIToOCViewController.m
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

#import "SwiftUIToOCViewController.h"

@interface SwiftUIToOCViewController ()

@property (nonatomic, strong) UIButton *presentButton;

@end

@implementation SwiftUIToOCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    self.presentButton = [[UIButton alloc] init];
    self.presentButton.frame = CGRectMake(100, 220, 150, 50);
    [self.presentButton setTitle:@"jump SwiftUI" forState:UIControlStateNormal];
    [self.presentButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.presentButton addTarget:self action:@selector(jumpToSwiftUI) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.presentButton];
}


- (void)jumpToSwiftUI {

    [self dismissViewControllerAnimated:YES completion:^{
        if (self.dismissBlock) {
            self.dismissBlock();
        }
    }];
}

@end
