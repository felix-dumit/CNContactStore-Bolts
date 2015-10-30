//
//  CNContactStore+Bolts.m
//  Umwho
//
//  Created by Felix Dumit on 10/21/15.
//  Copyright © 2015 Umwho. All rights reserved.
//

#import "CNContactStore+Bolts.h"

@implementation CNContactStore (Bolts)

- (BFTask<NSNumber *> *)requestAccessForEntityType:(CNEntityType)entityType
{
    BFTaskCompletionSource *tsk = [BFTaskCompletionSource taskCompletionSource];
    
    [self requestAccessForEntityType:entityType
                   completionHandler:^(BOOL granted, NSError *_Nullable error) {
                       if (error) {
                           [tsk trySetError:error];
                       } else {
                           [tsk trySetResult:@(granted)];
                       }
                   }];
    
    return tsk.task;
}

- (BFTask<NSArray<CNContact *> *> *)unifiedContactsMatchingPredicate:(NSPredicate *)predicate keysToFetch:(NSArray<id<CNKeyDescriptor> > *)keys
{
    NSError *error = nil;
    id result = [self unifiedContactsMatchingPredicate:predicate keysToFetch:keys error:&error];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:result];
}

- (BFTask<CNContact *> *)unifiedContactWithIdentifier:(NSString *)identifier keysToFetch:(NSArray<id<CNKeyDescriptor> > *)keys
{
    NSError *error = nil;
    id result = [self unifiedContactWithIdentifier:identifier keysToFetch:keys error:&error];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:result];
}

- (nonnull BFTask<CNContact *>*)unifiedMeContactWithKeysToFetch:(nullable NSArray<id<CNKeyDescriptor>> *)keys {
    
    NSError *error = nil;
    id result = [self unifiedMeContactWithKeysToFetch:keys error:&error];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:result];
}

- (BFTask<NSNumber *> *)enumerateContactsWithFetchRequest:(CNContactFetchRequest *)fetchRequest usingBlock:(void (^)(CNContact *_Nonnull, BOOL *_Nonnull))block
{
    NSError *error = nil;
    BOOL result = [self enumerateContactsWithFetchRequest:fetchRequest error:&error usingBlock:block];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:@(result)];
}

- (BFTask<NSArray<CNGroup *> *> *)groupsMatchingPredicate:(NSPredicate *)predicate
{
    NSError *error = nil;
    id result = [self groupsMatchingPredicate:predicate error:&error];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:result];
}

- (BFTask<NSArray<CNContainer *> *> *)containersMatchingPredicate:(NSPredicate *)predicate
{
    NSError *error = nil;
    id result = [self containersMatchingPredicate:predicate error:&error];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:result];
}

- (BFTask<NSNumber *> *)executeSaveRequest:(CNSaveRequest *)saveRequest
{
    NSError *error = nil;
    BOOL result = [self executeSaveRequest:saveRequest error:&error];
    
    if (error) {
        return [BFTask taskWithError:error];
    }
    
    return [BFTask taskWithResult:@(result)];
}

@end
