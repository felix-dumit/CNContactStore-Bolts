//
//  CNContactStore+Bolts.h
//  Umwho
//
//  Created by Felix Dumit on 10/21/15.
//  Copyright © 2015 Umwho. All rights reserved.
//

#import <Contacts/Contacts.h>
#import <Bolts/Bolts.h>

@interface CNContactStore (Bolts)

- (nonnull BFTask<NSNumber *> *)requestAccessForEntityType:(CNEntityType)entityType;

- (nonnull BFTask<NSArray<CNContact *> *> *)unifiedContactsMatchingPredicate:(nonnull NSPredicate *)predicate keysToFetch:(nullable NSArray<id<CNKeyDescriptor> > *)keys;

- (nonnull BFTask<CNContact *> *)unifiedContactWithIdentifier:(nonnull NSString *)identifier keysToFetch:(nullable NSArray<id<CNKeyDescriptor> > *)keys;

- (nonnull BFTask<CNContact *> *)unifiedMeContactWithKeysToFetch:(nullable NSArray<id<CNKeyDescriptor>> *)keys NS_AVAILABLE(10_11, NA) __WATCHOS_PROHIBITED;


- (nonnull BFTask<NSNumber *> *)enumerateContactsWithFetchRequest:(nonnull CNContactFetchRequest *)fetchRequest usingBlock:(nullable void (^)(CNContact *_Nonnull, BOOL *_Nonnull))block;

- (nonnull BFTask<NSArray<CNGroup *> *> *)groupsMatchingPredicate:(nullable NSPredicate *)predicate;

- (nonnull BFTask<NSArray<CNContainer *> *> *)containersMatchingPredicate:(nonnull NSPredicate *)predicate;

- (nonnull BFTask<NSNumber *> *)executeSaveRequest:(nonnull CNSaveRequest *)saveRequest;

@end
