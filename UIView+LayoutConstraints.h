//
//  UIView+LayoutConstraints.h
//  Created by Hong Wei on 17/10/13.

#import <UIKit/UIKit.h>

@interface UIView (LayoutConstraints)

-(void)removeAllConstraints;

-(NSLayoutConstraint *)alignLeftEdgeWith:(UIView *)other;

-(NSLayoutConstraint *)alignRightEdgeWith:(UIView *)other;

-(NSLayoutConstraint *)alignTopEdgeWith:(UIView *)other;

-(NSLayoutConstraint *)alignBottomEdgeWith:(UIView *)other;

-(NSLayoutConstraint *)alignCenterYWith:(UIView *)other;

-(NSLayoutConstraint *)alignCenterXWith:(UIView *)other;

-(NSLayoutConstraint *)pinWidth:(CGFloat)width;

-(NSLayoutConstraint *)pinHeight:(CGFloat)height;

-(NSLayoutConstraint *)sameWidthAs:(UIView *)other;

-(NSLayoutConstraint *)sameHeightAs:(UIView *)other;

-(NSLayoutConstraint *)widthAsRatioOfParentWidth:(CGFloat)ratio;

-(NSLayoutConstraint *)heightAsRatioOfParentHeight:(CGFloat)ratio;

/* for positioning horizontally/vertically adjacent views */

-(NSLayoutConstraint *)is:(CGFloat) distance fromRightView:(UIView *)other;

-(NSLayoutConstraint *)is:(CGFloat) distance fromLeftView:(UIView *)other;

-(NSLayoutConstraint *)is:(CGFloat) distance fromTopView:(UIView *)other;

-(NSLayoutConstraint *)is:(CGFloat) distance fromBottomView:(UIView *)other;

/* convenience for parent/child view containment. receiver is child view */

-(NSLayoutConstraint *)distanceFromParentLeftEdge:(CGFloat)distance;

-(NSLayoutConstraint *)distanceFromParentRightEdge:(CGFloat)distance;

-(NSLayoutConstraint *)distanceFromParentTopEdge:(CGFloat)distance;

-(NSLayoutConstraint *)distanceFromParentBottomEdge:(CGFloat)distance;

@end
