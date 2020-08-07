//
//  OCViewController.m
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

#import "OCViewController.h"
#import "StudySwiftUI-Swift.h"
@interface OCViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *presentButton;

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 100, 100, 100);
    label.backgroundColor = [UIColor grayColor];
    [self.view addSubview:label];
    self.label = label;
    
    self.presentButton = [[UIButton alloc] init];
    self.presentButton.frame = CGRectMake(100, 220, 150, 50);
    [self.presentButton setTitle:@"jump SwiftUI" forState:UIControlStateNormal];
    [self.presentButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.presentButton addTarget:self action:@selector(jumpToSwiftUI) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.presentButton];
}
- (void)setNametitle:(NSString *)nametitle {
    _nametitle = nametitle;
    self.label.text = nametitle;
}

- (void)jumpToSwiftUI {
 
    // wrapper 方法回不来
//    UIViewController *presentSwiftUIView = [[[YPPresetSwiftUIWrapper alloc] init] makePresetSwiftUIWithName:_nametitle];
//    [self presentViewController:presentSwiftUIView animated:YES completion:nil];
    
    
    // 中间隔一层swiftVC 可以回来
    SwiftViewController *vc = [[SwiftViewController alloc] init];
    vc.name = self.nametitle;
    [self presentViewController:vc animated:true completion:nil];
    
}

@end
