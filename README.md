UIView-NSLayoutConstraint
=========================

A UIView category to make programmatic auto layout readable with less code

Example:

from:

```
[parentView addContstraint: [NSLayoutConstraint constraintWithItem:childView1
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:childView2
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:10]];
```

to:

```
[parentView addConstraint: [childView1 is:10 fromTopView:childView2]];
```
