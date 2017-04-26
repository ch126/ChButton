/*
 Created by Chelsea Huang on 2016/11/2.
 https://github.com/ch126
 */


#import <UIKit/UIKit.h>


@interface ChButton : UIButton
@property (strong, nonatomic) IBInspectable UIImage * leftImage;
@property (assign, nonatomic) IBInspectable CGFloat leftMargin;
@property (assign, nonatomic) IBInspectable CGFloat borderWidth;
@property (strong, nonatomic) IBInspectable UIColor * borderColor;
@property (assign, nonatomic) CGFloat cornerR;
@property (strong, nonatomic) UIImageView * leftImageView;
-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)controlState;
@end
