//
//  OrgChartsAppDelegate.h
//  OrgCharts
//
//  Created by Helga Alvarez on 1/8/12.
//  Copyright 2012 Cometoide. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrgChartsAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
