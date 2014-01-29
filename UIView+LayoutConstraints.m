//
//  UIView+LayoutConstraints.m
//  Created by Hong Wei on 17/10/13.

#import "UIView+LayoutConstraints.h"

@implementation UIView (LayoutConstraints)

-(void)removeAllConstraints {
  [self removeConstraints: self.constraints];
}

-(NSLayoutConstraint *)alignLeftEdgeWith:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeLeft
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)alignRightEdgeWith:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeRight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeRight
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)alignTopEdgeWith:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeTop
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)alignBottomEdgeWith:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeBottom
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)alignCenterYWith:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeCenterY
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeCenterY
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)alignCenterXWith:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeCenterX
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)pinWidth:(CGFloat)width {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:0
                                       constant:width];
}

-(NSLayoutConstraint *)pinHeight:(CGFloat)height {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:0 constant:height];
}

-(NSLayoutConstraint *)is:(CGFloat) distance fromRightView:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:other
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeRight
                                     multiplier:1
                                       constant:distance];
}

-(NSLayoutConstraint *)is:(CGFloat) distance fromLeftView:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeRight
                                     multiplier:1
                                       constant:distance];
}

-(NSLayoutConstraint *)is:(CGFloat) distance fromTopView:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:distance];
}

-(NSLayoutConstraint *)is:(CGFloat) distance fromBottomView:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:other
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:distance];
}
  
-(NSLayoutConstraint *)sameWidthAs:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeWidth
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)sameHeightAs:(UIView *)other {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:other
                                      attribute:NSLayoutAttributeHeight
                                     multiplier:1
                                       constant:0];
}

-(NSLayoutConstraint *)widthAsRatioOfParentWidth:(CGFloat)ratio {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self.superview
                                      attribute:NSLayoutAttributeWidth
                                     multiplier:ratio
                                       constant:0];
}

-(NSLayoutConstraint *)heightAsRatioOfParentHeight:(CGFloat)ratio {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self.superview
                                      attribute:NSLayoutAttributeHeight
                                     multiplier:ratio
                                       constant:0];
}

-(NSLayoutConstraint *)distanceFromParentLeftEdge:(CGFloat)distance {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self.superview
                                      attribute:NSLayoutAttributeLeft
                                     multiplier:1
                                       constant:distance];
}

-(NSLayoutConstraint *)distanceFromParentRightEdge:(CGFloat)distance {
  return [NSLayoutConstraint constraintWithItem:self.superview
                                      attribute:NSLayoutAttributeRight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeRight
                                     multiplier:1
                                       constant:distance];
}

-(NSLayoutConstraint *)distanceFromParentTopEdge:(CGFloat)distance {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self.superview
                                      attribute:NSLayoutAttributeTop
                                     multiplier:1
                                       constant:distance];
}

-(NSLayoutConstraint *)distanceFromParentBottomEdge:(CGFloat)distance {
  return [NSLayoutConstraint constraintWithItem:self.superview
                                      attribute:NSLayoutAttributeBottom
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:distance];
}

@end
