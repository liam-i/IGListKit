/*
 * Copyright (c) Meta Platforms, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "UICollectionView+IGListBatchUpdateData.h"

#if !__has_include(<IGListDiffKit/IGListDiffKit.h>)
#import "IGListBatchUpdateData.h"
#else
#import <IGListDiffKit/IGListBatchUpdateData.h>
#endif

@implementation UICollectionView (IGListBatchUpdateData)

- (void)ig_applyBatchUpdateData:(IGListBatchUpdateData *)updateData {
    [self deleteItemsAtIndexPaths:updateData.deleteIndexPaths];
    [self insertItemsAtIndexPaths:updateData.insertIndexPaths];
    [self reloadItemsAtIndexPaths:updateData.updateIndexPaths];

    for (IGListMoveIndexPath *move in updateData.moveIndexPaths) {
        [self moveItemAtIndexPath:move.from toIndexPath:move.to];
    }

    for (IGListMoveIndex *move in updateData.moveSections) {
        [self moveSection:move.from toSection:move.to];
    }

    [self deleteSections:updateData.deleteSections];
    [self insertSections:updateData.insertSections];
}

@end
