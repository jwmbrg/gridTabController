//
//  GVCell.h
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import "AQGridViewCell.h"
#import "BViewController.h"
@interface GVCell : AQGridViewCell{
    UIViewController *_viewController;
}


-(UIView*) getSnapShot: (CGRect) size;
-(UIViewController*) getRealViewController;
-(id) initWithFrame: (CGRect) frame reuseIdentifier: (NSString*) identifier andViewController: (BViewController *) viewController;
@end
