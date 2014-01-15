UIView-NSLayoutConstraint
=========================

A UIView category to make programmatic autolayout code more elegant and readable with less code.

Spacing between two views 
-------------------------

from:

```
[parentView addContstraint:[NSLayoutConstraint constraintWithItem:childView1
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:childView2
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:10]];
```

to:

```
[parentView addConstraint:[childView1 is:10 fromTopView:childView2]];
```

Similar methods:

```
-(NSLayoutConstraint *) is: (CGFloat) distance fromRightView: (UIView *) other;
-(NSLayoutConstraint *) is: (CGFloat) distance fromLeftView: (UIView *) other;
-(NSLayoutConstraint *) is: (CGFloat) distance fromBottomView: (UIView *) other;
```


Fixing widths and heights of views
----------------------------------

from:

```
[parentView addConstraint:[NSLayoutConstraint constraintWithItem:childView
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:0
                                       constant:100]];
```

to:

```
[parentView addConstraint:[childView pinWidth:100]];
```

To fix the height of a view, use pinHeight instead.


Aligning edges of views
-----------------------

from:

```
[parentView addConstraint:[NSLayoutConstraint constraintWithItem:childView1
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:childView2
                                      attribute:NSLayoutAttributeTop
                                     multiplier:1
                                       constant:0]];
```

to:

```
[parentView addConstraint:[childView1 alignTopEdgeWith:childView2]];
```

Similar methods:

```
-(NSLayoutConstraint *) alignLeftEdgeWith: (UIView *) other;
-(NSLayoutConstraint *) alignRightEdgeWith: (UIView *) other;
-(NSLayoutConstraint *) alignBottomEdgeWith: (UIView *) other;
-(NSLayoutConstraint *) alignCenterYWith: (UIView *) other;
-(NSLayoutConstraint *) alignCenterXWith: (UIView *) other;
```

Positioning a child view within direct superview's edges
--------------------------------------------------------

from:

```
[parentView addConstraint:[NSLayoutConstraint constraintWithItem:childView
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:parentView
                                      attribute:NSLayoutAttributeLeft
                                     multiplier:1
                                       constant:10]];
```

to:

```
[parentView addConstraint:[childView distanceFromParentLeftEdge:10]];
```

Similar methods:

```
-(NSLayoutConstraint *) distanceFromParentRightEdge: (CGFloat) distance;
-(NSLayoutConstraint *) distanceFromParentTopEdge: (CGFloat) distance;
-(NSLayoutConstraint *) distanceFromParentBottomEdge: (CGFloat) distance;
```
