/*
 * Copyright (c) Meta Platforms, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

#import <IGListKit/IGListKit.h>

@interface IGTestBindingWithoutDeselectionDelegate : NSObject <IGListBindingSectionControllerSelectionDelegate>

@property (nonatomic, assign) BOOL selected;

@end
