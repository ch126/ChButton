//
//  RRectangleButton.m
//  iX_Rapidv2
//
//  Created by chelsea on 2016/11/2.
//  Copyright © 2016年 ixensor. All rights reserved.
//

#import "RRectangleButton.h"

IB_DESIGNABLE
@implementation RRectangleButton

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        [self initialize];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    
    if(self){
        [self initialize];
    }
    return self;
}


-(void)initialize{
    
    _leftImage = [[UIImage alloc] init];
    
    UIImageView * imageView = [[UIImageView alloc] init];
    [self addSubview:imageView];
    _leftImageView = imageView;
}

-(void)initializeFrame{
    
    CGFloat imageViewHandW = self.bounds.size.height*9/16;
    _leftImageView.frame = CGRectMake(_leftMargin, 0, imageViewHandW, imageViewHandW);
    _leftImageView.center = CGPointMake(_leftImageView.center.x, CGRectGetMidY(self.bounds));
    _leftImageView.contentMode = UIViewContentModeScaleAspectFit;
    _leftImageView.layer.cornerRadius = imageViewHandW/2;
    _leftImageView.backgroundColor = [UIColor clearColor];
    _leftImageView.layer.masksToBounds = YES;
    
    if(self.state == UIControlStateDisabled){
        self.alpha = 0.5;
    }else{
        self.alpha = 1;
    }

}

-(void)setLeftImage:(UIImage *)leftImage{
    _leftImage = leftImage;
    _leftImageView.image = _leftImage;
}

-(void)setCornerR:(CGFloat)cornerR{
    _cornerR = cornerR;
    self.layer.cornerRadius =  cornerR;
    self.layer.masksToBounds = YES;
}

-(void)setLeftImageView:(UIImageView *)leftImageView{
    _leftImageView = leftImageView;
    [self setNeedsLayout];
}

-(void)setLeftMargin:(CGFloat)leftMargin{
    _leftMargin = leftMargin;
    _leftImageView.frame = CGRectMake(leftMargin, _leftImageView.frame.origin.y, _leftImageView.frame.size.width, _leftImageView.frame.size.height);
}

-(void)setBorderWidth:(CGFloat)borderWidth{
    _borderWidth = borderWidth;
    self.layer.borderWidth = _borderWidth;
}

-(void)setBorderColor:(UIColor *)borderColor{
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

-(void)layoutSubviews{
    
    [super layoutSubviews];
    [self initializeFrame];
    [self setCornerR:self.frame.size.height/2];
}


-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)controlState{
    UIGraphicsBeginImageContext(CGSizeMake(1, 1));
    CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), backgroundColor.CGColor);
    CGContextFillRect(UIGraphicsGetCurrentContext(), CGRectMake(0, 0, 1, 1));
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setBackgroundImage:image forState:controlState];
}

@end
