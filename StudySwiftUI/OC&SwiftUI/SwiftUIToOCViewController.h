//
//  SwiftUIToOCViewController.h
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^DismissBlock)(void);
@interface SwiftUIToOCViewController : UIViewController

@property (nonatomic, copy) DismissBlock dismissBlock;

@end

NS_ASSUME_NONNULL_END
