//
//  GVViewController.h
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GVCell.h"
#import "AQGridViewController.h"
#import "BViewController.h"
@interface GVViewController : UIViewController <AQGridViewDelegate,AQGridViewDataSource>{
    AQGridView* _gridView;
    NSMutableArray* _GVCells;
}
@property (nonatomic, retain) IBOutlet AQGridView * gridView;
@property(atomic, retain) NSMutableArray* GVCells; 

- (void) addGVCell:(NSObject<GVItemProtocol> *) toAdd;
@end
