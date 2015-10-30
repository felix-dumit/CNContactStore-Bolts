# CNContactStore-Bolts
Bolts wrapper for CNContactStore callbacks


```objc 
@interface CNContactStore (Bolts)

- (BFTask<NSNumber *> *)requestAccessForEntityType:(CNEntityType)entityType;

- (BFTask< NSArray<CNContact *> * > *)unifiedContactsMatchingPredicate:(nonnull NSPredicate *)predicate keysToFetch:(nullable NSArray<id<CNKeyDescriptor> > *)keys;

- (BFTask<CNContact *> *)unifiedContactWithIdentifier:(nonnull NSString *)identifier keysToFetch:(nullable NSArray<id<CNKeyDescriptor> > *)keys;

- (BFTask<CNContact *>*)unifiedMeContactWithKeysToFetch:(nullable NSArray<id<CNKeyDescriptor>> *)keys NS_AVAILABLE(10_11, NA) __WATCHOS_PROHIBITED;


- (BFTask<NSNumber *> *)enumerateContactsWithFetchRequest:(nonnull CNContactFetchRequest *)fetchRequest usingBlock:(nullable void (^)(CNContact *_Nonnull, BOOL *_Nonnull))block;

- (BFTask<NSArray<CNGroup *> *> *)groupsMatchingPredicate:(nullable NSPredicate *)predicate;

- (BFTask<NSArray<CNContainer *> *> *)containersMatchingPredicate:(nonnull NSPredicate *)predicate;

- (BFTask<NSNumber *> *)executeSaveRequest:(nonnull CNSaveRequest *)saveRequest;
@end
```
