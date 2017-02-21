//
//  RRectangleButton.h
//  iX_Rapidv2
//
//  Created by chelsea on 2016/11/2.
//  Copyright © 2016年 ixensor. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RRectangleButton : UIButton
@property (strong, nonatomic) IBInspectable UIImage * leftImage;
@property (assign, nonatomic) IBInspectable CGFloat leftMargin;
@property (assign, nonatomic) IBInspectable CGFloat borderWidth;
@property (strong, nonatomic) IBInspectable UIColor * borderColor;
@property (assign, nonatomic) CGFloat cornerR;
@property (strong, nonatomic) UIImageView * leftImageView;
-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)controlState;
@end
